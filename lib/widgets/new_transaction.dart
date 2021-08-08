import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final ammountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Ammount'),
                controller: ammountController,
              ),
              TextButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(ammountController.text),
                  );
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
