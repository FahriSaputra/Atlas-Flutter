import 'package:dicoding_submission/services/tourist_place.dart';

List<TourismPlace> listPlace = [
  TourismPlace(
    name: "Cafe Nova de Gaida",
    imageAsset:
        "https://images.unsplash.com/photo-1521017432531-fbd92d768814?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHBsYWNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 30,
    location: "Portugal",
    rating: "9",
    isFav: false,
    comments: 200,
    totalFavorites: 4000,
    bookmark: false,
  ),
  TourismPlace(
    name: "Sea de Gaia",
    imageAsset:
        "https://images.unsplash.com/photo-1592342835979-d18067d818c1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 0,
    location: "Portugal",
    rating: "8.5",
    isFav: false,
    comments: 100,
    totalFavorites: 1200,
    bookmark: false,
  ),
  TourismPlace(
    name: "Neuschwanstein Castle",
    imageAsset:
        "https://images.unsplash.com/photo-1449452198679-05c7fd30f416?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 100,
    location: "Germany",
    rating: "8",
    isFav: false,
    comments: 700,
    totalFavorites: 9000,
    bookmark: false,
  ),
  TourismPlace(
    name: "Kelingking Beach",
    imageAsset:
        "https://images.unsplash.com/photo-1533903655515-91fb3870be93?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGluZG9uZXNpYXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 20,
    location: "Indonesia",
    rating: "8",
    isFav: false,
    comments: 500,
    totalFavorites: 19000,
    bookmark: false,
  ),
  TourismPlace(
    name: "Sindoro",
    imageAsset:
        "https://images.unsplash.com/photo-1548876408-cd93a72cdd93?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 10,
    location: "Indonesia",
    rating: "8.7",
    isFav: false,
    comments: 900,
    totalFavorites: 19000,
    bookmark: false,
  ),
  TourismPlace(
    name: "Raja Ampat",
    imageAsset:
        "https://images.unsplash.com/photo-1516690561799-46d8f74f9abf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 350,
    location: "Indonesia",
    rating: "9.5",
    isFav: false,
    comments: 91000,
    totalFavorites: 190000,
    bookmark: false,
  ),
  TourismPlace(
    name: "Ha Long Bay",
    imageAsset:
        "https://images.unsplash.com/photo-1489659429806-4069d3fcde9a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1039&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 0,
    location: "Vietnam",
    rating: "8",
    isFav: false,
    comments: 170,
    totalFavorites: 12000,
    bookmark: false,
  ),
  TourismPlace(
    name: "El Nido",
    imageAsset:
        "https://images.unsplash.com/photo-1518509562904-e7ef99cdcc86?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80",
    about:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices elit imperdiet, suscipit risus vel, interdum urna. Cras aliquam dui fringilla consectetur semper. Nullam egestas, leo ac malesuada auctor.",
    price: 0,
    location: "Philipines",
    rating: "8.6",
    isFav: false,
    comments: 170,
    totalFavorites: 20200,
    bookmark: false,
  ),
];
