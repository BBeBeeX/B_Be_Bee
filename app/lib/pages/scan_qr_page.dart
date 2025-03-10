import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart' as mobile_scanner;
import 'package:routerino/routerino.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart' as ml_kit;

import '../gen/strings.g.dart';
import '../model/dto/share/share_dto.dart';
import '../util/toast_util.dart';

class ScanQrPage extends ConsumerStatefulWidget {
  final Future<void> Function(BuildContext context, WidgetRef ref, ShareDto shareDto) onScanComplete;

  const ScanQrPage({
    super.key,
    required this.onScanComplete,
  });

  @override
  ConsumerState<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends ConsumerState<ScanQrPage> {
  mobile_scanner.MobileScannerController controller = mobile_scanner.MobileScannerController();
  bool isScanned = false;
  final barcodeScanner = ml_kit.BarcodeScanner();
  final imagePicker = ImagePicker();

  Future<void> _scanImageFromGallery() async {
    try {
      // await getFilePermission();
      final XFile? pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      
      if (pickedFile == null) return;

      final inputImage = ml_kit.InputImage.fromFilePath(pickedFile.path);
      final List<ml_kit.Barcode> barcodes = await barcodeScanner.processImage(inputImage);

      if (barcodes.isEmpty) {
        if (mounted) {
          await ToastUtil.show(t.scanPage.noQrCodeFound);
        }
        return;
      }

      final String? code = barcodes.first.rawValue;
      if (code == null) return;

      try {
        final shareDto = ShareDto.fromBase64(code);
        await widget.onScanComplete(context, ref, shareDto);
        if (mounted) {
          context.pop();
        }
      } catch (e) {
        await ToastUtil.show(t.scanPage.invalidQrCode);
      }
    } catch (e) {
      await ToastUtil.show(t.scanPage.scanFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.scanPage.scan),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_off),
            onPressed: () async => controller.toggleTorch(),
          ),
          IconButton(
            icon: const Icon(Icons.cameraswitch_outlined),
            onPressed: () async => controller.switchCamera(),
          ),
          IconButton(
            icon: const Icon(Icons.image),
            onPressed: _scanImageFromGallery,
          ),
        ],
      ),
      body: Stack(
        children: [
          mobile_scanner.MobileScanner(
            controller: controller,
            onDetect: (capture) async {
              if (isScanned) return;
              isScanned = true;

              final List<mobile_scanner.Barcode> barcodes = capture.barcodes;
              if (barcodes.isEmpty) return;

              final String? code = barcodes.first.rawValue;
              if (code == null) return;

              try {
                final shareDto = ShareDto.fromBase64(code);
                await widget.onScanComplete(context, ref, shareDto);
                if (mounted) {
                  context.pop();
                }
              } catch (e) {
                isScanned = false;
                await ToastUtil.show(t.scanPage.invalidQrCode);
              }
            },
          ),
          CustomPaint(
            painter: ScannerOverlay(),
            child: const SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    barcodeScanner.close();
    super.dispose();
  }
}

class ScannerOverlay extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black54
      ..style = PaintingStyle.fill;

    final scanArea = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width * 0.8,
      height: size.width * 0.8,
    );

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
        Path()
          ..addRRect(RRect.fromRectAndRadius(
            scanArea,
            const Radius.circular(20),
          )),
      ),
      paint,
    );

    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        scanArea,
        const Radius.circular(20),
      ),
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
} 