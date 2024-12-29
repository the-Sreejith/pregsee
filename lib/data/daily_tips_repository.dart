// 🎯 Dart imports:
import 'dart:developer';
// import 'dart:math';

// 📦 Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

// 🌎 Project imports:
import '/Models/DailyTips.dart';

class DailyTipsRepository {
  Future<List<DailyTips>> getRandomDailyTip() async {
    // List<String> docIdList = [];
    // DailyTips _rtnValue;
    // await FirebaseFirestore.instance.doc('DailyTips/metadata').get().then((value) {
    //   docIdList = value.data()['docIdList']?.cast<String>()?.toList();
    // }).onError((error, stackTrace) {
    //   print(error);
    // });
    // if (docIdList.isNotEmpty) {
    //   await FirebaseFirestore.instance
    //       .doc('DailyTips/${_getRandomIdFromList(docIdList)}')
    //       .get()
    //       .then((value) {
    //         _rtnValue = DailyTips.fromData(value.data());
    //       })
    //       .onError((error, stackTrace) => null);
    // }
    // return _rtnValue;
    List<DailyTips> _rtnValue = [];
    await FirebaseFirestore.instance
        .collection('DailyTips')
        .get()
        .then((value) {
      value.docs.forEach((element) {
        _rtnValue.add(DailyTips.fromData(element.data()));
      });
    }).onError((error, stackTrace) {
      log('${error.toString()} \n Happed in Daily tips repository ');
    });
    return _rtnValue;
  }

  setDailyTip() async {
    FirebaseFirestore.instance
        .doc('DailyTips/001')
        .set(repoData)
        .then((value) => print('001 updated successfully'));
    FirebaseFirestore.instance
        .doc('DailyTips/002')
        .set(repoData)
        .then((value) => print('001 updated successfully'));
    FirebaseFirestore.instance
        .doc('DailyTips/003')
        .set(repoData)
        .then((value) => print('001 updated successfully'));
    FirebaseFirestore.instance
        .doc('DailyTips/004')
        .set(repoData)
        .then((value) => print('001 updated successfully'));
    FirebaseFirestore.instance
        .doc('DailyTips/005')
        .set(repoData)
        .then((value) => print('001 updated successfully'));
  }

  // String _getRandomIdFromList(List<String> list) {
  //   final random = new Random();
  //   var i = random.nextInt(list.length);
  //   return list[i];
  // }
}

// const repoData =  {
//   "heading":"കുഞ്ഞിന്റെ അനക്കങ്ങൾ എണ്ണുന്ന വിധം",
//   "contents":[
//     "ഗർഭത്തിൻറെ അവസാനഘട്ടത്തിൽ കുഞ്ഞിൻറെ ചലനങ്ങൾ എണ്ണി നോക്കുന്നത് വളരെ പ്രധാനപ്പെട്ട ഒന്നാണ്! ഇത് കുഞ്ഞിൻറെ ആരോഗ്യസ്ഥിതി മനസ്സിലാക്കുന്നതിന് വളരെയധികം സഹായിക്കുന്നു.",
//     "നല്ല ആരോഗ്യമുള്ള കുട്ടികൾ, ഗർഭാശയത്തിനുള്ളിൽ കിടന്ന് നന്നായി ചലിക്കുന്നു. ഏതെങ്കിലും തരത്തിൽ കുഴപ്പമുണ്ടെങ്കിൽ, കുഞ്ഞിന് വളരെ കുറച്ച് അനക്കങ്ങളേ ഉണ്ടാവുകയുള്ളൂ.",
//     "കുഞ്ഞിൻറെ ചലനങ്ങൾ താഴെ കാണും വിധം എണ്ണാം.",
//     "നിങ്ങൾ രാവിലെ ഉണർന്നതിനുശേഷം, ഉച്ചയ്ക്ക് 12 മണി വരെ കുറഞ്ഞത് പത്ത് അനക്കങ്ങൾ എണ്ണാൻ കഴിയും.",
//     "12 മണി മുതൽ വൈകുന്നേരം 6 മണി വരെയുള്ള സമയത്ത്, വീണ്ടും 10 തവണയെങ്കിലും അനക്കം ഉണ്ടാവും. കൂടുതൽ കുട്ടികളും, വൈകുന്നേരങ്ങളിലാണ് കൂടുതൽ ഊർജ്ജസ്വലമായി കാണപ്പെടുക.",
//     "",
//     "",
//   ],
// };
const repoData = {
  "heading": "പുറംവേദന ഒഴിവാക്കാനുള്ള മാർഗങ്ങൾ",
  "contents": [
    "നിങ്ങൾക്ക് എവിടെയെങ്കിലും അധികനേരം നിൽക്കേണ്ടി വന്നാൽ, ഉയരം വളരെ കുറവുള്ള ഒരു സ്റ്റൂളിൽ, ഒരു പാദം ഉയർത്തിവച്ച് നിൽക്കാം. ഇത് സമ്മർദ്ദം കുറയ്ക്കാൻ സഹായിക്കും.",
    "എല്ലായ്പ്പോഴും കസേരയിൽ ചാഞ്ഞിരിക്കുന്നത് മുതുകിന് ഒരു താങ്ങ് ലഭിക്കുവാൻ നല്ലതാണ്. അല്ലാത്തപക്ഷം പുറകിൽ ഒരു തലയണ വെച്ച് ചാരി ഇരിക്കുക.",
    "വേദന വല്ലാതെ വഷളായാൽ, ചൂടുവെള്ളം നിറച്ച് കുപ്പിയോ, ഐസ് നിറച്ച സഞ്ചിയോ വേദനയുള്ള സ്ഥലത്ത് വെച്ചു കൊടുക്കുന്നത് ആശ്വാസകരമാണ്.",
    "ഭർത്താവിനോട് മുതുക് തടവിത്തരാൻ പറയുക.",
    "നിങ്ങളുടെ ഡോക്ടറോട്, ഗർഭത്തിന് ദോഷകരമല്ലാത്ത വേദനസംഹാരികൾ ആവശ്യപ്പെടാം."
  ]
};
