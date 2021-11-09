import 'dart:io';

import 'package:exemplo/app/core/Repository/FileRepository/Database.dart';
import 'package:path_provider/path_provider.dart';

class TodoRepository implements DatabaseRepository<File> {
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/counter.txt');
  }

  @override
  Future<File?> readData(String path) async {
    try {
      final file = await localFile;

      // Read the file

      return file;
    } catch (e) {
      // If encountering an error, return 0
      return null;
    }
  }

  @override
  Future<File> writeData(String path, String data) async {
    final file = await localFile;

    // Write the file
    return file.writeAsString(data);
  }
}
