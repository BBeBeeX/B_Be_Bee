import 'package:b_be_bee_app/controller/bili/login/bili_sms_login_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SmsLoginView extends ConsumerWidget {
  const SmsLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Theme.of(context).colorScheme.outline));

    final vm = ref.watch(biliSmsLoginProvider);

    return Center(
        child: ListView(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            children: [
              Card(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10,
                      left: 10,
                      right: 10,
                      bottom: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          IntrinsicWidth(
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                  labelText: t.general.regionCode,
                                  enabledBorder: outlineInputBorder,
                                  focusedBorder: outlineInputBorder),
                              hint: Text('+86 ${t.common.country.chinaMainland}'),
                              items: vm.countryItems,
                              onChanged: (value) {
                                final newCountryId = int.tryParse(
                                    (value as Map<String, dynamic>)['country_id'] as String
                                ) ?? 86;
                                ref.read(biliSmsLoginProvider.notifier).updateCountryId(newCountryId);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                                controller: vm.phoneController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: t.general.phoneNumber,
                                    enabledBorder: outlineInputBorder,
                                    focusedBorder: outlineInputBorder),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        height: 30,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextFormField(
                                controller: vm.codeController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: t.general.captcha,
                                    hintText: t.general.inputCaptcha,
                                    enabledBorder: outlineInputBorder,
                                    focusedBorder: outlineInputBorder),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () async {
                                await ref.read(biliSmsLoginProvider.notifier).onSendSmsCode(context);
                              },
                              child: Text(t.general.getCaptcha)),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  )),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      await ref.read(biliSmsLoginProvider.notifier).submitSmsLogin(context);
                      },
                    child:  Text(t.general.longLogin,
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ]));
  }
}

