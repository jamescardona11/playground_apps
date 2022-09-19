// interfaz
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

const moodStore = 'mood';

abstract class IMoodDatabase {
  final String dbPathName = 'mood.db';
  Database? database;

  final List<String> storesName;

  IMoodDatabase({
    required this.storesName,
  });

  Future<void> openDatabase();

  Future<void> closeDatabase();

  Future<void> storeCreation();

  Future<void> init();

  Future<void> saveInformation(String storeName, Map<String, Object?> data);

  Future<List<Map<String, Object?>>> readAllInformation(String storeName);
}

class MoodDatabase extends IMoodDatabase {
  MoodDatabase({required super.storesName});

  Future<void> init() async {
    await openDatabase();
    await storeCreation();
  }

  @override
  Future<void> openDatabase() async {
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    var dbPath = join(dir.path, dbPathName);

    DatabaseFactory dbFactory = databaseFactoryIo;

    database = await dbFactory.openDatabase(dbPath);
  }

  Future<void> closeDatabase() async {
    await database?.close();
  }

  @override
  Future<void> storeCreation() async {
    storesName.forEach((element) {
      intMapStoreFactory.store(element);
    });
  }

  @override
  Future<List<Map<String, Object?>>> readAllInformation(
      String storeName) async {
    final store = await _getStoreRef(storeName);
    final records = await store.find(database!);

    return records.map((item) => item.value).toList();
  }

  @override
  Future<void> saveInformation(
    String storeName,
    Map<String, Object?> data,
  ) async {
    final store = await _getStoreRef(storeName);

    await database?.transaction((tnx) async {
      await store.add(tnx, data);
    });
  }

  StoreRef<int, Map<String, Object?>> _getStoreRef(String name) =>
      intMapStoreFactory.store(name);
}
