import 'package:b_be_bee_app/controller/bili/login/bili_qr_code_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';


class QrcodeLoginView extends ConsumerWidget  {
  const QrcodeLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrCodeLoginVm = ref.watch(biliQrCodeLoginVmProvider);

    return Center(
      child: qrCodeLoginVm.when(

        data: (qrCodeLoginVm) {
          if (qrCodeLoginVm.qrcodeInfo == null) {
            return const CircularProgressIndicator();
          }
          return PrettyQrView.data(
            data: qrCodeLoginVm.qrcodeInfo?.url ?? '',
            decoration: const PrettyQrDecoration(
              background: Colors.white,
            ),
          );
        },
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}