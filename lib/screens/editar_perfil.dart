import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  // Variables para almacenar las rutas de las fotos de perfil y portada
  String? _profilePicturePath;
  String? _coverPicturePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget para seleccionar o tomar una foto de perfil
              GestureDetector(
                onTap: () {
                  _pickImage(ImageSource.gallery, isProfilePicture: true);
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _profilePicturePath != null
                      ? FileImage(File(_profilePicturePath!))
                      : null,
                  child: _profilePicturePath == null
                      ? Icon(
                          Icons.camera_alt,
                          size: 40,
                        )
                      : null,
                ),
              ),
              SizedBox(height: 16),
              // Widget para seleccionar o tomar una foto de portada
              GestureDetector(
                onTap: () {
                  _pickImage(ImageSource.gallery, isProfilePicture: false);
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: _coverPicturePath != null
                        ? DecorationImage(
                            image: FileImage(File(_coverPicturePath!)),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: _coverPicturePath == null
                      ? Center(
                          child: Icon(
                            Icons.camera_alt,
                            size: 40,
                          ),
                        )
                      : null,
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce tu nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Correo Electrónico'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce tu correo electrónico';
                  }
                  // Puedes agregar validación de formato de correo electrónico si es necesario
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Descripción del Perfil'),
                maxLines: 3,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Guardar cambios al presionar el botón
                  _saveChanges();
                },
                child: Text('Guardar Cambios'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pickImage(ImageSource source, {required bool isProfilePicture}) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    if (pickedFile != null) {
      setState(() {
        if (isProfilePicture) {
          _profilePicturePath = pickedFile.path;
        } else {
          _coverPicturePath = pickedFile.path;
        }
      });
    }
  }

  void _saveChanges() {
    // Validar el formulario antes de guardar
    if (_formKey.currentState!.validate()) {
      // Realizar acciones para guardar los cambios, por ejemplo, enviar a un servidor
      String name = _nameController.text;
      String email = _emailController.text;
      String description = _descriptionController.text;

      // Puedes realizar acciones adicionales aquí, como enviar los datos a un servidor
      print('Cambios guardados: Nombre: $name, Correo Electrónico: $email, Descripción: $description');
      print('Foto de Perfil: $_profilePicturePath');
      print('Foto de Portada: $_coverPicturePath');
      
      // Puedes navegar atrás o realizar otras acciones después de guardar
      Navigator.pop(context);
    }
  }
}
