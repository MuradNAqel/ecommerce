import 'models/product.dart';

String splashScreenPath = '/';
String registerScreenPath = '/register';
String completeScreenPath = '/continueRegister';
String welcomeBackScreenPath = '/welcomeBack';
String forgotPasswordScreenPath = '/forgotPassword';
String homeScreenPath = '/home';
List<String> homePageSliders = ['Image Banner 2.png', 'Image Banner 3.png'];
String detailsScreen = '/detailsScreen';

List<Product> specialProductsList = [
  Product(
      imgPath: 'assets/images/Image Banner 2.png',
      title: 'Smartphones',
      category: 'Electronics',
      brandCount: 18,
      price: 0,
      isLiked: false),
  Product(
      imgPath: 'assets/images/Image Banner 3.png',
      title: 'Fashion',
      category: 'clothes',
      brandCount: 24,
      price: 0,
      isLiked: false),
];

List<Product> popularProductsList = [
  Product(
      imgPath: 'assets/images/Image Popular Product 1.png',
      title: 'Wireless controller for PS4',
      category: 'Electronics',
      brandCount: 18,
      price: 64.99,
      isLiked: false),
  Product(
      imgPath: 'assets/images/Image Popular Product 2.png',
      title: 'Nike sport White - Men Shorts',
      category: 'clothes',
      brandCount: 24,
      price: 50.5,
      isLiked: false),
  Product(
      imgPath: 'assets/images/Image Popular Product 3.png',
      title: 'Sport bike helmet Rainbow colored',
      category: 'Sports',
      brandCount: 2,
      price: 36.3,
      isLiked: false)
];
