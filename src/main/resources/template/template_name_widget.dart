import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/page/temp/page/template_name_provider.dart';
import 'package:future/pb/activity.pb.dart';
import 'package:future/widget/page_widget.dart';

class TemplateNameWidget extends ConsumerWidget {
  const TemplateNameWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageWidget<ActivityListResponse>(
      provider: templateNameProvider,
      builder: _buildPage,
    );
  }

  Widget _buildPage(WidgetRef ref, ActivityListResponse data, extData) {
    return const Placeholder();
  }
}
