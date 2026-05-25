abstract class EndPoints {
  static const String baseURL = 'https://www.googleapis.com/books/v1/';
  static const String featured =
      'volumes?q=subject:strategy&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks';
  static const String newest =
      'volumes?q=subject:egypt&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks&sorting=newest';
  // static const String similar =
  //     'volumes?q=subject:egypt&Sorting=relevance&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks&sorting=newest';
  static  String similar({required String category}) =>
      'volumes?q=subject:$category&Sorting=relevance&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks&sorting=newest';

  static String searchBooks({required String searchQuery}) =>
      'volumes?q=$searchQuery&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks';
}

