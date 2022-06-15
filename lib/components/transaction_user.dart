import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: '1',
        title: 'Novo Tênis de Corrida',
        value: 310.74,
        date: DateTime.now()),
    Transaction(id: '2', title: 'Luz', value: 410.30, date: DateTime.now()),
    Transaction(id: '2', title: 'Água', value: 180.30, date: DateTime.now()),
    Transaction(
        id: '2', title: 'Internet', value: 211.30, date: DateTime.now()),
    Transaction(id: '2', title: 'Academia', value: 90.00, date: DateTime.now()),
    Transaction(id: '2', title: 'Gamepass', value: 34.99, date: DateTime.now()),
    Transaction(id: '2', title: 'DevMedia', value: 49.99, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble.toString(),
        title: title,
        value: value,
        date: DateTime.now());

    print(title + " " + value.toString());

    setState(() => _transactions.add(newTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        transactionForm(_addTransaction),
        TransactionList(_transactions)
      ],
    );
  }
}
