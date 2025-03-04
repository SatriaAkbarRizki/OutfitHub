import 'package:outfithub/model/card.dart';
import 'package:outfithub/model/outfit.dart';

class DataDump {
  static List<CardModel> listCards = [
    CardModel("Peter Crouch", "MasterCard", "2131 3242 5335 9999",
        "assets/image/cardwallet1.png"),
    CardModel("John Crouch", "Visa", "2131 3242 5335 3090",
        "assets/image/cardwallet2.png"),
    CardModel("John Crouch", "MasterCard", "2131 3242 5335 3090",
        "assets/image/cardwallet3.png"),
    CardModel("Alex Thomaas", "MasterCard", "3482 8384 8282 5231",
        "assets/image/cardwallet4.png"),
    CardModel("Donald Iskander", "Visa", "3425 2784 5732 7422",
        "assets/image/cardwallet5.png")
  ];

  static List<OutfitModel> listOutfit = [
    OutfitModel(
        id: 0,
        name: "Shirt Black Awesome and Minimalist Modern",
        type: "nothing",
        price: 1500000,
        image: "assets/image/Black Slim Fit Dress.jpg",
        description:
            "Black short-sleeved T-shirt with a graphic print on the front. The graphic's specific details are not provided; could be text, an image, or a combination of both."),
    OutfitModel(
        id: 0,
        name: "Shirt Black Awesome and Minimalist Modern",
        type: "nothing",
        price: 1292599,
        image: "assets/image/Black Wash Straight Leg Jeans.jpg",
        description:
            "Slim-fitting, black dress pants/trousers. Likely made of a smooth fabric suitable for formal or business-casual wear. The cut is tailored, and the fit is close to the body.")
  ];
}
