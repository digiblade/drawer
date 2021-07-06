import 'package:mongo_dart/mongo_dart.dart' as mongo;

register({
  String? state,
  String? district,
  String? pariyojna,
  String? sector,
  String? anganbadi,
  String? name,
  String? father,
  String? mother,
  String? gender,
  String? dob,
  String? cast,
  String? registrationdate,
  String? group,
  String? bname,
  String? bnumber,
}) async {
  var db = await mongo.Db.create(
      "mongodb+srv://akash:Akash8871714381@realmcluster.pj7hk.mongodb.net/fluttermongo?retryWrites=true&w=majority");
  await db.open();
  var coll = db.collection('registration');
  try {
    dynamic data = await coll.insert(
      {
        'state': state,
        'district': district,
        'pariyojna': pariyojna,
        'sector': sector,
        'anganbadi': anganbadi,
        'name': name,
        'father': father,
        'mother': mother,
        'gender': gender,
        'dob': dob,
        'cast': cast,
        'registrationdate': registrationdate,
        'group': group,
        'bname': bname,
        'bnumber': bnumber,
      },
    );
  } catch (e) {
    return false;
  }

  return true;
}

getData() async {
  var db = await mongo.Db.create(
      "mongodb+srv://akash:Akash8871714381@realmcluster.pj7hk.mongodb.net/fluttermongo?retryWrites=true&w=majority");
  await db.open();
  var coll = db.collection('registration');
  return coll.find().toList();
}
