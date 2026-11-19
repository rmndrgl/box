import 'package:material_ui/material_ui.dart';

import 'package:overlay_support/overlay_support.dart';

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
		return Scaffold(
			appBar: AppBar(
				title: Text('Box app test'),
				actions: [
					IconButton(
						icon: const Icon(Icons.settings),
						tooltip: 'Settings',
						onPressed: () {
							toast('Settings');
						},
					),
				],
			),
			body: Center(
				child: const Text('Box app test'),
			)
		);
	}
}
