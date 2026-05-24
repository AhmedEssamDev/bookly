abstract class EndPoints {
  static const String baseURL = 'https://www.googleapis.com/books/v1/';
  static const String featured =
      'volumes?q=subject:strategy&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks';
  static const String newest =
      'volumes?q=subject:egypt&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks&sorting=newest';
  static String similar({required String category}) =>
      'volumes?q=subject:$category&key=AIzaSyCVuDAEFOYaQkT4VXbQp5iw5HL0yUev_kc&Filtering=free-ebooks';
}
