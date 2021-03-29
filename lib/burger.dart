class Burger {
  String imgUrl;
  String name;
  String desc;
  String price;
  Burger({this.imgUrl, this.desc, this.name, this.price});
}

List<Burger> burgers = [
  Burger(
      imgUrl: 'https://i.postimg.cc/0yg8KhGp/Untitled2.png',
      desc: 'Full of spices',
      name: "Chicken Mushroom",
      price: "\$10"),
  Burger(
      imgUrl: 'https://i.postimg.cc/Pq7m6jjJ/pizza2.png',
      name: 'Sushi Pizza',
      desc: 'Canadian Pizza',
      price: '\$11'),
  Burger(
      imgUrl: 'https://i.postimg.cc/9fkCPfsN/pizza1.png',
      name: 'Pizza Margherita',
      desc: 'Italian',
      price: '\$8'),
];