import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

/*
class AdModal {
  String? houseNumber;
  String? road;
  String? town;
  String? country;
  int? postCode;

  AdModal({
    this.houseNumber,
    this.road,
    this.town,
    this.country,
    this.postCode,
  });

  AdModal.fromDocumentSnapshot(
    DocumentSnapshot documentSnapshot,
  ) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    houseNumber = data['houseNumber'] ?? '';
    road = data['road'] ?? '';
    town = data['town'] ?? '';
    country = data['country'] ?? '';
    postCode = data['postCode'] ?? '';
  }

  AdModal.fromJson(Map<String, dynamic> json) {
    houseNumber = json['houseNumber'] ?? '';
    road = json['road'] ?? '';
    town = json['town'] ?? '';
    country = json['country'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['houseNumber'] = houseNumber;
    data['road'] = road;
    data['town'] = town;
    data['country'] = country;
    data['postCode'] = postCode;

    return data;
  }
}
*/

Adsmodel adsmodelFromJson(String str) => Adsmodel.fromJson(json.decode(str));

String adsmodelToJson(Adsmodel data) => json.encode(data.toJson());

class Adsmodel {
  Adsmodel({
    this.adsShowOrNot,
    this.interstitialId,
    this.bannerId,
    this.firstCountDown,
    this.secondCountDown,
    this.faceBookInterstitialId,
    this.adMobOrFaceBook,
    this.faceBookBannerId,
    this.appOpenAdsId,
    this.docId,
    this.faceBookTestId,
  });

  bool? adsShowOrNot;
  String? interstitialId;
  String? bannerId;
  String? firstCountDown;
  String? secondCountDown;
  String? faceBookInterstitialId;
  String? adMobOrFaceBook;
  String? faceBookBannerId;
  String? appOpenAdsId;
  String? docId;
  String? faceBookTestId;

  Adsmodel.fromDocumentSnapshot(
    DocumentSnapshot documentSnapshot,
  ) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    adsShowOrNot = data["adsShowOrNot"] == null ? null : data["adsShowOrNot"];
    interstitialId = data["interstitialId"] == null ? null : data["interstitialId"];
    bannerId = data["bannerId"] == null ? null : data["bannerId"];
    firstCountDown = data["firstCountDown"] == null ? null : data["firstCountDown"];
    secondCountDown = data["secondCountDown"] == null ? null : data["secondCountDown"];
    faceBookInterstitialId = data["faceBookInterstitialId"] == null ? null : data["faceBookInterstitialId"];
    adMobOrFaceBook = data["adMobOrFaceBook"] == null ? null : data["adMobOrFaceBook"];
    faceBookBannerId = data["faceBookBannerId"] == null ? null : data["faceBookBannerId"];
    appOpenAdsId = data["appOpenAdsId"] == null ? null : data["appOpenAdsId"];
    docId = data["docId"] == null ? null : data["docId"];
    faceBookTestId = data["faceBookTestId"] == null ? null : data["faceBookTestId"];
  }

  factory Adsmodel.fromJson(Map<String, dynamic> json) => Adsmodel(
        adsShowOrNot: json["adsShowOrNot"] == null ? null : json["adsShowOrNot"],
        interstitialId: json["interstitialId"] == null ? null : json["interstitialId"],
        bannerId: json["bannerId"] == null ? null : json["bannerId"],
        firstCountDown: json["firstCountDown"] == null ? null : json["firstCountDown"],
        secondCountDown: json["secondCountDown"] == null ? null : json["secondCountDown"],
        faceBookInterstitialId: json["faceBookInterstitialId"] == null ? null : json["faceBookInterstitialId"],
        adMobOrFaceBook: json["adMobOrFaceBook"] == null ? null : json["adMobOrFaceBook"],
        faceBookBannerId: json["faceBookBannerId"] == null ? null : json["faceBookBannerId"],
        appOpenAdsId: json["appOpenAdsId"] == null ? null : json["appOpenAdsId"],
        docId: json["docId"] == null ? null : json["docId"],
        faceBookTestId: json["faceBookTestId"] == null ? null : json["faceBookTestId"],
      );

  Map<String, dynamic> toJson() => {
        "adsShowOrNot": adsShowOrNot ?? null,
        "interstitialId": interstitialId == null ? null : interstitialId,
        "bannerId": bannerId == null ? null : bannerId,
        "firstCountDown": firstCountDown == null ? null : firstCountDown,
        "secondCountDown": secondCountDown == null ? null : secondCountDown,
        "faceBookInterstitialId": faceBookInterstitialId == null ? null : faceBookInterstitialId,
        "adMobOrFaceBook": adMobOrFaceBook == null ? null : adMobOrFaceBook,
        "faceBookBannerId": faceBookBannerId == null ? null : faceBookBannerId,
        "appOpenAdsId": appOpenAdsId == null ? null : appOpenAdsId,
        "docId": docId == null ? null : docId,
        "faceBookTestId": faceBookTestId == null ? null : faceBookTestId,
      };
}
