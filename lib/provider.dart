import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'Auth Component/service.dart';

class Providers {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => AuthNotifier())
  ];
}
