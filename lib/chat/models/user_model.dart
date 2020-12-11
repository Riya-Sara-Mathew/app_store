class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Harry',
  imageUrl: 'assets/images/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User john = User(
  id: 1,
  name: 'John',
  imageUrl: 'assets/images/ironman.jpeg',
  isOnline: false,
);
final User jennifer = User(
  id: 2,
  name: 'Jennifer',
  imageUrl: 'assets/images/captain-america.jpg',
  isOnline: true,
);
