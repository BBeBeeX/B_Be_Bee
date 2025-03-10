
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BiliLoginQRState {
  final String url;
  final String qrcodeKey;

  const BiliLoginQRState({
    required this.url,
    required this.qrcodeKey,
  });
}

class BiliLoginQRService extends StateNotifier<BiliLoginQRState> {
  BiliLoginQRService():super(const BiliLoginQRState(
    url: '',
    qrcodeKey: '',
  ));

  void updateQRCode(String url, String qrcodeKey) {
    state = BiliLoginQRState(
      url: url,
      qrcodeKey: qrcodeKey,
    );
  }

  void clearQRCode() {
    state = const BiliLoginQRState(
      url: '',
      qrcodeKey: '',
    );
  }
}

final biliLoginQRProvider = StateNotifierProvider<BiliLoginQRService, BiliLoginQRState>((ref) {
  return BiliLoginQRService();
},name: 'loginQRProvider');