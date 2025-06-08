import 'package:flutter/material.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class VersionInfoWidget extends StatefulWidget {
  const VersionInfoWidget({super.key});

  @override
  State<VersionInfoWidget> createState() => _VersionInfoWidgetState();
}

class _VersionInfoWidgetState extends State<VersionInfoWidget> {
  // String _releaseVersion = 'loading...';
  String _patchNumber = 'loading...';

  @override
  void initState() {
    super.initState();
    _loadShorebirdInfo();
  }

  Future<void> _loadShorebirdInfo() async {
    // final codePush = ShorebirdCodePush();
    final updater = ShorebirdUpdater();

    // final version = await codePush.currentReleaseVersion();
    final patch = await updater.readCurrentPatch();

    setState(() {
      // _releaseVersion = version;
      _patchNumber = patch?.number.toString() ?? 'none';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 300),
        Text("hello patch patch yayayayyayaya 22222"),
        // Text('📦 Release Version: $_releaseVersion'),
        Text('🩹 Patch Number: $_patchNumber'),
      ],
    );
  }
}
