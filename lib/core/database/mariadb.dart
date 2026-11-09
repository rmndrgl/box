import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:mysql_dart/mysql_dart.dart';

class MariaDB {

	late String HOST       = dotenv.get('HOST');
	late String PORT       = dotenv.get('PORT');
	late String USER       = dotenv.get('USER');
	late String SECRET_KEY = dotenv.get('SECRET_KEY');
	late String DATABASE   = dotenv.get('DATABASE');
	late String SECURE     = dotenv.get('SECURE');

	Future<void> connection() async {
		await dotenv.load();

		final link = await MySQLConnection.createConnection(
			host: HOST,
			port: int.parse(PORT),
			userName: USER,
			password: SECRET_KEY,
			databaseName: DATABASE,
			secure: bool.parse(SECURE),
		);

		await link.connect();
	}

}
