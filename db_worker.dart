// Web worker entrypoint for sqlite_async (compiled to web/db_worker.js).
// See: https://pub.dev/packages/sqlite_async (Web setup).
//
// Recompile after upgrading sqlite_async/sqlite3:
//   dart compile js -O2 -o web/db_worker.js web/db_worker.dart
import 'package:sqlite3_web/sqlite3_web.dart';
import 'package:sqlite_async/sqlite3_web_worker.dart';

void main() {
  WebSqlite.workerEntrypoint(controller: AsyncSqliteController());
}
