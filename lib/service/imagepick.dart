import 'package:image_picker/image_picker.dart';

class ImagepickService {
  final ImagePicker picker = ImagePicker();

  Future<XFile?> pickImageGallery() async {
    final XFile? results = await picker.pickImage(source: ImageSource.gallery);
    return results;
  }

  Future<XFile?> pickImageCamera() async {
    final XFile? results = await picker.pickImage(source: ImageSource.camera);
    return results;
  }
}
