class FisheryHub {
  static final List<Map<String, dynamic>> aquariumFishList = [
    {
      'id': 1,
      'name': 'Betta Fish',
      'description': 'Colorful Betta fish with flowing fins.',
      'price': 12.99,
      'imageUrl':
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fplanetwallpaper%2Fbetta-fish-wallpapers%2F&psig=AOvVaw2mumha3dWZCQAixp6XyC6X&ust=1697004504027000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDD3sfo6oEDFQAAAAAdAAAAABAG',
    },
    {
      'id': 2,
      'name': 'Angelfish',
      'description': 'Elegant angelfish for your aquarium.',
      'price': 18.99,
      'imageUrl':
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F683491680926716192%2F&psig=AOvVaw1vzHHhr2c3YrOY2zEd2f_O&ust=1697007102110000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPiSl5_y6oEDFQAAAAAdAAAAABAS',
    },
    {
      'id': 3,
      'name': 'Neon Tetra',
      'description': 'School of vibrant neon tetras.',
      'price': 8.99,
      'imageUrl':
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fneon-tetra&psig=AOvVaw3UNfk5L2qwaE9Okoa5mOSy&ust=1697007154239000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNipurfy6oEDFQAAAAAdAAAAABAJ',
    },
    {
      'id': 4,
      'name': 'Guppy',
      'description': 'Colorful and lively guppy fish.',
      'price': 6.99,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREz9zG0e-GhmhqdSQBc_l0nEsJsB43KGPktQ&usqp=CAU',
    },
    {
      'id': 5,
      'name': 'Discus Fish',
      'description': 'Discus fish with distinctive patterns.',
      'price': 29.99,
      'imageUrl':
          'data:image/jpeg;base64,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',
    },
    {
      'id': 6,
      'name': 'Corydoras Catfish',
      'description': 'Bottom-dwelling Corydoras catfish.',
      'price': 14.99,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXHtJM2nUZAVzfMZ9MMLmWezq2K-SkKdAidQ&usqp=CAU',
    },
  ];
}