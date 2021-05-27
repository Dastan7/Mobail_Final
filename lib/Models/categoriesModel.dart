class CategoriesModel {
  String image;
  String title;

  CategoriesModel({this.image, this.title});
}

List<CategoriesModel> categoriesModel = [
  CategoriesModel(
    image: "assets/icons/guitar.svg",
    title: "Guitars",
  ),
  CategoriesModel(
    image: "assets/icons/drums.svg",
    title: "Drums",
  ),
  CategoriesModel(
    image: "assets/icons/piano.svg",
    title: "Piano",
  ),
];
