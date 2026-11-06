import 'package:flutter/material.dart';

import 'package:overlay_support/overlay_support.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async{
	WidgetsFlutterBinding.ensureInitialized();

	await dotenv.load();

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

	final String programmer = dotenv.get('PROGRAMMER');

	@override
	void initState() {
		super.initState();

		WidgetsBinding.instance.addPostFrameCallback((_) =>
			toast(programmer)
		);
	}

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
