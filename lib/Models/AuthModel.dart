import 'package:mongo_dart/mongo_dart.dart' as mongo;

getDb() async {
  var db = await mongo.Db.create(
      "mongodb+srv://akash:Akash8871714381@realmcluster.pj7hk.mongodb.net/fluttermongo?retryWrites=true&w=majority");
  await db.open();
  var coll = db.collection('first');
  return coll.find().toList();
}

getAuth(
  String user,
  String pass,
) async {
  var db = await mongo.Db.create(
      "mongodb+srv://akash:Akash8871714381@realmcluster.pj7hk.mongodb.net/fluttermongo?retryWrites=true&w=majority");
  await db.open();
  var coll = db.collection('user');
  List<dynamic> data = await coll.find(
    {
      'user': user,
      'pass': pass,
    },
  ).toList();

  return data;
}
