import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luma-Ai-Somali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Colors.blueGrey[900],
        cardColor: Colors.blueGrey[800],
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      home: const AssistantHomePage(),
    );
  }
}

class AssistantHomePage extends StatelessWidget {
  const AssistantHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luma-Ai-Somali Assistant'),
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          PremiumCard(),
          SizedBox(height: 20),
          SettingsSection(),
          SizedBox(height: 20),
          AboutSection(),
          SizedBox(height: 20),
          HelpSupportSection(),
          SizedBox(height: 20),
          PrivacyPolicySection(),
        ],
      ),
    );
  }
}

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.titleLarge,
                children: const [
                  TextSpan(text: 'Premium '),
                  TextSpan(
                    text: '(5 Maalmood Free Trial) – Coming Soon',
                    style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('⚡ Enjoy exclusive features!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellow)),
            const SizedBox(height: 8),
            const FeatureText(text: 'Chat with anyone worldwide'),
            const FeatureText(text: 'Access to private groups & stories'),
            const FeatureText(text: 'Add contacts by number'),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.white70),
                children: [
                  TextSpan(text: '💎 Premium real version is '),
                  TextSpan(
                    text: 'coming soon',
                    style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.white70),
                children: [
                  TextSpan(text: '🎁 Try it FREE for '),
                  TextSpan(
                    text: '5 days',
                    style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureText extends StatelessWidget {
  final String text;
  const FeatureText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Text('– $text', style: const TextStyle(fontSize: 16)),
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text('Settings', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const Divider(),
          const SettingItem(icon: Icons.person_outline, title: 'Account'),
          const SettingItem(icon: Icons.notifications_none, title: 'Notifications'),
          const SettingItem(icon: Icons.language, title: 'Language'),
          const SettingItem(icon: Icons.lock_outline, title: 'Privacy'),
          const SettingItem(icon: Icons.logout, title: 'Log out', isLogout: true),
        ],
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const SettingItem({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.redAccent : Colors.white70),
      title: Text(
        title,
        style: TextStyle(color: isLogout ? Colors.redAccent : Colors.white, fontSize: 16),
      ),
      trailing: isLogout ? null : const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white70),
      onTap: () {},
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final List<InlineSpan> content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
                children: content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      title: 'About',
      content: [
        TextSpan(text: 'App-kan waxaa sameeyay '),
        TextSpan(text: 'Fiitik Company', style: TextStyle(fontStyle: FontStyle.italic)),
        TextSpan(text: '\nMagaca: '),
        TextSpan(text: 'Cabdiraxmaan Ahmed Maxamuud', style: TextStyle(fontStyle: FontStyle.italic)),
        TextSpan(text: '\n\nLuma-Ai-Somali waa app casri ah oo loogu talagalay wada sheekaysiga, community, story iyo wadaag xog faa’iido leh.'),
      ],
    );
  }
}

class HelpSupportSection extends StatelessWidget {
  const HelpSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      title: 'Help & Support',
      content: [
        TextSpan(text: "Haddii aad la kulantay cilad ama aad su'aal qabto, nala soo xiriir:\n"),
        TextSpan(text: '📞 ', style: TextStyle(fontSize: 18)),
        TextSpan(text: '+252-612688949', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      title: 'Privacy Policy',
      content: [
        TextSpan(text: 'Waxaan ilaalinaa xogtaada. Ma la wadaagno xogtaada cid saddexaad.\n\n'),
        TextSpan(text: 'Adeegsiga app-kan waxay la micno tahay inaad ogolaatay siyaasadda qarsoodiga.'),
      ],
    );
  }
}
