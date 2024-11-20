import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Imagecontroller extends GetxController {
  RxString imagepath = ''.obs;

  Future getImage(ImageSource imagesource) async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: imagesource);
    if (image != null) {
      imagepath.value = image.path;
    }
  }
}
