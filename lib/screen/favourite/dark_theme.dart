import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

class darkthemescreen extends StatefulWidget {
  const darkthemescreen({super.key});

  @override
  State<darkthemescreen> createState() => _darkthemescreenState();
}

class _darkthemescreenState extends State<darkthemescreen> {
  @override
  Widget build(BuildContext context) {
    final changetheme = Provider.of<themeprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('System Settings'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: changetheme.thememode,
              onChanged: changetheme.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: changetheme.thememode,
              onChanged: changetheme.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System Theme'),
              value: ThemeMode.system,
              groupValue: changetheme.thememode,
              onChanged: changetheme.setTheme)
        ],
      ),
    );
  }
}
