import 'package:b_be_bee_app/controller/bili/login/bili_password_login_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordLoginView extends ConsumerWidget {
  const PasswordLoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(biliPasswordLoginProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            controller: vm.accountController,
            decoration: InputDecoration(
              labelText: t.general.account,
              hintText: t.general.inputAccount,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: vm.passwordController,
            decoration: InputDecoration(
              labelText: t.general.password,
              hintText: t.general.inputPassword,
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async => ref.read(biliPasswordLoginProvider.notifier).submitPasswordLogin(context),
                  child: Text(t.general.passwordLogin),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}