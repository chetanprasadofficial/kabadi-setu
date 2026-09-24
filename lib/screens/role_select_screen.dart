import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../config/modules_config.dart';
import '../models/app_module.dart';
import '../l10n/app_localizations.dart';
import '../main.dart';

class RoleSelectScreen extends StatelessWidget {
  const RoleSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: _LanguageSwitcher(),
              ),
              const SizedBox(height: 12),
              Text(
                t.whoAreYou,
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                t.chooseRole,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              _RoleCard(
                icon: Icons.local_shipping,
                title: t.imCollector,
                subtitle: t.collectorSubtitle,
                onTap: () => _goHome(context, t.imCollector, collectorModules),
              ),
              const SizedBox(height: 20),
              _RoleCard(
                icon: Icons.factory,
                title: t.imRecycler,
                subtitle: t.recyclerSubtitle,
                onTap: () => _goHome(context, t.imRecycler, recyclerModules),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goHome(BuildContext context, String role, List<AppModule> modules) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => HomeScreen(roleName: role, modules: modules),
      ),
    );
  }
}

class _LanguageSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, currentLocale, _) {
        return DropdownButton<Locale>(
          value: currentLocale,
          underline: const SizedBox(),
          items: const [
            DropdownMenuItem(value: Locale('mr'), child: Text('मराठी')),
            DropdownMenuItem(value: Locale('hi'), child: Text('हिंदी')),
            DropdownMenuItem(value: Locale('en'), child: Text('English')),
          ],
          onChanged: (locale) {
            if (locale != null) localeNotifier.value = locale;
          },
        );
      },
    );
  }
}

class _RoleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _RoleCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 3,
      shadowColor: Colors.black26,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 30, color: Colors.green.shade700),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}