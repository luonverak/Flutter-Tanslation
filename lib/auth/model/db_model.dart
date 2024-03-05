class DatabaseModel {
  final int id;
  final String ipAdress;
  final String port;
  final String instand;
  final String dbName;
  final String username;
  final String psasword;

  DatabaseModel(
      {required this.id,
      required this.ipAdress,
      required this.port,
      required this.instand,
      required this.dbName,
      required this.username,
      required this.psasword});

  // insert & edit data
  Map<String, dynamic> fromJson() {
    return ({
      'id': id,
      'ip_address': ipAdress,
      'port': port,
      'instand': instand,
      'db_name': dbName,
      'username': username,
      'password': psasword
    });
  }

  // fetch data
  DatabaseModel.toJson(Map<String, dynamic> res)
      : id = res['id'],
        ipAdress = res['ip_address'],
        port = res['port'],
        instand = res['instand'],
        dbName = res['db_name'],
        username = res['username'],
        psasword = res['password'];
}
