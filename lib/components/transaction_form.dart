import 'package:flutter/material.dart';

class transactionForm extends StatelessWidget {
  const transactionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Título',
            ),
          ),
          TextField(
            controller: valueController,
            decoration: InputDecoration(
              labelText: 'Valor',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Nova Transação',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  print(titleController.text + " " + valueController.text);
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
