import 'package:material_ui/material_ui.dart';

import 'package:box/controllers/theme_controller.dart';

class Home extends StatefulWidget {
	const Home({
		super.key,
	});

	@override
	State<Home> createState() => HomeView();
}

class HomeView extends State<Home> {
	@override
	Widget build(BuildContext context) {
		final isDark = Theme.of(context).brightness == Brightness.dark;

		return Scaffold(
			appBar: AppBar(
				title: const Text('Box app test'),
				actions: [
					IconButton(
						icon: Icon(
							isDark ? Icons.light_mode : Icons.dark_mode,
						),
						tooltip: isDark ? 'Modo claro' : 'Modo oscuro',
						onPressed: () {
							themeNotifier.value = isDark ? ThemeMode.light : ThemeMode.dark;
						},
					),
				],
			),
			body: const Center(
				child: Text('Box app test'),
			),
		);
	}
}
