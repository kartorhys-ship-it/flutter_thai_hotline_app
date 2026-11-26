import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hotline.dart';

class HotlineList extends StatelessWidget {
  const HotlineList({
    super.key,
    required this.title,
    required this.folder,
    required this.prefix,
    required this.entries,
  });

  final String title;
  final String folder;
  final String prefix;
  final List<Hotline> entries;

  String imagePath(int index) => 'assets/images/$folder/${prefix}_$index.png';

  Future<void> _dial(BuildContext context, Hotline entry) async {
    try {
      if (await launchUrl(
        entry.dialUri,
        mode: LaunchMode.externalApplication,
      )) {
        return;
      }
    } on PlatformException {
      // Some devices report a missing dialer as a platform error.
    } on MissingPluginException {
      // The platform may not register a telephone handler.
    }
    if (!context.mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('เปิดแอปโทรศัพท์ไม่ได้')));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      key: PageStorageKey(folder),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      itemCount: entries.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              Text(
                'สายด่วน\n$title',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(imagePath(0), width: 208, height: 153),
              ),
              const SizedBox(height: 20),
            ],
          );
        }

        final entry = entries[index - 1];
        return Card(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 12),
          elevation: 1,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffe3e3eb)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
            leading: Container(
              width: 58,
              height: 58,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffdedee8)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                imagePath(entry.imageIndex),
                fit: BoxFit.contain,
              ),
            ),
            title: Text(
              entry.name,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(entry.number),
            trailing: IconButton(
              tooltip: 'โทร ${entry.name} ${entry.number}',
              icon: const Icon(Icons.call_outlined),
              color: theme.colorScheme.primary,
              onPressed: () => _dial(context, entry),
            ),
          ),
        );
      },
    );
  }
}
