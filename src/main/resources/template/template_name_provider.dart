import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future/http/future_page_notifier.dart';
import 'package:future/pb/activity.pb.dart';
import 'package:future/pb/message.pb.dart';
import 'package:future/pb/request.dart';

/// @routeName
/// TemplateName:页面名字
/// templateName:驼峰页面名字
/// ActivityList:接口名字
AutoDisposeStateNotifierProvider<TemplateNameNotify, ActivityListResponse?> templateNameProvider =
    StateNotifierProvider.autoDispose<TemplateNameNotify, ActivityListResponse?>(name: "templateNameProvider", (ref) {
  return TemplateNameNotify(ref);
});

class TemplateNameNotify extends FutureNotifier<ActivityListResponse> {
  TemplateNameNotify(super.ref);

  @override
  requestData({bool isRefresh = true, args}) {
    return TranslatorRequest().newActivityListRequest();
  }

  @override
  ActivityListResponse? convertData(ActivityListResponse resp, bool isRefresh, {args, required bool isCacheData}) {
    return resp;
  }

  @override
  bool isEmpty(ActivityListResponse? state) {
    return state == null;
  }

  @override
  handlerPost(request) {
    if (!_isMock) {
      return super.handlerPost(request);
    }
    return ActivityListResponse(header: Header(code: 200));
  }

  bool get _isMock => false;
}
