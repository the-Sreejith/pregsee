// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

// 🌎 Project imports:
import '../Models/WeekByWeekModel.dart';
import '../Models/WeekInfo.dart';

class WeekInfoRepository {
  final DocumentReference mlDocRef =
      FirebaseFirestore.instance.doc('weekByWeek/contents');

  Future<List<WeekInfo>> getContent() async {
    List<WeekInfo> _list = [];
    await mlDocRef.get().then((value) {
      if (value.data() != null) {
        value
            .data()
            .entries
            .map((e) => _list.add(WeekInfo.fromData(e.value,e.key)))
            .toList();
      }
    }).onError((error, stackTrace) {
      print('Someting vent wrong: $error');
    });
    _list.sort((a,b)=>a.week.compareTo(b.week));
    return _list;
  }

  setContents() async {
    mlDocRef
        .set(en)
        .then((value) => print('Saved succesfully'))
        .onError((error, stackTrace) => print(error));
  }

  var en = {
    "01": {
      "week": 1,
      "title": {"en":"Fertilization","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-01.png?alt=media&token=271a2ac9-5a75-4172-a312-4ad5dea801f7",
      "babySize": "10-13mm",
      "heartBeat": "0/min",
      "en": [
        {"title": "Mother", "contentPoints": week1.motherDataEn},
        {"title": "Baby", "contentPoints": week1.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week1.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week1.babyDataMl},
      ]
    },
    "02": {
      "week": 2,
      "title": {"en":"Zygote","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-02.png?alt=media&token=be06b195-4be5-4f23-a884-8099a9790263",
      "babySize": "10-13mm",
      "heartBeat": "0/min",
      "en": [
        {"title": "Mother", "contentPoints": week2.motherDataEn},
        {"title": "Baby", "contentPoints": week2.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week2.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week2.babyDataMl},
      ],
    },
    "03": {
      "week": 3,
      "title": {"en":"Embryo","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-03.png?alt=media&token=d75edaa0-03a0-4d07-9981-35619caaba58",
      "babySize": "10-13mm",
      "heartBeat": "0/min",
      "en": [
        {"title": "Mother", "contentPoints": week3.motherDataEn},
        {"title": "Baby", "contentPoints": week3.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week3.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week3.babyDataMl},
      ],
    },
    "04": {
      "week": 4,
      "title": {"en":"Poppy Seed","ml":"malayalam",},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-04.png?alt=media&token=40c725b8-84eb-4f25-ba4e-72ae55048b8f",
      "babySize": "10-13mm",
      "heartBeat": "0/min",
      "en": [
        {"title": "Mother", "contentPoints": week4.motherDataEn},
        {"title": "Baby", "contentPoints": week4.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week4.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week4.babyDataMl},
      ],
    },
    "05": {
      "week": 5,
      "title": {"en":"Pepper corn","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-05.png?alt=media&token=f80ff7be-9edd-41bd-8c88-e75e682e6261",
      "babySize": "10-13mm",
      "heartBeat": "0/min",
      "en": [
        {"title": "Mother", "contentPoints": week5.motherDataEn},
        {"title": "Baby", "contentPoints": week5.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week5.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week5.babyDataMl},
      ],
    },
    "06": {
      "week": 6,
      "title": {"en":"Pomegranate seed","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-06.png?alt=media&token=8b4ddce3-7c2a-4b5d-9ec2-6af54b455690",
      "babySize": "10-13mm",
      "heartBeat": "90-110/min",
      "en": [
        {"title": "Mother", "contentPoints": week6.motherDataEn},
        {"title": "Baby", "contentPoints": week6.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week6.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week6.babyDataMl},
      ],
    },
    "07": {
      "week": 7,
      "title": {"en":"Blueberry","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-07.png?alt=media&token=54c2ffba-d3af-48da-b72c-7f02467e84c4",
      "babySize": "10-13mm",
      "heartBeat": "90-110/min",
      "en": [
        {"title": "Mother", "contentPoints": week7.motherDataEn},
        {"title": "Baby", "contentPoints": week7.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week7.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week7.babyDataMl},
      ],
    },
    "08": {
      "week": 8,
      "title": {"en":"Kidney Bean","ml":"malayalam",},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-08.png?alt=media&token=af04c844-708c-43d7-a88a-700630297fac",
      "babySize": "1.6 cm",
      "heartBeat": "90-110/min",
      "en": [
        {"title": "Mother", "contentPoints": week8.motherDataEn},
        {"title": "Baby", "contentPoints": week8.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week8.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week8.babyDataMl},
      ],
    },
    "09": {
      "week": 9,
      "title": {"en":"Cherry","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-09.png?alt=media&token=1f9f8231-8913-474e-a360-77eb4c7cf1eb",
      "babySize": "2.3 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week9.motherDataEn},
        {"title": "Baby", "contentPoints": week9.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week9.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week9.babyDataMl},
      ],
    },
    "10": {
      "week": 10,
      "title": {"en":"Kimquat","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-10.png?alt=media&token=73c5778b-c3b2-4b2f-8819-e45b7dba66a1",
      "babySize": "3.1 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week10.motherDataEn},
        {"title": "Baby", "contentPoints": week10.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week10.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week10.babyDataMl},
      ],
    },
    "11": {
      "week": 11,
      "title": {"en":"Lime","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-11.png?alt=media&token=1ca80d46-2854-4f56-95f4-85414ddcbf84",
      "babySize": "4.1 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week11.motherDataEn},
        {"title": "Baby", "contentPoints": week11.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week11.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week11.babyDataMl},
      ],
    },
    "12": {
      "week": 12,
      "title": {"en":"Plum","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-12.png?alt=media&token=32fc4017-95d6-482e-9661-0fec806cd7d4",
      "babySize": "5.4 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week12.motherDataEn},
        {"title": "Baby", "contentPoints": week12.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week12.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week12.babyDataMl},
      ],
    },
    "13": {
      "week": 13,
      "title": {"en":"PeaPod","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-13.png?alt=media&token=0e1ef184-1479-4ad4-ac75-e666a939d12f",
      "babySize": "7.4 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week13.motherDataEn},
        {"title": "Baby", "contentPoints": week13.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week13.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week13.babyDataMl},
      ],
    },
    "14": {
      "week": 14,
      "title": {"en":"Nectarine","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-14.png?alt=media&token=e6901333-1840-4dd0-b802-075a0c0315da",
      "babySize": "8.7 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week14.motherDataEn},
        {"title": "Baby", "contentPoints": week14.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week14.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week14.babyDataMl},
      ],
    },
    "15": {
      "week": 15,
      "title": {"en":"Apple","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-15.png?alt=media&token=e71fb3c8-76ca-4765-bb72-e59504811fd0",
      "babySize": "10.1 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week15.motherDataEn},
        {"title": "Baby", "contentPoints": week15.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week15.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week15.babyDataMl},
      ],
    },
    "16": {
      "week": 16,
      "title": {"en":"Avacado","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-16.png?alt=media&token=6888f713-e605-4012-81aa-16044820c22d",
      "babySize": "11.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week16.motherDataEn},
        {"title": "Baby", "contentPoints": week16.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week16.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week16.babyDataMl},
      ],
    },
    "17": {
      "week": 17,
      "title": {"en":"Lurnip","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-17.png?alt=media&token=4f5bea4b-5967-4e4f-9c33-dc4d0b710183",
      "babySize": "13 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week17.motherDataEn},
        {"title": "Baby", "contentPoints": week17.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week17.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week17.babyDataMl},
      ],
    },
    "18": {
      "week": 18,
      "title": {"en":"Bell Pepper","ml":"malayalam",},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-18.png?alt=media&token=ce7d5a31-23f5-4859-a96e-f25f10147f0c",
      "babySize": "14.2 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week18.motherDataEn},
        {"title": "Baby", "contentPoints": week18.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week18.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week18.babyDataMl},
      ],
    },
    "19": {
      "week": 19,
      "title": {"en":"Tomato","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-19.png?alt=media&token=74c8a9de-f2d4-4661-8ae6-96c5da7576ae",
      "babySize": "15.3 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week19.motherDataEn},
        {"title": "Baby", "contentPoints": week19.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week19.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week19.babyDataMl},
      ],
    },
    "20": {
      "week": 20,
      "title": {"en":"Artichoke","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-20.png?alt=media&token=99364b3e-d713-4a55-a0c8-1314a9adddc0",
      "babySize": "16.4 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week20.motherDataEn},
        {"title": "Baby", "contentPoints": week20.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week20.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week20.babyDataMl},
      ],
    },
    "21": {
      "week": 21,
      "title": {"en":"Carrot","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-21.png?alt=media&token=743acd35-f3ec-4bb2-9002-332cecacb3dd",
      "babySize": "26.7 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week21.motherDataEn},
        {"title": "Baby", "contentPoints": week21.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week21.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week21.babyDataMl},
      ],
    },
    "22": {
      "week": 22,
      "title": {"en":"Papaya","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-22.png?alt=media&token=58f241a8-e192-4708-93c9-a1e29b3858b6",
      "babySize": "27.8 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week22.motherDataEn},
        {"title": "Baby", "contentPoints": week22.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week22.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week22.babyDataMl},
      ],
    },
    "23": {
      "week": 23,
      "title": {"en":"GrapeFruit","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-23.png?alt=media&token=7d828cd4-6a1e-4c16-a94e-5ada08dc7370",
      "babySize": "28.9 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week23.motherDataEn},
        {"title": "Baby", "contentPoints": week23.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week23.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week23.babyDataMl},
      ],
    },
    "24": {
      "week": 24,
      "title": {"en":"Corn on the cob","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-24.png?alt=media&token=6f9ab3fc-dc26-40d1-b17c-b445dd605c62",
      "babySize": "30 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week24.motherDataEn},
        {"title": "Baby", "contentPoints": week24.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week24.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week24.babyDataMl},
      ],
    },
    "25": {
      "week": 25,
      "title": {"en":"Rutabaga","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-25.png?alt=media&token=fb8ae70f-a1f9-4e95-bcf4-b9e272059372",
      "babySize": "34.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week25.motherDataEn},
        {"title": "Baby", "contentPoints": week25.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week25.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week25.babyDataMl},
      ],
    },
    "26": {
      "week": 26,
      "title": {"en":"Letuce","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-26.png?alt=media&token=c1cd95a9-4ba8-45bb-8195-0a6bdd3d0ed1",
      "babySize": "35.6 cmmm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week26.motherDataEn},
        {"title": "Baby", "contentPoints": week26.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week26.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week26.babyDataMl},
      ],
    },
    "27": {
      "week": 27,
      "title": {"en":"Cauliflower","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-27.png?alt=media&token=be4aeeb3-afc9-49da-ad03-ee290823cb5a",
      "babySize": "36.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week27.motherDataEn},
        {"title": "Baby", "contentPoints": week27.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week27.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week27.babyDataMl},
      ],
    },
    "28": {
      "week": 28,
      "title": {"en":"EggPlant","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-28.png?alt=media&token=ddc615d4-8fc7-4b88-a95b-a317c136d0c7",
      "babySize": "37.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week28.motherDataEn},
        {"title": "Baby", "contentPoints": week28.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week28.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week28.babyDataMl},
      ],
    },
    "29": {
      "week": 29,
      "title": {"en":"Acorn Squash","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-29.png?alt=media&token=b4ca4bab-3864-4c80-b110-d297124b080f",
      "babySize": "38.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week29.motherDataEn},
        {"title": "Baby", "contentPoints": week29.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week29.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week29.babyDataMl},
      ],
    },
    "30": {
      "week": 30,
      "title": {"en":"Cabbage","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-30.png?alt=media&token=2cf0af6d-f437-4247-9027-64a3f2aa7e96",
      "babySize": "39.9 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week30.motherDataEn},
        {"title": "Baby", "contentPoints": week30.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week30.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week30.babyDataMl},
      ],
    },
    "31": {
      "week": 31,
      "title": {"en":"Coconut","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-31.png?alt=media&token=8c8fe04a-ed83-413f-b950-3e72a30b6e78",
      "babySize": "41.1 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week31.motherDataEn},
        {"title": "Baby", "contentPoints": week31.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week31.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week31.babyDataMl},
      ],
    },
    "32": {
      "week": 32,
      "title": {"en":"Jicama","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-32.png?alt=media&token=24d98c5b-9666-47cf-b087-f4b37f26660f",
      "babySize": "42.4 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week32.motherDataEn},
        {"title": "Baby", "contentPoints": week32.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week32.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week32.babyDataMl},
      ],
    },
    "33": {
      "week": 33,
      "title": {"en":"Pinapple","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-33.png?alt=media&token=a45c5743-9b8b-4c91-8e46-64a250c6c186",
      "babySize": "43.7 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week33.motherDataEn},
        {"title": "Baby", "contentPoints": week33.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week33.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week33.babyDataMl},
      ],
    },
    "34": {
      "week": 34,
      "title": {"en":"Betternut Squash","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-34.png?alt=media&token=1e331655-77dd-4682-b7e9-c17c62b600be",
      "babySize": "45 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week34.motherDataEn},
        {"title": "Baby", "contentPoints": week34.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week34.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week34.babyDataMl},
      ],
    },
    "35": {
      "week": 35,
      "title": {"en":"Honeydew","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-35.png?alt=media&token=93b41b9d-2846-4392-a440-3397b010d5e1",
      "babySize": "46.2 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week35.motherDataEn},
        {"title": "Baby", "contentPoints": week35.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week35.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week35.babyDataMl},
      ],
    },
    "36": {
      "week": 36,
      "title": {"en":"Swiss Chad","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-36.png?alt=media&token=53564161-a016-418c-8c79-de5b6487549d",
      "babySize": "47.4 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week36.motherDataEn},
        {"title": "Baby", "contentPoints": week36.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week36.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week36.babyDataMl},
      ],
    },
    "37": {
      "week": 37,
      "title": {"en":"Winter Melon","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-37.png?alt=media&token=b84b9d5b-cdd9-47a7-8070-6e648c20c302",
      "babySize": "48.6 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week37.motherDataEn},
        {"title": "Baby", "contentPoints": week37.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week37.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week37.babyDataMl},
      ],
    },
    "38": {
      "week": 38,
      "title": {"en":"Rhubarb","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-38.png?alt=media&token=e8836d6d-602e-409a-8142-f5002fa6011c",
      "babySize": "49.8 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week38.motherDataEn},
        {"title": "Baby", "contentPoints": week38.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week38.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week38.babyDataMl},
      ],
    },
    "39": {
      "week": 39,
      "title": {"en":"Watermelon","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-39.png?alt=media&token=4f0c40c5-a0e6-4f76-b763-165786bf5e53",
      "babySize": "50.7 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week39.motherDataEn},
        {"title": "Baby", "contentPoints": week39.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week39.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week39.babyDataMl},
      ],
    },
    "40": {
      "week": 40,
      "title": {"en":"Pumpkin","ml":"malayalam"},
      "imgUrl": "https://firebasestorage.googleapis.com/v0/b/tarattu-production.appspot.com/o/Week-by-Week%2Fbaby-growth-40.png?alt=media&token=af606614-eeab-436e-ae5d-c0ea5d04cb05",
      "babySize": "51.2 cm",
      "heartBeat": "140-170/min",
      "en": [
        {"title": "Mother", "contentPoints": week40.motherDataEn},
        {"title": "Baby", "contentPoints": week40.babyDataEn},
      ],
      "ml": [
        {"title": "അമ്മ", "contentPoints": week40.motherDataMl},
        {"title": "കുഞ്ഞ്", "contentPoints": week40.babyDataMl},
      ],
    },
  };

}
