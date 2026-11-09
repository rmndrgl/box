import 'package:flutter/material.dart';

import 'package:box/core/database/mariadb.dart';

class Home extends StatefulWidget {
	const Home({
		super.key,
	});

	@override
	State<Home> createState() => HomeView();
}

class HomeView extends State<Home> {

	MariaDB maria = MariaDB();

	@override
	void initState() {
		super.initState();
		maria.connection();
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
