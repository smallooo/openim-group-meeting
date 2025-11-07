import 'package:get/get.dart';

/// 通行密钥数据模型
class PasskeyItem {
  final String id;
  final String name;
  final String exchangeName;
  final String lastUsedTime;
  final bool isActive; // true为绿色，false为红色
  final String apikey;
  final String secretKey;
  final String ph;

  PasskeyItem({
    required this.id,
    required this.name,
    required this.exchangeName,
    required this.lastUsedTime,
    required this.isActive,
    required this.apikey,
    required this.secretKey,
    required this.ph,
  });
}

class TkGuaranteeKeysState {
  TkGuaranteeKeysState() {
    ///Initialize variables
  }

  // 通行密钥列表
  final passkeyList = <PasskeyItem>[].obs;

  // 当前页码
  final currentPage = 0.obs;

  // 总页数
  final totalPages = 1.obs;

  // 是否加载中
  final isLoading = false.obs;

  // 初始化示例数据
  void initMockData() {
    passkeyList.value = [
      PasskeyItem(
        id: '1',
        name: 'iCloud Keychain #1',
        exchangeName: 'OKX',
        lastUsedTime: '2025-10-28 18:03',
        isActive: true,
        apikey: 'api-key-okx',
        secretKey: 'secret-key-ok',
        ph: 'ioKX',
      ),
      PasskeyItem(
        id: '2',
        name: 'iCloud Keychain #2',
        exchangeName: 'OKX',
        lastUsedTime: '2025-10-28 18:03',
        isActive: true,
        apikey: 'api-key-okx-2',
        secretKey: 'secret-key-ok-2',
        ph: 'ioKX-2',
      ),
      PasskeyItem(
        id: '3',
        name: 'iCloud Keychain #3',
        exchangeName: 'OKX',
        lastUsedTime: '2025-10-28 18:03',
        isActive: false,
        apikey: 'api-key-okx-3',
        secretKey: 'secret-key-ok-3',
        ph: 'ioKX-3',
      ),
      PasskeyItem(
        id: '4',
        name: 'iCloud Keychain #4',
        exchangeName: 'OKX',
        lastUsedTime: '2025-10-28 18:03',
        isActive: false,
        apikey: 'api-key-okx-4',
        secretKey: 'secret-key-ok-4',
        ph: 'ioKX-4',
      ),
      PasskeyItem(
        id: '5',
        name: 'iCloud Keychain #5',
        exchangeName: 'OKX',
        lastUsedTime: '2025-10-28 18:03',
        isActive: false,
        apikey: 'api-key-okx-5',
        secretKey: 'secret-key-ok-5',
        ph: 'ioKX-5',
      ),
    ];
    totalPages.value = 1;
  }
}
