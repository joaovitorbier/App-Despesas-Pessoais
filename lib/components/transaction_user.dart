import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

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
    Transaction(
        id: '2', title: 'Conta de Luz', value: 211.30, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        transactionForm()
      ],
    );
  }
}