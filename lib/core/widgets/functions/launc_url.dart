import 'package:bookly/core/widgets/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlFunction(context, String? url) async {
  if (url != null) {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    showSnackBar(context,"Could not launch URL$url");
  }
}
}

