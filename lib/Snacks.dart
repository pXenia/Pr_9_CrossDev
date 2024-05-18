import 'package:flutter/material.dart';
import 'package:pr_6/Card.dart';
import 'package:pr_6/model/AllSnacksAPI.dart';
import 'package:pr_6/model/AllSnacks.dart';

class Snacks extends StatefulWidget {
@override
_SnacksState createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  late List<AllSnacks> _snack;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getAllSnacks();
  }

  Future<void> getAllSnacks() async {
    _snack = await ALLSnacksAPI.getSnack();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Мексиканская еда')
            ],
          ),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _snack.length,
          itemBuilder: (context, index) {
            return SnackCard(
                name: _snack[index].name,
                image: _snack[index].image
            );
          },
        ));
  }
}