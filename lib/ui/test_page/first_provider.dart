import 'package:bloctemp/ui/test_page/first_view.dart';
import 'package:flutter/material.dart';

import 'first_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstProvider extends BlocProvider<FirstBloc> {
  FirstProvider({
    Key key,
  }) : super(
            key: key,
            create: (context) => FirstBloc(context),
            child: FirstView());
}
