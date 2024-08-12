import 'package:riverpod/riverpod.dart';
import 'package:simple_project/models/customer.dart';

class CustomerService{
  final Ref container;
  final List<Customer>_customers = [];

  CustomerService(this.container);

  void addCustomer( String name, String email) {
    final newCustomer = Customer(name, email);
    _customers.add(newCustomer);
    print('$name (Email: $email) has been added');

  }
  
  void viewCustomer() {
    if (_customers.isEmpty) {
      print('No customer available.');
    } else {
      print('Cusromers:');
      for (var customer in _customers) {
        print(customer);
      }
    }
  }

  List<Customer> get customers => _customers;
}