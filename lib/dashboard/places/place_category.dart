List<PlacesCategory> places = [
  PlacesCategory('Dhaka', 'assets/places/dhaka02.jpg','/dhaka'),
  PlacesCategory('Rajshahi', 'assets/places/dhaka.jpg','/dhaka'),
  PlacesCategory('Khulna', 'assets/places/barishal.jpg','/dhaka'),
  PlacesCategory('Sylhet', 'assets/places/sylhet.jpg','/dhaka'),
  PlacesCategory('Chattagram', 'assets/places/chattagram.jpg','/dhaka'),
  PlacesCategory('Barishal', 'assets/places/barishal.jpg','/dhaka'),
  PlacesCategory('Comilla', 'assets/places/barishal.jpg','/dhaka'),
];

class PlacesCategory {
  String title;
  String image;
  String page;

  PlacesCategory(this.title, this.image, this.page);
}
