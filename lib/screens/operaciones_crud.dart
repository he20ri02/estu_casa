import 'package:estu_casa_app/screens/crud.dart';
import 'package:estu_casa_app/widgets/product_service.dart';
import 'package:flutter/material.dart';


class CrudForm extends StatefulWidget {
  const CrudForm({super.key});

  @override
  State<CrudForm> createState() => _CrudFormState();
}

class _CrudFormState extends State<CrudForm> {
    final HouseService _houseService = HouseService();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _rentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: StreamBuilder<List<House>>(
        stream: _houseService.getHouses(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          List<House> houses = snapshot.data!;

          return ListView.builder(
            itemCount: houses.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(houses[index].address),
                subtitle: Text('\$${houses[index].rent.toStringAsFixed(2)}'),
                onTap: () {
                  _showEditDialog(context, houses[index]);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _showAddDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Agregar Casa para Alquilar'),
          content: Column(
            children: [
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Dirección'),
              ),
              TextField(
                controller: _rentController,
                decoration: InputDecoration(labelText: 'Alquiler'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _clearControllers();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                await _houseService.addHouse(
                  House(
                    id: DateTime.now().toString(),
                    address: _addressController.text,
                    rent: double.parse(_rentController.text),
                  ),
                );
                Navigator.of(context).pop();
                _clearControllers();
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showEditDialog(BuildContext context, House house) async {
    _addressController.text = house.address;
    _rentController.text = house.rent.toString();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Casa para Alquilar'),
          content: Column(
            children: [
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Dirección'),
              ),
              TextField(
                controller: _rentController,
                decoration: InputDecoration(labelText: 'Alquiler'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _clearControllers();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                house.address = _addressController.text;
                house.rent = double.parse(_rentController.text);

                await _houseService.updateHouse(house);
                Navigator.of(context).pop();
                _clearControllers();
              },
              child: Text('Guardar'),
            ),
            TextButton(
              onPressed: () async {
                await _houseService.deleteHouse(house.id);
                Navigator.of(context).pop();
                _clearControllers();
              },
              child: Text('Eliminar'),
            ),
          ],
        );
      },
    );
  }

  void _clearControllers() {
    _addressController.clear();
    _rentController.clear();
  }
}