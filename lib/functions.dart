import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

launchCustomUrl(String url) async {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication).onError(
        (error, stackTrace) {
      if (kDebugMode) {
        print("Url is not valid!");
      }
      return false;
    },
  );
}