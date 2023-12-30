import 'package:flutter/material.dart';

class LicenseApplicationData {
  String? name;
  int? age;
  bool isNepaliCitizen = false;
  String? bloodGroup;
  String? gender;
  String? fatherName;
  String? motherName;
  String? address;
  String? mobileNumber;
  String? citizenshipDetails;

  LicenseApplicationData({
    this.name,
    this.age,
    this.bloodGroup,
    this.gender,
    this.fatherName,
    this.motherName,
    this.address,
    this.mobileNumber,
    this.citizenshipDetails,
  });
}

class OnlineForm extends StatefulWidget {
  const OnlineForm({Key? key}) : super(key: key);

  @override
  _OnlineFormState createState() => _OnlineFormState();
}

class _OnlineFormState extends State<OnlineForm> {
  final _formKey = GlobalKey<FormState>();
  LicenseApplicationData formData = LicenseApplicationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apply Online License Form'),
          actions: [
            Container(
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image: AssetImage('assets/images/traffic Sign/img_1.png'),
                      fit: BoxFit.contain)
              ),

            )
          ]
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  onChanged: (value) {
                    formData.name = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Age'),
                  onChanged: (value) {
                    formData.age = int.tryParse(value);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    final int? intAge = int.tryParse(value);
                    if (intAge == null) {
                      return 'Please enter a valid age';
                    }
                    if (intAge < 16 || intAge > 60) {
                      return 'You must be between 16 and 60 years old to apply';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  title: Text('I am a Nepali citizen'),
                  value: formData.isNepaliCitizen,
                  onChanged: (value) {
                    setState(() {
                      formData.isNepaliCitizen = value ?? false;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Blood Group'),
                  onChanged: (value) {
                    formData.bloodGroup = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Gender'),
                  onChanged: (value) {
                    formData.gender = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Father\'s Name'),
                  onChanged: (value) {
                    formData.fatherName = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Mother\'s Name'),
                  onChanged: (value) {
                    formData.motherName = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Address'),
                  onChanged: (value) {
                    formData.address = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Mobile Number (including +977)'),
                  onChanged: (value) {
                    formData.mobileNumber = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    if (!value.startsWith('+977')) {
                      return 'Mobile number must start with +977';
                    }
                    if (value.length != 14) {
                      return 'Invalid mobile number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Citizenship Number'),
                  onChanged: (value) {
                    formData.citizenshipDetails = value;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      if (!formData.isNepaliCitizen) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Not Eligible'),
                              content: Text('Only Nepali citizens can apply for a license'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Form Submitted'),
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Name: ${formData.name ?? ''}'),
                                  Text('Age: ${formData.age ?? ''}'),
                                  Text('Blood Group: ${formData.bloodGroup ?? ''}'),
                                  Text('Gender: ${formData.gender ?? ''}'),
                                  Text('Father\'s Name: ${formData.fatherName ?? ''}'),
                                  Text('Mother\'s Name: ${formData.motherName ?? ''}'),
                                  Text('Address: ${formData.address ?? ''}'),
                                  Text('Mobile Number: ${formData.mobileNumber ?? ''}'),
                                  Text('Citizenship Details: ${formData.citizenshipDetails ?? ''}'),
                                ],
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
