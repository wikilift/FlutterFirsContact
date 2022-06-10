import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, dynamic> formValues = {
      'name': 'Paco',
      'mail': 'pepe@paco.com',
      'password': '',
      'repeatedPassword': '',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'Ingrese su nombre',
                  labelText: 'Nombre',
                  icon: Icons.admin_panel_settings,
                  formValues: formValues,
                  formProperty: 'name',
                  validate: (value) {
                    return value.toString().isEmpty
                        ? "No puede estar en blanco"
                        : null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'Ingrese su email',
                  labelText: 'Email',
                  textInputType: TextInputType.emailAddress,
                  icon: Icons.email,
                  formProperty: 'mail',
                  formValues: formValues,
                  validate: (value) {
                    return value.toString().isEmpty
                        ? "No puede estar en blanco"
                        : null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    hintText: 'Ingrese su contraseña',
                    labelText: 'Password',
                    textInputType: TextInputType.streetAddress,
                    obscure: true,
                    icon: Icons.password_outlined,
                    formProperty: 'password',
                    formValues: formValues,
                    validate: (value) {
                      return value.toString().isEmpty ||
                              value.toString().length < 8
                          ? "No puede estar en blanco"
                          : null;
                    }),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                    hintText: 'Repita su contraseña',
                    labelText: 'Repeat Password',
                    textInputType: TextInputType.streetAddress,
                    obscure: true,
                    icon: Icons.password_outlined,
                    formProperty: 'repeatedPassword',
                    formValues: formValues,
                    validate: (value) {
                      return value.toString() != formValues['password']
                          ? "Las contraseñas no coinciden"
                          : null;
                    }),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: DropdownButtonFormField<String>(
                      icon: const Icon(Icons.group_add_outlined),
                      value: 'Admin',
                      items: [
                        DropdownMenuItem(
                          onTap: () {},
                          value: 'Admin',
                          child: const Text('Admin'),
                        ),
                        DropdownMenuItem(
                          onTap: () {},
                          value: 'Super',
                          child: const Text('Super'),
                        ),
                        DropdownMenuItem(
                          onTap: () {},
                          value: 'Monguer',
                          child: const Text('Monguer'),
                        )
                      ],
                      onChanged: (v) {
                        print(v);
                        formValues['role'] = v ?? 'Admin';
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('no válido');
                      return;
                    }
                    ;
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('submit'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
