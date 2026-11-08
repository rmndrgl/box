import 'package:flutter/material.dart';

import 'package:box/login.dart';

Future<void> main() async{
	WidgetsFlutterBinding.ensureInitialized();

	runApp(const Box());
}

class Box extends StatelessWidget {
	const Box({
		super.key
	});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Box app test',
			theme: ThemeData(
				appBarTheme: const AppBarTheme(
					backgroundColor: Color(0xFFD73220),
				),
				scaffoldBackgroundColor: Color(0XFF384657),
				colorScheme: .fromSeed(
					seedColor: Color(0xFF206FD6)
				),
				useMaterial3: true,
			),
			home: const Login(),
			debugShowCheckedModeBanner: false,
		);
	}
}
