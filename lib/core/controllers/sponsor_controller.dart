import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:itmeet/models/sponsor_category_model.dart';
import 'package:itmeet/core/services/sponsor_services.dart';

class SponsorController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<SponsorCategoryModel> get sponsors => _sponsors;
  List<SponsorCategoryModel> _sponsors = [];

  SponsorController() {
    getSponsors();
  }

  // getSponsors() async {
  //   _loading.value = true;
  //   SponsorService().getSponsorsByCategory().then((value) {
  //     for (int i = 0; i < value.length; i++) {
  //       _sponsors.add(SponsorCategoryModel.fromJson(value[i].data()));
  //       _loading.value = false;
  //     }
  //     update();
  //   });
  // }

  getSponsors() async {
    _loading.value = true;
    for (int i = 0; i < sponsorsList.length; i++) {
      _sponsors.add(SponsorCategoryModel.fromJson(sponsorsList[i]));
      _loading.value = false;
    }
    update();
  }

  List sponsorsList = [
    {
      "id": "0",
      "title": "Platinum Sponsors",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
      ]
    },
    {
      "id": "1",
      "title": "Gold Sponsors",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        }
      ]
    },
    {
      "id": "2",
      "title": "Silver Sponsors",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "3",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
      ]
    },
    {
      "id": "3",
      "title": "Bronze Sponsors",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "3",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "4",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
      ]
    },
    {
      "id": "4",
      "title": "General Sponsors",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "3",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "4",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "5",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "6",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        }
      ]
    },
    {
      "id": "5",
      "title": "Media Partners",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        }
      ]
    },
    {
      "id": "6",
      "title": "Supporting Partners",
      "sponsors": [
        {
          "id": "0",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "1",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "2",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "3",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "4",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "5",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        },
        {
          "id": "6",
          "logo": 'assets/images/google_logo.png',
          "url": "https://www.google.com/",
        }
      ]
    },
  ];
}
