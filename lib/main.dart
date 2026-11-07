import 'package:flutter/material.dart';

import 'package:overlay_support/overlay_support.dart';

Future<void> main() async{
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
				colorScheme: .fromSeed(seedColor: Colors.deepPurple),
			),
			home: const Home(),
		);
	}

}

class Home extends StatefulWidget {
	const Home({
		super.key,
	});

	@override
	State<Home> createState() => View();
}

class View extends State<Home> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Theme.of(context).colorScheme.inversePrimary,
				title: Text('Box app test'),
			),
			body: Center(
				child: const Text('Box app test'),
			)
		);
	}
}
