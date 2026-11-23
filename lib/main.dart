import 'package:material_ui/material_ui.dart';

import 'package:box/controllers/theme_controller.dart';
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
		return ValueListenableBuilder<ThemeMode>(
			valueListenable: themeNotifier,
			builder: (context, currentMode, child) {
				return MaterialApp(
					title: 'Box app test',
					theme: ThemeData(
						brightness: Brightness.light,
						appBarTheme: const AppBarTheme(
							backgroundColor: Color(0xFF437A9C),
							foregroundColor: Colors.white,
						),
						useMaterial3: true,
					),
					darkTheme: ThemeData(
						brightness: Brightness.dark,
						appBarTheme: const AppBarTheme(
							backgroundColor: Color(0xFF1E293B),
							foregroundColor: Colors.white,
						),
						useMaterial3: true,
					),
					themeMode: currentMode,
					home: const Home(),
					debugShowCheckedModeBanner: false,
				);
			},
		);
	}
}
