// import 'package:flutter/material.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//    final _formKey = GlobalKey<FormState>();
//   String email = "aashifa@gmail.com";
//   String password = "••••••••"; // Placeholder for password
//   String pincode = "450116";
//   String address = "216 St Paul's Rd,";
//   String city = "London";
//   String state = "N1 2LL";
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Checkout'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Personal Details Section
//               _buildSectionHeader('Personal Details'),
//               _buildCard(
//                 children: [
//                   _buildReadOnlyField(
//                     label: 'Email Address',
//                     value: email,
//                     icon: Icons.email,
//                   ),
//                   const SizedBox(height: 16),
//                   _buildPasswordField(),
//                 ],
//               ),
              
//               const SizedBox(height: 24),
              
//               // Business Address Section
//               _buildSectionHeader('Business Address Details'),
//               _buildCard(
//                 children: [
//                   _buildEditableField(
//                     label: 'Pincode',
//                     value: pincode,
//                     icon: Icons.numbers,
//                     keyboardType: TextInputType.number,
//                     onChanged: (value) => pincode = value,
//                   ),
//                   const SizedBox(height: 16),
//                   _buildEditableField(
//                     label: 'Address',
//                     value: address,
//                     icon: Icons.location_on,
//                     onChanged: (value) => address = value,
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: _buildEditableField(
//                           label: 'City',
//                           value: city,
//                           icon: Icons.location_city,
//                           onChanged: (value) => city = value,
//                         ),
//                       ),
//                       const SizedBox(width: 16),
//                       Expanded(
//                         child: _buildEditableField(
//                           label: 'State/Postcode',
//                           value: state,
//                           icon: Icons.map,
//                           onChanged: (value) => state = value,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
              
//               const SizedBox(height: 32),
              
//               // Save Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Information saved successfully')),
//                       );
//                     }
//                   },
//                   child: const Text('Save Changes', style: TextStyle(fontSize: 16)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSectionHeader(String title) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _buildCard({required List<Widget> children}) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: children,
//         ),
//       ),
//     );
//   }

//   Widget _buildReadOnlyField({
//     required String label,
//     required String value,
//     required IconData icon,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             color: Colors.black54,
//           ),
//         ),
//         const SizedBox(height: 4),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade300),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Row(
//             children: [
//               Icon(icon, size: 20, color: Colors.grey),
//               const SizedBox(width: 12),
//               Text(value, style: const TextStyle(fontSize: 16)),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildPasswordField() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Password',
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             color: Colors.black54,
//           ),
//         ),
//         const SizedBox(height: 4),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey.shade300),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Row(
//             children: [
//               const Icon(Icons.lock, size: 20, color: Colors.grey),
//               const SizedBox(width: 12),
//               Text(password, style: const TextStyle(fontSize: 16, letterSpacing: 2)),
//               const Spacer(),
//               TextButton(
//                 style: TextButton.styleFrom(
//                   padding: EdgeInsets.zero,
//                   minimumSize: Size.zero,
//                 ),
//                 onPressed: () {
//                   // Handle password change
//                 },
//                 child: const Text(
//                   'Change Password',
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildEditableField({
//     required String label,
//     required String value,
//     required IconData icon,
//     required ValueChanged<String> onChanged,
//     TextInputType keyboardType = TextInputType.text,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             color: Colors.black54,
//           ),
//         ),
//         const SizedBox(height: 4),
//         TextFormField(
//           initialValue: value,
//           keyboardType: keyboardType,
//           decoration: InputDecoration(
//             prefixIcon: Icon(icon, size: 20, color: Colors.grey),
//           ),
//           onChanged: onChanged,
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter $label';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  String email = "aashifa@gmail.com";
  String password = "••••••••"; // Placeholder for password
  String pincode = "450116";
  String address = "216 St Paul's Rd,";
  String city = "London";
  String state = "N1 2LL";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Personal Details Section
              _buildSectionHeader('Personal Details'),
              _buildCard(
                children: [
                  _buildReadOnlyField(
                    label: 'Email Address',
                    value: email,
                    icon: Icons.email,
                  ),
                  const SizedBox(height: 16),
                  _buildPasswordField(),
                ],
              ),
              
              const SizedBox(height: 24),
              
              // Business Address Section
              _buildSectionHeader('Business Address Details'),
              _buildCard(
                children: [
                  _buildEditableField(
                    label: 'Pincode',
                    value: pincode,
                    icon: Icons.numbers,
                    keyboardType: TextInputType.number,
                    onChanged: (value) => setState(() => pincode = value),
                  ),
                  const SizedBox(height: 16),
                  _buildEditableField(
                    label: 'Address',
                    value: address,
                    icon: Icons.location_on,
                    onChanged: (value) => setState(() => address = value),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildEditableField(
                          label: 'City',
                          value: city,
                          icon: Icons.location_city,
                          onChanged: (value) => setState(() => city = value),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildEditableField(
                          label: 'State/Postcode',
                          value: state,
                          icon: Icons.map,
                          onChanged: (value) => setState(() => state = value),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.blue, // Custom color
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Save the changes
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Information saved successfully'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      // Here you would typically save to database or API
                    }
                  },
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildCard({required List<Widget> children}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: children,
        ),
      ),
    );
  }

  Widget _buildReadOnlyField({
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(icon, size: 20, color: Colors.grey),
              const SizedBox(width: 12),
              Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(Icons.lock, size: 20, color: Colors.grey),
              const SizedBox(width: 12),
              Text(
                password,
                style: const TextStyle(fontSize: 16, letterSpacing: 2),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
                onPressed: () {
                  // Handle password change
                  _showChangePasswordDialog();
                },
                child: const Text(
                  'Change Password',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEditableField({
    required String label,
    required String value,
    required IconData icon,
    required ValueChanged<String> onChanged,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          initialValue: value,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, size: 20, color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: onChanged,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter $label';
            }
            return null;
          },
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  void _showChangePasswordDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Change Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Current Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'New Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm New Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle password change logic
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Password changed successfully')),
                );
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}