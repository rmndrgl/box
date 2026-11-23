import 'package:material_ui/material_ui.dart';

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
			),
			body: Center(
				child: const Text('Box app test'),
			)
		);
	}
}
