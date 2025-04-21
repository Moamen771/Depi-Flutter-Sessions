class Product {
  final String name;
  final double price;
  final String image;
  final int totalRates;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.totalRates,
  });
}

List<Product> products = [
  Product(
    name: 'T-Shirt',
    price: 300.0,
    image: 'assets/e-commerce/image1.jpg',
    totalRates: 55,
  ),
  Product(
    name: 'Jacket',
    price: 100.0,
    image: 'assets/e-commerce/image2.jpg',
    totalRates: 666,
  ),
  Product(
    name: 'Child Jacket',
    price: 600.0,
    image: 'assets/e-commerce/image3.jpg',
    totalRates: 323,
  ),
  Product(
    name: 'Hooded',
    price: 700.0,
    image: 'assets/e-commerce/image4.jpg',
    totalRates: 88,
  ),
];
