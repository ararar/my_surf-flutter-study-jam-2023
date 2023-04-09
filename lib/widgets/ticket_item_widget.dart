import 'package:flutter/material.dart';

class TicketItemWidget extends StatelessWidget {
  final int index;

  const TicketItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(index % 2 == 0
              ? Icons.airplane_ticket_outlined
              : Icons.train_outlined),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ticket $index',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 280,
                child: LinearProgressIndicator(
                  value: 0.25,
                ),
              ),
              const Text(
                'Загружается 10 из 25',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              )
            ],
          ),
          IconButton(
            icon: const Icon(Icons.pause_circle_outline),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
