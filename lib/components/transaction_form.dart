import 'package:flutter/material.dart';

class transactionForm extends StatelessWidget {
  const transactionForm(this.onSubmit, {Key? key}) : super(key: key);

  final void Function(String, double) onSubmit;

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
            keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                  final title = titleController.text;
                  final value = double.tryParse(valueController.text) ?? 0;

                  onSubmit(title, value);
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
