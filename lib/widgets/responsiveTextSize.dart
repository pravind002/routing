import 'package:flutter/cupertino.dart';

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 1400) * MediaQuery.of(context).size.width;
  }
}
