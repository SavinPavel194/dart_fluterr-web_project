import 'package:conduit/conduit.dart';

class AppService extends ApplicationChannel {
  late final ManagedContext managedContext;

@override 
Future prepare() {
  final PersistentStore = _initdatabase()
  managedContext = ManagedContext(
    ManagedDataModel.fromCurrentMirrorSystem(), persistentStore);
  return super.prepare();
}

  @override 
  Controller get entryPoint => Router();

PostgreSQLPersistentStore _initdatabase() {
  return PostgreSQLPersistentStore(username, password, host, port, databaseName);
}
}
