import 'package:material_ui/material_ui.dart';

import 'package:overlay_support/overlay_support.dart';

import 'package:box/views/home.dart';

Future<void> main() async {
	WidgetsFlutterBinding.ensureInitialized();

	runApp(
		OverlaySupport.global(
			child: const Box()
		)
	);
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
				appBarTheme: AppBarTheme(
					backgroundColor: Color(0xFF18B89A),
				),
				useMaterial3: true,
			),
			home: Home(),
			debugShowCheckedModeBanner: false,
		);
	}
}
