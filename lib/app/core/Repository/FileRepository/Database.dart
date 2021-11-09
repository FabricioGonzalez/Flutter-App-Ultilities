abstract class DatabaseRepository<T> {
  
  Future<T> writeData(String path, String data);
  Future<T?> readData(String path);
  
}
