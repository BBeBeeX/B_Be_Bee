
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final _logger = Logger('river_pod');

class CustomProviderObserver extends ProviderObserver {

  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    super.didUpdateProvider(provider, previousValue, newValue, container);

    if (_exclude(provider, newValue)) return;

    _logger.info('Provider updated: ${provider.name}');
  }

  bool _exclude(ProviderBase<Object?> provider, Object? newValue) {


    return provider.name == '_FetchLocalIpAction';
  }
}