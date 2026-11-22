import 'package:material_ui/material_ui.dart';

import 'package:box/views/home.dart';

Future<void> main() async {
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
					backgroundColor: Color(0xFF437A9C),
				),
				useMaterial3: true,
			),
			home: Home(),
			debugShowCheckedModeBanner: false,
		);
	}
}
