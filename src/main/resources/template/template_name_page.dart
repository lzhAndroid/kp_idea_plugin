import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/page/temp/page/template_name_widget.dart';
import 'package:future/widget/common_widget.dart';
import 'package:kp_router/kp_router.dart';

/// @routeName
/// TemplateName:页面名字
/// templateName:驼峰页面名字
/// ActivityList:接口名字
/// future/page/temp/template_name_provider.dart

class TemplateNamePage extends ConsumerStatefulWidget {
  static const String routeName = "@routeName";

  static Future<dynamic> pushNamed(context) {
    return AppRoute.pushNamed(context, routeName);
  }

  const TemplateNamePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _TemplateNamePageState();
}

class _TemplateNamePageState extends ConsumerState<TemplateNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          left: false,
          right: false,
          child: Column(
            children: const [
              TitleWidget(title: "@title"),
              Expanded(
                child: TemplateNameWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
