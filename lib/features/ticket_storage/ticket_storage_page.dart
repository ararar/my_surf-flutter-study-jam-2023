import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/widgets/add_ticket_modal_bottom_sheet_widget.dart';
import 'package:surf_flutter_study_jam_2023/widgets/ticket_item_widget.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  /// Функция для отображения модального окна
  Future<dynamic> _addTicketModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => const AddTicketModalBottomSheetWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Хранение билетов'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return TicketItemWidget(index: index);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _addTicketModalBottomSheet(context),
          label: const Text('Добавить'),
        ));
  }
}

/// Виджет “Пустого экрана”.
class EmptyScreenWidget extends StatelessWidget {
  const EmptyScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Здесь пока ничего нет'),
    );
  }
}
