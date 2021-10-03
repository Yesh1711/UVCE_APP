import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Center(
              child: Text("There are three main reasons why you need a Privacy Policy:"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text("✓ They're legally required: Privacy Policies are legally required"
                  " by global privacy laws if you collect or use personal information."),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text("✓ Consumers expect to see them: Place your Privacy Policy link in your"
                  " website footer, and anywhere else where you request personal information."),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text("✓ Nudity and sexual context are prohibited strictly"),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
