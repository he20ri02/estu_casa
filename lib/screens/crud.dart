class House {
  String id;
  String address;
  double rent;

  House({required this.id, required this.address, required this.rent});

  Map<String, dynamic> toMap() {
    return {'id': id, 'address': address, 'rent': rent};
  }

  factory House.fromMap(Map<String, dynamic> data) {
    return House(
      id: data['id'],
      address: data['address'],
      rent: data['rent'],
    );
  }
}


