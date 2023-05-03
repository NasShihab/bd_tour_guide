List<PlacesCategory> places = [
  PlacesCategory('Dhaka', 'assets/places/dhaka02.jpg'),
  PlacesCategory('Rajshahi', 'assets/places/dhaka.jpg'),
  PlacesCategory('Khulna', 'assets/places/barishal.jpg'),
  PlacesCategory('Sylhet', 'assets/places/sylhet.jpg'),
  PlacesCategory('Chattagram', 'assets/places/chattagram.jpg'),
  PlacesCategory('Barishal', 'assets/places/barishal.jpg'),
  PlacesCategory('Comilla', 'assets/places/barishal.jpg'),
];

class PlacesCategory {
  String title;
  String image;

  PlacesCategory(this.title, this.image);
}
