import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Snackbar {
  void showSnack(String message, GlobalKey<ScaffoldState> _scaffoldKey,
          Function undo) =>
      ScaffoldMessenger.of (context as BuildContext).showSnackBar(
        SnackBar(
          content: Text(message),
          action: undo != null ? SnackBarAction(
            textColor: Theme.of(_scaffoldKey.currentState.context).primaryColor,
            label: "Undo",
            onPressed: () => undo,
          ):null,
        ),
      );
}
//ScaffoldMessenger.of (context).showSnackBar (SnackBar (content
// __scaffold Key.current State