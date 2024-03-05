import 'package:flutter/material.dart';
import '../widget/input_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final ipController = TextEditingController();
  final portController = TextEditingController();
  final instandController = TextEditingController();
  final databsaeNameController = TextEditingController();
  final usernameController = TextEditingController();
  final psaswprdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Register To Server',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Please enter info of Server to Register',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: ipController,
                  hintText: 'Enter IP Address',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: portController,
                  hintText: 'Enter Port',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: instandController,
                  hintText: 'Enter Instand',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: databsaeNameController,
                  hintText: 'Enter Database Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: usernameController,
                  hintText: 'Enter Userame',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                InputFieldWidget(
                  controller: psaswprdController,
                  hintText: 'Enter Password',
                  obscureText: false,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.yellow[800],
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Test Connection',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Save Connection',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
