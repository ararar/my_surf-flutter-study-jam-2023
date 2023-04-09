import 'package:flutter/material.dart';

class AddTicketModalBottomSheetWidget extends StatelessWidget {
  const AddTicketModalBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 240,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 300,
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'fgg',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                )),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Добавить'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
