import 'package:exemplo/app/notepad_module/note_pad_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotePadModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => NotePadPage())];
}
