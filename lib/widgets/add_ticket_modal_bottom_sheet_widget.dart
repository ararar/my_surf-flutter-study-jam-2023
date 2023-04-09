import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  final _formKey = GlobalKey<FormState>();
  Uri? validUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 240,
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      autofocus: true,
                      decoration: const InputDecoration(
                        labelText: 'Введите Url',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),

                      ///Проверка правильности сслыки
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Пустое поле';
                        }
                        validUrl = Uri.tryParse(text);
                        if (validUrl == null || validUrl!.scheme.isEmpty) {
                          return 'Введите корректный Url';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(' Форма: $validUrl');
                      }
                    },
                    child: const Text('Добавить'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
