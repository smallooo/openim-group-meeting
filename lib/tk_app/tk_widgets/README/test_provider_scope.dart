import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/data/repositories/auth_repository.dart';

/// 测试 ProviderScope 是否正常工作的示例页面
class TestProviderScopePage extends ConsumerWidget {
  const TestProviderScopePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('测试 ProviderScope')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('如果能看到这个页面，说明 ProviderScope 配置成功！'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // 测试能否获取 AuthRepository
                try {
                  final authRepo = await ref.read(authRepositoryProvider.future);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('✅ AuthRepository 获取成功！')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('❌ 错误: $e')),
                  );
                }
              },
              child: const Text('测试获取 AuthRepository'),
            ),
          ],
        ),
      ),
    );
  }
}
