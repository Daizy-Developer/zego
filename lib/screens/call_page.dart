import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;
final String localUserID = math.Random().nextInt(10000).toString();

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:1892115003, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:"7ed4cc2f95f868ebae39f270af81123004d2376c0f22d13291b61081dbfde3c8", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: localUserID,
      userName: 'Ashutosh$localUserID',
      callID: '123',
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
