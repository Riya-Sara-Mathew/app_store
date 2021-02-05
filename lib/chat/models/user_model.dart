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
  imageUrl: 'assets/images/caroline_forbes.jpg',
  isOnline: true,
);

// USERS
final User john = User(
  id: 1,
  name: 'Stefan Salvatore',
  imageUrl: 'assets/images/stefan.jpg',
  isOnline: true,
);
final User jennifer = User(
  id: 2,
  name: 'Bonnie Bennet',
  imageUrl: 'assets/images/bonnie.jpg',
  isOnline: false,
);
