import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/screen/theam/page.dart';
import 'package:untitled3/screen/theam/theam_provide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Theme"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Change Theme:", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                themeProvider.isDarkMode ? "Dark Mode" : "Light Mode",
                style: const TextStyle(fontSize: 16),
              ),
              CupertinoSwitch(
                value: themeProvider.isDarkMode,
                onChanged: (newValue) {
                  setState(() {
                    themeProvider.isDarkMode = !themeProvider.isDarkMode;
                  });
                  themeProvider.setTheme(
                    themeProvider.isDarkMode ? 'dark' : 'light',
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () => themeProvider.setTheme('light'),
                child: const Text("Light"),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setTheme('dark'),
                child: const Text("Dark"),
              ),
              ElevatedButton(
                onPressed: () => themeProvider.setTheme('green'),
                child: const Text("Green"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text("Pages", style: TextStyle(fontSize: 18)),
          Expanded(
            child: ListView(
              children: [
                _pageButton(context, "Page 1", const Page1()),
                _pageButton(context, "Page 2", const Page2()),
                _pageButton(context, "Page 3", const Page3()),
                _pageButton(context, "Page 4", const Page4()),
                _pageButton(context, "Page 5", const Page5()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageButton(BuildContext context, String title, Widget page) {
    return ListTile(
      leading: const Icon(Icons.arrow_forward_ios),
      title: Text(title),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => page),
      ),
    );
  }
}
