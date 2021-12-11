import 'package:flutter/cupertino.dart';

class Cliente {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  const Cliente ({
    this.id,
    @required this.name,
    @required this.email,
    @required this.avatarUrl,
  });
}