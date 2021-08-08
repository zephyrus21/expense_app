import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      ammount: 3999,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Pen',
      ammount: 249,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      ammount: txAmmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransactions),
        ],
      ),
    );
  }
}
