import 'package:flutter/material.dart';

void showPrivacyPolicyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white70,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                """Privacy Policy

This Privacy Policy governs the manner in which SkyView Weather App utilizes data obtained through its use of a public API provided by OpenWeather for educational purposes and study only, to fetch weather data.

Information Usage

SkyView Weather App utilizes the OpenWeather API to retrieve weather data based on the user's location input. The app does not collect, store, or process any personal information from users directly.

API Usage

The app interacts with the OpenWeather API to retrieve weather information. The API may collect non-personal information such as location coordinates, device information, and usage data. Users are encouraged to review the privacy policy of OpenWeather for more information on their data handling practices. For more information, visit OpenWeather Privacy Policy.

Third-Party Services

SkyView Weather App may utilize third-party services for analytics, error tracking, or other purposes. These services may collect non-personal information about app usage. Users are encouraged to review the privacy policies of these third-party services for more information.

Data Security

While SkyView Weather App does not collect personal information, we are committed to protecting any data obtained through the use of the app, including non-personal information obtained from the OpenWeather API. We implement appropriate security measures to prevent unauthorized access, disclosure, or alteration of data.

Changes to This Privacy Policy

SkyView Weather App may update this Privacy Policy from time to time. Users are encouraged to review this policy periodically for any changes. Continued use of the app after the posting of changes constitutes acceptance of those changes.

Contact Us

If you have any questions or concerns about this Privacy Policy or the app's data usage, please contact us at amalflutterprojects@gmail.com.

This document was last updated on 20-02-2024.""",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
