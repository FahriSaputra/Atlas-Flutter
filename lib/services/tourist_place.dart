class TourismPlace {
  String name;
  String location;
  String about;
  String imageAsset;
  bool isFav, bookmark;
  List<TourismPlace> saved;
  String rating;
  int comments, price, totalFavorites;

  TourismPlace({
    this.isFav,
    this.name,
    this.location,
    this.about,
    this.imageAsset,
    this.price,
    this.rating,
    this.saved,
    this.comments,
    this.totalFavorites,
    this.bookmark,
  });
}
