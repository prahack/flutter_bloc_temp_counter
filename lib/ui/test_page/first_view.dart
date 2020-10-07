import 'package:bloctemp/ui/test_page/first_bloc.dart';
import 'package:bloctemp/ui/test_page/first_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'first_event.dart';

class FirstView extends StatefulWidget {
  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    FirstBloc firstBloc = BlocProvider.of<FirstBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('First Bloc'),
      ),
      body: Center(
        child: BlocBuilder<FirstBloc, FirstState>(
          buildWhen: (pre, current) => pre.value != current.value,
          builder: (context, state) {
            return Text('${state.value}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => firstBloc.add(IncrementEvent()),
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
