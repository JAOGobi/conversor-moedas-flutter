import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformUtils {
  static bool get isMobileIOS {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isIOS;
    }
  }

  static bool get isMobileAndroid {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isAndroid;
    }
  }

  static bool get isDesktop {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isLinux ||
          Platform.isFuchsia ||
          Platform.isWindows ||
          Platform.isMacOS;
    }
  }

  static bool get isWeb {
    if (kIsWeb) {
      return true;
    } else {
      return false;
    }
  }
}
