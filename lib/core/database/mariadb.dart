import 'package:mysql_dart/mysql_dart.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/foundation.dart';

class MariaDB {

	MySQLConnection? link;

	Future<MySQLConnection> getConnection() async {

		if (link != null && link!.connected) {
			return link!;
		}

		try {
			if(!dotenv.isInitialized) {
				await dotenv.load(fileName: '.env');
			}

			final host     = dotenv.get('HOST', fallback: '127.0.0.1');
			final port     = int.tryParse(dotenv.get('PORT', fallback: '3306')) ?? 3306;
			final user     = dotenv.get('USER');
			final password = dotenv.get('SECRET_KEY');
			final database = dotenv.get('DATABASE');
			final secure   = dotenv.get('SECURE', fallback: 'false').toLowerCase() == 'true';

			link = await MySQLConnection.createConnection(
				host: host,
				port: port,
				userName: user,
				password: password,
				databaseName: database,
				secure: secure,
			);

			await link!.connect();

			debugPrint('MariaDB connection ok!');

			return link!;
		} catch(e) {
			debugPrint('MariaDB connection error: $e');
			rethrow;
		}
	}

	Future<void> close() async {
		if(link != null && link!.connected) {
			await link!.close();
			link = null;
			debugPrint('MariaDB connection closed!');
		}
	}

}
