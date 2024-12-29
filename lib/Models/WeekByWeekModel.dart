class WeekByWeekModel {
  final String title, imgUrl;
  final List<String> motherDataEn, motherDataMl, babyDataEn, babyDataMl;

  const WeekByWeekModel(
      {this.title,
      this.imgUrl,
      this.motherDataEn,
      this.motherDataMl,
      this.babyDataEn,
      this.babyDataMl});
}

const WeekByWeekModel week1 = WeekByWeekModel(
  title: 'Week 1',
  imgUrl:
      'https://firebasestorage.googleapis.com/v0/b/fir-app-f59b1.appspot.com/o/Thumpnails%2Fimage.png?alt=media&token=c644d3bb-cd0d-448e-ae91-7ccb9a554317',
  motherDataEn: [
    'Although you are in week one of your pregnancy, you are not yet officially pregnant.',
    'Most pregnancies last around 40 weeks (or 38 weeks from conception), so typically the best way to estimate your due date is to count 40 weeks, or 280 days, from the first day of your last menstrual period (LMP).',
    'Your uterus is thickening to get fertilised egg implant.',
    'It\'s time to improve your diet and supplement with vitamins like folic acid and iron.',
    'Now is the time to be patient and take good care of yourself. You still have another 40 weeks to go!'
  ],
  motherDataMl: [
    'ഗര്ഭധാരണത്തിന്റെ ആദ്യത്തെ ആഴ്ച ആണെങ്കിലും ഇപ്പോഴും നമ്മൾ pregnant ആയി എന്ന് പറയാറായിട്ടില്ല',
    'മിക്ക ഗർഭധാരണങ്ങളും ഏകദേശം 40 ആഴ്ചകൾ (അല്ലെങ്കിൽ ഗർഭധാരണത്തിൽ നിന്ന് 38 ആഴ്ചകൾ) നീണ്ടുനിൽക്കും, അതിനാൽ സാധാരണയായി നിങ്ങളുടെ Due Date കണക്കാക്കാനുള്ള ഏറ്റവും നല്ല മാർഗം നിങ്ങളുടെ അവസാന ആർത്തവത്തിൻറെ (എൽ‌എം‌പി) ആദ്യ ദിവസം മുതൽ 40 ആഴ്ച അഥവാ 280 ദിവസങ്ങൾ കൂട്ടുക എന്നതാണ്.',
    'ഈസമയം തൊട്ടു നിങ്ങളുടെ ഗർഭപാത്രം പതിയെ ശക്തി പ്രാപിക്കാൻ തുടങ്ങുന്നു.',
    'ഈ സമയം തൊട്ട് ഫോളിക് ആസിഡ് , അയോൺ ഗുളികകൾ കഴിച്ചു തുടങ്ങണം',
    'ക്ഷമയോടെ സ്വയം പരിപാലിക്കേണ്ട സമയമാണിത്. ഇനി വരുന്ന ഒമ്പത് മാസങ്ങൾ നിങ്ങക്ക് സന്തോഷകരമായ നല്ലൊരു അനുഭവം നൽകട്ടെ'
  ],
);

const WeekByWeekModel week2 = WeekByWeekModel(
  title: 'Week 2',
  // imgUrl:
  //     'https://firebasestorage.googleapis.com/v0/b/fir-app-f59b1.appspot.com/o/Thumpnails%2Fimage.png?alt=media&token=c644d3bb-cd0d-448e-ae91-7ccb9a554317',
  motherDataEn: [
    'You still don\'t feel any different, but you might be ovulating.',
    'you could notice some light spotting. It might look like your period, but it\'s actually a sign that the fertilised egg has attached itself to the wall of your uterus.',
    'Your Estrogen level will shoot up and during this time you will feel immensely energised'
  ],
  motherDataMl: [
    'നിങ്ങള്ക്ക് ഇപ്പോഴും വലിയ വ്യത്യാസം ഒന്നും തോന്നുകയില്ല പക്ഷെ നിങ്ങൾ ഇപ്പോൾ അണ്ഡോല്പാദനം നടത്തുന്നുണ്ടാവാം',
    'ചിലപ്പോൾ ചെറിയ രീതിയിൽ സ്‌പോട്ടിങ് ( പെരിയഡ്‌സ് പോലെ ) കണ്ടേക്കാം ഇത് പെരിയഡ്‌സ് പോലെ തോന്നിയേക്കാം പക്ഷെ അണ്ഡം നിങ്ങളുടെ ഗർഭപാത്രത്തിന്റെ ഭിത്തിയിൽ ഒട്ടിച്ചേർന്നു എന്നതിന്റെ ഒരു ശുഭ ലക്ഷണം ആണ് ഇത്',
    'ശരീരത്തിൽ ഈസ്റ്റര്ജന് ഹോർമോൺ ഇപ്പോൾ കൂടുതൽ ഉല്പാദിപ്പിക്കും ഈ സമയത് നിങ്ങള്ക്ക് നല്ല ഉന്മേഷം തോന്നിയേക്കാം',
  ],
);

const WeekByWeekModel week3 = WeekByWeekModel(
  title: 'Week 3',
  // imgUrl:
  //     'https://firebasestorage.googleapis.com/v0/b/fir-app-f59b1.appspot.com/o/Thumpnails%2Fimage.png?alt=media&token=c644d3bb-cd0d-448e-ae91-7ccb9a554317',
  motherDataEn: [
    'Congratulations you are now pregnant.',
    'Sperm and egg have officially merged into one single cell, called a zygote.',
    'Your and your partner\'s chromosomes are combining to determine your baby\'s gender, hair, and eye colour, as well as their developing personality!',
    'Zygote will keep dividing, Two cells will become four, four will become eight, and so on. These cells will eventually create every organ in your baby\'s body.'
  ],
  motherDataMl: [
    'അഭിനന്ദനങ്ങൾ നിങ്ങൾ ഇപ്പോൾ ഒരു ഗർഭിണിയാണ്.',
    'ബീജവും അണ്ഡവും കൂടിച്ചേർന്ന് ഒരു കോശമായി പരിണമിച്ചു കഴിഞ്ഞിരിക്കുന്നു ഇതിനെ സായ്‌ഗോട്ട് എന്നാണ് വിളിക്കുന്നത്',
    'നിങ്ങളുടെയും പങ്കാളിയുടെയും ക്രോമോസോമുകൾ കൂടിച്ചേർന്ന് പിന്നീട് ഇതിന്റെ അടിസ്ഥാനത്തിലാണ് ആണ്കുട്ടിയോ പെൺകുട്ടിയെ ഉണ്ടാകുന്നത് . അതുപോലെ തന്നെ ഉണ്ണിയുടെ മുടി , നിറം ഒരുപരിധിവരെ വ്യക്തിത്വം ഇതെല്ലാം ഈ ക്രോമോസോമുകൾ ആണ് നിശ്ചയിക്കുന്നത്',
    'സായ്‌ഗോട്ട് പതിയെ പതിയെ വിഭജിച്ചുകൊണ്ടിരിക്കും , ആദ്യം ഒറ്റ കോശമായിരുന്നത് രണ്ടാവും പിന്നീട് അത് നാലാവും, നാല് എട്ടുആവും അങ്ങിനെ അങിനെ ഈ ഒറ്റകോശം വിഭജിച്ചു ഉണ്ണിയുടെ ശരീരത്തിലെ എല്ലാ അവയവങ്ങളും ഉണ്ടാക്കിയെടുക്കുന്നു'
  ],
);

const WeekByWeekModel week4 = WeekByWeekModel(
  title: 'Week 4',
  imgUrl:
      'https://firebasestorage.googleapis.com/v0/b/fir-app-f59b1.appspot.com/o/Thumpnails%2Fweek_4.png?alt=media&token=edfc2121-5a02-46fc-8129-bb5fb0d5528a',
  motherDataEn: [
    'Although you are in week one of your pregnancy, you are not yet officially pregnant.',
    'Most pregnancies last around 40 weeks (or 38 weeks from conception), so typically the best way to estimate your due date is to count 40 weeks, or 280 days, from the first day of your last menstrual period (LMP).',
    'Your uterus is thickening to get fertilised egg implant.',
    'It\'s time to improve your diet and supplement with vitamins like folic acid and iron.',
    'Now is the time to be patient and take good care of yourself. You still have another 40 weeks to go!'
  ],
  motherDataMl: [
    'ഗര്ഭധാരണത്തിന്റെ ആദ്യത്തെ ആഴ്ച ആണെങ്കിലും ഇപ്പോഴും നമ്മൾ pregnant ആയി എന്ന് പറയാറായിട്ടില്ല',
    'മിക്ക ഗർഭധാരണങ്ങളും ഏകദേശം 40 ആഴ്ചകൾ (അല്ലെങ്കിൽ ഗർഭധാരണത്തിൽ നിന്ന് 38 ആഴ്ചകൾ) നീണ്ടുനിൽക്കും, അതിനാൽ സാധാരണയായി നിങ്ങളുടെ Due Date കണക്കാക്കാനുള്ള ഏറ്റവും നല്ല മാർഗം നിങ്ങളുടെ അവസാന ആർത്തവത്തിൻറെ (എൽ‌എം‌പി) ആദ്യ ദിവസം മുതൽ 40 ആഴ്ച അഥവാ 280 ദിവസങ്ങൾ കൂട്ടുക എന്നതാണ്.',
    'ഈസമയം തൊട്ടു നിങ്ങളുടെ ഗർഭപാത്രം പതിയെ ശക്തി പ്രാപിക്കാൻ തുടങ്ങുന്നു.',
    'ഈ സമയം തൊട്ട് ഫോളിക് ആസിഡ് , അയോൺ ഗുളികകൾ കഴിച്ചു തുടങ്ങണം',
    'ക്ഷമയോടെ സ്വയം പരിപാലിക്കേണ്ട സമയമാണിത്. ഇനി വരുന്ന ഒമ്പത് മാസങ്ങൾ നിങ്ങക്ക് സന്തോഷകരമായ നല്ലൊരു അനുഭവം നൽകട്ടെ'
  ],
  babyDataEn: [
    'Your baby may be big enough to see on ultrasound now, but just barely. They are smaller than a grain of rice.',
    'A fluid-filled cushion called the amniotic sac is forming. It will surround and protect your baby while they grow.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞു ഇപ്പോൾ കഷ്ടിച്ച് അൾട്രാ സൗണ്ട് സ്കാനിങ്ങിൽ കാണാൻ കഴിയുന്ന വലുപ്പം ആയിട്ടുണ്ട് . എന്നാലും ഇപ്പോൾ അതിന് ഒരു അരിമണിയോളം വലിപ്പം മാത്രമേ ഉണ്ടാവൂ',
    'ദ്രാവകം നിറഞ്ഞ ഒരു സഞ്ചിക്കുള്ളിലാണ് എപ്പോൾ എംബ്രിയോ ഉണ്ടാകുക, ഇത് കുഞ്ഞു വളരുംതോറും അതിന് സംരക്ഷണം നൽകുന്നു'
  ],
);

const WeekByWeekModel week5 = WeekByWeekModel(
  title: 'Week 5',
  imgUrl: 'https://kidshealth.org/EN/images/galleries/PregCal-Week05-enGL.jpg',
  motherDataEn: [
    'Your breasts during early pregnancy may feel sore, sensitive, or tender to the touch',
    'You may urinate more frequently.',
    'You may feel very tired.',
    'You may have nausea and vomiting. mostly in morning but for some it lasts all day long. And for some, this wont show up at all.',
    'Please avoid undercooked meats ,fish or eggs.'
  ],
  motherDataMl: [
    'ഈ സമയത്ത് സ്തനങ്ങളിൽ പ്രെത്യേകിച്ഛ് മുലക്കണ്ണിയുടെ ഭാഗങ്ങളിൽ വേദന അനുഭവ പെട്ടേക്കാം',
    'നിങ്ങൾക്ക് കൂടുതൽ തവണമൂത്രമൊഴിക്കാൻ തോന്നിയേക്കാം',
    'കൂടുതൽ ക്ഷീണം അനുഭവപ്പെട്ടേക്കാം',
    'നിങ്ങൾക്ക് ഓക്കാനം, ഛർദ്ദി എന്നിവ ഉണ്ടാകാൻ സാധ്യത ഉണ്ട് . ചിലർക്ക് സാധാരണ രാവിലെയാണ് ഇത് അനുഭവ പെടാറുള്ളത് ചിലർക്ക് ഇത് ദിവസം മുഴുവൻ നീണ്ട് നിന്നേക്കാം. മറ്റുചിലർക്കാകട്ടെ ഇതൊന്നും തോന്നില്ല',
    'ശരിയായി വേവിക്കാത്ത മുട്ട ഇറച്ചി മീൻ എന്നിവ കഴിക്കുന്നത് ഈ സമയത്ത് ഒഴിവാക്കാൻ ശ്രമിക്കുക'
  ],
  babyDataEn: [
    'Your baby is now an embryo with a tiny tail at the end of its developing spine that can hardly be seen by naked eyes.',
    'baby\'s heart, brain, spinal cord, muscle, and bones are beginning to develop'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ് ഇപ്പോഴും വളരെ ചെറിയതാണ് നഗ്നനേത്രംകൊണ്ട് കാണാൻ വളരെ ബുദ്ധിമുട്ടാണ്',
    'കുഞ്ഞിന്റെ ഹൃദയം, തലച്ചോറ്, സുഷുമ്‌നാ, പേശി, അസ്ഥികൾ എന്നിവ ഉണ്ടാകാൻ തുടങ്ങിക്കഴിഞ്ഞു'
  ],
);

const WeekByWeekModel week6 = WeekByWeekModel(
  title: 'Week 6',
  // imgUrl: '',
  motherDataEn: [
    'Its been over a month the baby is growing inside you. No doubt you are going to be a great mom :-)',
    'You may have very low energy, feel tired and sleepy. Dont worry this is perfectly normal.',
    'Be careful when you stand up for long time, you may experience dizziness or even faint. Avoid standing near open doors of moving vehicles and train.',
    'Most of the women become sensitive to some smells. And it is common to feel nauseous or even end up vomiting while cooking because of the smells. Hold on tight this will reduce while you progress in your pregnancy.',
  ],
  motherDataMl: [
    'ഒരു മാസത്തിലേറെയായി കുഞ്ഞ് നിങ്ങളുടെ ഉള്ളിൽ വളർന്ന് തുടങ്ങിയിട്ട്, ഉണ്ണിയുടെ മുഖം കാണാൻ ഇനി എട്ടു മാസത്തെ കാത്തിരിപ്പ് കൂടി..',
    'ഈസമയത്ത് നിങ്ങൾക്ക് ഉൻമേഷം കുറവായിരിക്കും ക്ഷീണവും ഏപ്പോഴും ഉറങ്ങണം എന്ന തോന്നലും ഉണ്ടാവാം.വിഷമിയ്ക്കേണ്ട ഇതെല്ലാം വളരെ സാദാരണം ആണ്',
    'ശ്രദ്ധിക്കുക, നിങ്ങൾ കുറേനേരം നിൽക്കുകയാണെങ്കിൽ, നിങ്ങൾക്ക് തലകറക്കം അല്ലെങ്കിൽ ക്ഷീണം അനുഭവപ്പെടാം. ചലിക്കുന്ന വാഹനങ്ങളുടെയും ട്രെയിനിന്റെയും തുറന്ന വാതിലുകൾക്ക് സമീപം നിൽക്കുന്നത് ഒഴിവാക്കുക.',
    'ഈസമയത് ചില മണങ്ങൾ ( smell ) ഇഷ്ടപ്പെടാതെ വരും, പാചകം ചെയ്യുമ്പോൾ ഓക്കാനം അല്ലെങ്കിൽ ഛർദ്ദി ഉണ്ടാകുന്നത് സാധാരണമാണ്. കുറച്‌ ആഴ്ചകൾ ഇത് ഉണ്ടാകുമെങ്കിലും പതിയെ പതിയെ ഇത് കുറഞ്ഞുവരും'
  ],
  babyDataEn: [
    'Hurray!!! your baby\'s heart has begun to beat. If you are having an ultrasound scan, you can listen to the beautiful sound of your baby\'s heart beat, its a different feeling.',
    'There are dark spots on your baby\'s face. This is where your baby\'s eyes and nostrils are starting to form.Inside the tiny mouth, the tongue and vocal cords are beginning to develop.',
    'The baby is about the size of your little finger nail',
  ],
  babyDataMl: [
    'അഭിനന്ദനങ്ങൾ നിങ്ങളുടെ കുട്ടിയുടെ ഹ്രദയം ഇപ്പോൾ മിടിച്ചു തുടങ്ങിയിട്ടുണ്ടാവും. അൾട്രാ സൗണ്ട് സ്കാൻ ചെയ്യുമ്പോൾ ഈ മനോഹരമായ ശബ്ദം നിങ്ങൾക്ക് കേൾക്കാൻ സാദിക്കും ..ആദ്യമായി സ്വന്തം കുഞ്ഞിന്റെ ഹ്രദയമിടിപ്പ്‌ കേൾക്കുക എന്നുള്ളത് നിങ്ങൾക്ക് തീർച്ചയായും ഒരു നല്ല അനുഭവം സമ്മാനിക്കും',
    'രണ്ട് ഇരുണ്ട കുത്തുകളായി തുടങ്ങി പതിയെ പതിയെ അത് കുഞ്ഞിന്റെ കണ്ണുകളും മുക്കുകളുമായി മാറുന്നു.ഇപ്പോഴുള്ള വളരെ വളരെ ചെറിയ വയ്ക്കുള്ളിൽ നാക്കും ശബ്ദ നാഡിയും രൂപം പ്രാപിച്ചുതുടങ്ങിയിരിക്കുന്നു',
    'നിങ്ങളുടെ കയ്യിലെ ചെരിവിരലിലെ നഖത്തിനോളം വലുതായിരിക്കും ഇപ്പൊ നിങ്ങളുടെ കുഞ്'
  ],
);

const WeekByWeekModel week7 = WeekByWeekModel(
  title: 'Week 7',
  // imgUrl: '',
  motherDataEn: [
    'Finally time for some glow!!!. You will be less tired by now and will start to get the pregnancy glow in your face.',
    'Due to hormonal changes some women may experience a sudden burst of pimples on their face, back and chest. Don\'t be alarmed, this is very normal.',
    'You wont feel like eating at all but some women experience feeling hungry all the time.'
        'Some may find it difficult to drink any liquids including water.',
    'Constipation is quite common at this time due to poor intake of food and fluids. Hence try to drink water and eat high fibre food to improve your digestion.',
    'You are still too early in your pregnancy to show a baby bump but dont worry... you will soon start showing.',
    'Dont be surprised if you lose some weight at this time. Consider it the calm before the storm. You will gain weight super fast once you progress in the pregnancy.',
  ],
  motherDataMl: [
    'ഇതാ നിങ്ങൾ തിളങ്ങുകയായി. ഗർഭിണിയായതിൻറെ പ്രത്യേക തിളക്കം നിങ്ങളുടെ മുഖത്ത് വിടരാൻ തുടങ്ങിയിരിക്കുന്നു. ക്ഷീണവും മാറിത്തുടങ്ങി.',
    'ചില സ്ത്രീകൾക്ക് കൗമാരകാലത്തെ പ്പോലെ മുഖക്കുരു ഉണ്ടാവാറുണ്ട്. സമാനരീതിയിൽ മാറിലും മുതുകിലും കുരുക്കൾ വരുന്നതും സാധാരണയാണ്. ഹോർമോണുകളുടെ മാറ്റം കാരണമാണ് ഇങ്ങനെ ഉണ്ടാവുന്നത്. പരിഭ്രമിക്കേണ്ട.',
    'ഈ സമയത്ത് ഭക്ഷണം കഴിക്കാൻ വളരെ ബുദ്ധിമുട്ട് അനുഭവപ്പെടും. എന്നാൽ ചിലർക്ക് എപ്പോഴും വിശപ്പ് തോന്നുകയും ചെയ്യാം.',
    'ചില സ്ത്രീകൾക്ക് വെള്ളം പോലുള്ള ദ്രാവകങ്ങൾ കുടിക്കാൻ പോലും ബുദ്ധിമുട്ട് അനുഭവപ്പെടാറുണ്ട്.',
    'ഇങ്ങനെയുള്ള അവസരങ്ങളിൽ മലബന്ധം ഉണ്ടാവുന്നത് സാധാരണയാണ്. ഇതൊഴിവാക്കാൻ, ധാരാളം വെള്ളം കുടിക്കാനും ദഹനത്തെ സഹായിക്കുന്ന നാരടങ്ങിയ ഭക്ഷണങ്ങൾ കഴിക്കാനും ശ്രദ്ധിക്കണം.',
    'എന്തേ വയർ വളരാത്തത്" എന്നാലോചിച്ച് വിഷമിക്കേണ്ട. നിങ്ങൾ ഇപ്പോഴും ഗർഭത്തിൻറെ ആദ്യഘട്ടത്തിലാണ്. വരും ആഴ്ചകളിൽ കുഞ്ഞിൻറെ വളർച്ചയോടൊപ്പം നിങ്ങളുടെ വയറും വളരും.',
    'ഇപ്പോൾ നിങ്ങളുടെ ശരീരഭാരം ഒന്ന് കുറഞ്ഞേക്കാം,പേടിക്കേണ്ട. ഇത് കൊടുങ്കാറ്റിനുമുമ്പുള്ള ശാന്തതയായി കണ്ടാൽ മതി. കാരണം പോകെപ്പോകെ നഷ്ടപ്പെട്ടതിൻറെ ഇരട്ടി ഭാരം നിങ്ങൾ വേഗത്തിൽ തന്നെ തിരിച്ചു പിടിക്കും'
  ],
  babyDataEn: [
    'Your baby\'s heart beats are up and beating regularly at 140 - 150 beats per minute.',
    'Baby\'s hands have started to develop as their arm buds are grown now.',
    'Even though your baby is still the size of your fingernail (5-7mm long) its brain, intestines, pituitary gland and pancreas are growing.',
    'Baby\'s nasal pits, ears and lens of the eyes are also developing in full swing.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ അരുമയുടെ ഹൃദയം ഇപ്പോൾ മിനിറ്റിൽ 140 മുതൽ 150 പ്രാവശ്യം വരെ മിടിച്ചു തുടങ്ങിയിരിക്കുന്നു.',
    'കുഞ്ഞിൻറെ കൈകൾ രൂപം പ്രാപിച്ച വളർന്നു വളർന്നു തുടങ്ങിയിട്ടുണ്ട് കുഞ്ഞിൻറെ വലുപ്പം ഇപ്പോഴും കൈവിരൽ ഇപ്പോഴും കൈവിരൽ നഖത്തിൻറെ അത്രയും തന്നെ ആയിരിക്കും.',
    'അതുപോലെ തന്നെ കുട്ടിയുടെ മൂക്ക്, ചെവികൾ, കണ്ണിലെ ലെൻസ് എന്നിവയും ഊർജ്ജസ്വലമായ വളർച്ചയിൽ ആണ്.'
  ],
);

const WeekByWeekModel week8 = WeekByWeekModel(
  title: 'Week 8',
  // imgUrl: '',
  motherDataEn: [
    'At this point your uterus is growing to support your baby. In an internal examination your obstetrician can feel your uterus to be enlarged.',
    'Your breasts will start to become heavier and larger, sometimes even tender which can cause sensitivity on touch.',
    'You can notice some changes in your nipples as well, it may become darker and the little bumps around the areola will become more visible.',
    'As your uterus is growing it will put a pressure on your bladder causing you to urinate frequently.',
    'Acidity and heartburn is quite common at this time around which may continue throughout your pregnancy.',
    'Frequent Headaches may also occur, so no need to worry. It is safe to take paracetamol for pain relief but always remember to ask your doctor before taking any medications.',
  ],
  motherDataMl: [
    'ഇപ്പോൾ നിങ്ങളുടെ ഗർഭപാത്രം കുഞ്ഞിൻറെ വളർച്ചയ്ക്ക് ആവശ്യമായ രീതിയിൽ വികസിക്കാൻതുടങ്ങിയിരിക്കുന്നു.ഒരു ആന്തരിക പരിശോധനയിലൂടെ നിങ്ങളുടെ ഡോക്ടർക്ക് ഇത് കൃത്യമായി മനസ്സിലാക്കാൻ സാധിക്കും.',
    'നിങ്ങളുടെസ്തനങ്ങൾക്ക് കനവും വലുപ്പവും കൂടാൻ തുടങ്ങിയിട്ടുണ്ടാവും .ചിലപ്പോൾ കൂടുതൽ സെൻസിറ്റീവായി അനുഭവപ്പെടാം.',
    'ഈ സമയം നിങ്ങളുടെ മുലക്കണ്ണുകളിൽ വ്യക്തമായ മാറ്റം കാണാൻ സാധിക്കും.കറുപ്പുനിറം കൂടിക്കൂടി വരികയും മുലക്കണ്ണിനു ചുറ്റുമുള്ള ചർമഭാഗത്ത് (areola) ചെറു കുരുക്കൾ പ്രത്യക്ഷപ്പെടുകയും ചെയ്യാം.',
    'വളർന്നുകൊണ്ടിരിക്കുന്ന ഗർഭപാത്രം നിങ്ങളുടെ മൂത്രാശയത്തിൽ സമ്മർദ്ദം ചെലുത്തുന്നതിനാൽ ഇടയ്ക്കിടെ മൂത്രമൊഴിക്കാൻ തോന്നും.',
    'പുളിച്ചുതികട്ടലും നെഞ്ചെരിച്ചിലും ഈ സമയത്ത് സർവ്വസാധാരണമാണ്.ചിലപ്പോൾ ഇത് ഗർഭകാലത്ത് ഉടനീളം ഉണ്ടായേക്കാം.',
    'ഇടയ്ക്കിടെ ഉണ്ടാവുന്ന തലവേദനയും സ്വാഭാവികമാണ്. അതുകൊണ്ട് പേടിക്കേണ്ടതില്ല.നിങ്ങളുടെ ഡോക്ടറുടെ നിർദ്ദേശപ്രകാരം മാത്രം ഗുളിക കഴിക്കുക.'
  ],
  babyDataEn: [
    'Your baby might be 2.5 cm long but it is has got 10,000 times bigger than it was during conception. Which is great news!!!!!',
    'Gender assignment time. Your baby\'s reproductive organs will become either testes or ovaries this week which means your baby will become a boy or a girl at this point.',
    'Baby\'s eyes are formed but it is covered by a fold of skin. The eyelids are not yet ready to be open.',
    'Baby\'s arms and legs are growing longer and it can now bend its arms at the elbow.',
    ' Tips of its nose is now visible and the teeth is also forming under the baby\'s gums.',
    'You might be just 8 weeks in and feel nothing but the fascinating fact is that your baby is actually moving around in your uterus.',
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞിൻറെ ഇപ്പോഴത്തെ വലിപ്പം ഏകദേശം 2.5 സെൻറീമീറ്റർ ആണ് .എങ്കിലും ഭ്രൂണം രൂപംകൊണ്ടപ്പോൾ ഉള്ളതിനേക്കാൾ പതിനായിരം മടങ്ങ് കൂടുതലാണ് ഇത്!അത്ഭുതം തോന്നുന്നില്ലേ ....',
    'ഇതാ, നിങ്ങളുടെ കുട്ടി ആണോ പെണ്ണോ എന്ന് തീരുമാനിക്കപ്പെടുന്ന സ ന്ദർഭമാണിത്!കുഞ്ഞിൻറെ ജനനേന്ദ്രിയങ്ങൾ രൂപപ്പെടുന്ന നിർണായക നിമിഷങ്ങളിൽ ആണ് നിങ്ങൾ ഇപ്പോൾ.',
    'കണ്ണുകൾ രൂപപ്പെട്ടിട്ടുണ്ട് എങ്കിലും അത് തൊലിച്ചുരുളിനുള്ളിലാണ് .കൺപോളകൾ തുറക്കാറായിട്ടില്ല.',
    'കുഞ്ഞിൻറെകൈകാലുകൾ വളർന്ന് കൂടുതൽ നീളം ഉള്ളതായി തീർന്നിരിക്കും. മുട്ടുകൾ മടക്കാനും നിവർത്താനും കുഞ്ഞിന് ഇപ്പോൾ കഴിയും.',
    'കുട്ടിയുടെ മൂക്കിൻറെ തുമ്പ് ഉയർന്നുവന്നിട്ടുള്ളത് ആയി കാണാം.പാൽ പല്ലുകളും മോണക്കുള്ളിൽ മുളച്ചു തുടങ്ങിയിട്ടുണ്ട്.',
    'കുഞ്ഞ് ഗർഭപാത്രത്തിനുള്ളിൽ ചലിക്കാൻ തുടങ്ങി കഴിഞ്ഞു.പക്ഷേ ഈ സമയത്ത് നിങ്ങൾക്ക് അത് അനുഭവിച്ച് അറിയാൻ കഴിയില്ല എന്ന് മാത്രം.'
  ],
);

const WeekByWeekModel week9 = WeekByWeekModel(
  title: 'Week 9',
  // imgUrl: '',
  motherDataEn: [
    'Good News!!! You can finally keep some food in your belly, your\'e appetite will start to improve now.',
    'Some women might experience nausea for another month or so. Hence do not get alarmed this is very normal.',
    'During this time mostly your weight will stabilise but don\'t feel surprised if you continue to lose weight or on the other hand gain weight this is also very normal.',
    'Try using a soft brush to brush your teeth because hormonal changes makes your gum softer and thicker. Rough brush can cause gum bleeding while you brush so try switching.',
  ],
  motherDataMl: [
    'ഇതാ ഒരു ശുഭ വാർത്ത.ആഹാരത്തിനോട് നിങ്ങൾക്ക് ഉണ്ടായിരുന്ന മടുപ്പും വെറുപ്പും കുറഞ്ഞുതുടങ്ങും.വിശപ്പും ദാഹവും ഒക്കെ സാധാരണ പോലെ അനുഭവപ്പെട്ടു തുടങ്ങും.',
    'ചിലർക്ക് മനംപുരട്ടലും ഓക്കാനവും ഒക്കെ ചില ആഴ്ചകളിലേക്കും കൂടി നീണ്ടു നിൽക്കാറുണ്ട്.നിങ്ങൾക്ക് അങ്ങനെ ഉണ്ടായാൽ ഭയപ്പെടേണ്ടതില്ല.',
    'ഈ സമയങ്ങളിൽ നിങ്ങളുടെ ശരീരഭാരം മിക്കവാറും സ്ഥിരത കൈവരിക്കും.അങ്ങനെ ആയില്ലെങ്കിലും പരിഭ്രമിക്കേണ്ടതില്ല.ഒരു കയറ്റത്തിന് ഒരു ഇറക്കം ഉണ്ടല്ലോ;നഷ്ടപ്പെട്ട ശരീരഭാരം വരും ആഴ്ചകളിൽ നിങ്ങൾ തിരിച്ചുപിടിക്കുക തന്നെ ചെയ്യും; പലിശസഹിതം!',
    'ഹോർമോൺ മാറ്റം കാരണം ഇപ്പോൾ നിങ്ങളുടെ മോണകൾ ഘനം കൂടിയും, വളരെ മൃദുലമായി കാണപ്പെടും.പല്ലുതേക്കാൻ സോഫ്റ്റ് ബ്രഷ് ഉപയോഗിക്കാൻ ശ്രദ്ധിക്കുക.ഇല്ലെങ്കിൽ മോണകളിൽ രക്തസ്രാവം ഉണ്ടാവാൻ സാധ്യത കൂടുതലാണ്.'
  ],
  babyDataEn: [
    'Baby\'s growing in good pace now. Its bones and cartilages are beginning to form.',
    'The umbilical cord and placenta is also beginning to form and grow.',
    'Your baby\'s tiny fingers are formed but they are still webbed like a duck\'s feet.',
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞിൻറെ വളർച്ച ഇപ്പോൾ "അതിവേഗം- ബഹുദൂരം" ആണ്. അസ്ഥികളും തരുണാസ്ഥികളും രൂപപ്പെടാൻ ആരംഭിച്ചുകഴിഞ്ഞു.',
    'മാതൃശിശു ബന്ധത്തിൻറെ പരിശുദ്ധ അടയാളമായ പൊക്കിൾകൊടിയും,ഗർഭപാത്രത്തിൽ കുഞ്ഞിന് സംരക്ഷണവലയം തീർക്കുന്ന പ്ലാസ്മ ദ്രവവും (placenta) രൂപംകൊണ്ട് വളരാൻ ആരംഭിച്ചിരിക്കുന്നു.',
    'കുട്ടിയുടെ മൃദുലവും മനോഹരവുമായ കുഞ്ഞുവിരലുകൾ ഇപ്പോൾ രൂപംകൊണ്ടു കഴിഞ്ഞു.എങ്കിലും താറാവിന്റെ കാല് പോലെ ഒട്ടിപ്പിടിച്ച നിലയിലാണ് ഇപ്പോൾ ഇവ കാണാൻ കഴിയുക.'
  ],
);

const WeekByWeekModel week10 = WeekByWeekModel(
  title: 'Week 10',
  // imgUrl: '',
  motherDataEn: [
    'The much awaited mood swings are here!!! Hormonal changes can bring a sudden change in your behaviour. Your mood can switch from being angry to happy to sad in just minutes. So it is better to tell your husband and family members to be prepared in advance for your lash outs.',
    'Now is the time to do some light exercise. Go for a walk only if you have the energy to do so. This is a very good practice as it can help you feel healthy and fit throughout your pregnancy.',
    'Out of breath can be a common thing now. You might feel like taking deep breaths and sighs which is very normal. This happens mainly because of the increased progesterone levels in your blood. This will reduce by the end of first trimester but will come back in the third trimester.',
    ' You can enjoy intercourse. During the first three months you might have no or less interest in sex as you are tired and nauseous all the time. But if you feel like it you can do it without any fear. In some cases where there is bleeding in pregnancy doctors advice not have intercourse in the first three months.',
  ],
  motherDataMl: [
    'നിങ്ങളുടെ പെരുമാറ്റത്തിലും സ്വഭാവത്തിലും അപ്രതീക്ഷിത മാറ്റങ്ങൾ സംഭവിക്കുന്ന സമയമാണിത്.ദേഷ്യവും, സന്തോഷവും, സങ്കടവും ഒക്കെ പെട്ടെന്ന് മാറിമാറി അനുഭവപ്പെടാം. ഹോർമോണുകളുടെ പ്രവർത്തനഫലമായാണ് ഇത് സംഭവിക്കുന്നത്.ഭർത്താവിനോടും മറ്റു കുടുംബാംഗങ്ങളോടും ഇക്കാര്യം തുറന്നു പറയുന്നത്, അവർക്ക് നിങ്ങളെ മനസ്സിലാക്കാൻ സഹായകമായിരിക്കും.',
    'ഇപ്പോൾ ചെറിയ വ്യായാമങ്ങൾ ഒക്കെ ചെയ്യാൻ ഉള്ള സമയമാണ്.ഒന്നും നടക്കാൻ പോകുന്നത് ഗർഭകാലത്ത് ഉടനീളം നിങ്ങൾ ആരോഗ്യവതിയായ ആണെന്ന് സ്വയം തോന്നിപ്പിക്കുന്നതിന് ഏറ്റവും ഉത്തമമാണ്.നടക്കാനും വ്യായാമം ചെയ്യാനുമുള്ള ആരോഗ്യാവസ്ഥ ഉണ്ടെങ്കിൽ മാത്രമേ അതൊക്കെ ചെയ്യാൻ പാടുള്ളൂ എന്നത് മറക്കരുത്.',
    'കിതപ്പ് ഉണ്ടാവുന്നത് ഈ സമയത്ത് സാധാരണമാണ്.പ്രൊജസ്ട്രോൺ എന്ന ഹോർമോണിൻറെ അളവ് രക്തത്തിൽ കുറയുമ്പോഴാണ് ഇത് സംഭവിക്കുന്നത്.ഗർഭാവസ്ഥയുടെ ആദ്യ ഘട്ടത്തിന്റെ അവസാനത്തോടെ ഇത് കുറയും. മൂന്നാംഘട്ടം ആവുമ്പോഴേക്കും വീണ്ടും വരാനുള്ള സാധ്യതയുമുണ്ട്.',
    'ഇപ്പോൾ വേണമെങ്കിൽ നിങ്ങൾക്ക് ദാമ്പത്യ ബന്ധത്തിൽ ഏർപ്പെടാം. ആദ്യ മൂന്ന് മാസങ്ങളിൽ മനംപുരട്ടലും ക്ഷീണവും അലട്ടുന്നതിനാൽ നിങ്ങൾക്ക് അതിനോടുള്ള താത്പര്യം കുറയുകയോ തീരെ ഇല്ലാതാവുകയോ ചെയ്യാം.ഗർഭകാലത്ത് രക്തസ്രാവമോ മറ്റോ ഉണ്ടെങ്കിൽ ആദ്യ മൂന്നുമാസം ലൈംഗികബന്ധത്തിലേർപ്പെടുന്നത് നിങ്ങളുടെ ഡോക്ടർ വിലക്കിയേക്കും.മറ്റു കുഴപ്പങ്ങൾ ഒന്നും ഇല്ലെങ്കിൽ ധൈര്യമായി ബന്ധപ്പെടാവുന്നതാണ്.',
  ],
  babyDataEn: [
    'Your baby is now a foetus',
    'Majority of the joints are formed. Such as joints of the shoulders, elbows, wrists, hands and fingers, knees, ankles, feet, toes',
    'Your baby\'s organs are present but they are not fully formed and functional, but dont worry in the coming weeks it will be completely formed.',
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞ് ഇപ്പോൾ ശരിക്കും ഒരു ഭ്രൂണമായി വളർന്നുകഴിഞ്ഞു.',
    'തോളുകൾ, കൈ കാൽമുട്ടുകൾ, ഇടുപ്പ്, കൈകാൽ വിരലുകൾ, പാദങ്ങൾ തുടങ്ങി മിക്ക സന്ധികളും രൂപം പ്രാപിച്ചു കഴിഞ്ഞു.',
    'നിങ്ങളുടെ കുഞ്ഞിൻറെ മിക്കവാറും എല്ലാ അവയവങ്ങളും തയ്യാറായി എങ്കിലും അവ പൂർണവളർച്ച എത്തുകയോ പ്രവർത്തനക്ഷമമാവുകയോ ചെയ്തിട്ടില്ല.വിഷമിക്കേണ്ട; ശ്രീനിവാസൻ പറഞ്ഞതുപോലെ, \'എല്ലാത്തിനും അതിൻറെതായ സമയമുണ്ട് ദാസാ.\''
  ],
);

const WeekByWeekModel week11 = WeekByWeekModel(
  title: 'Week 11',
  // imgUrl: '',
  motherDataEn: [
    'Your uterus has now almost filled up your pelvis. Your doctor can now feel the uterus by just examining you abdominally, you can too feel this. Press your fingers gently against your lower abdomen just above your pubic bone, you can feel it there.',
    'A Doppler device can be used to hear your baby\'s heartbeat.',
    'Morning Sickness might still be troubling you but it would soon disappear in the coming weeks.',
    'You will be called in for your first ultrasound scan. This scan is very important so don\'t try to skip it. The scan will assess the growth of the baby and also measure thickness of the skin behind the neck (nuchal thickness) which would help in determining the health of the baby.',
    'Hormonal Tablets and Injections are not compulsory but if it is advised by the doctors then take them accordingly.'
  ],
  motherDataMl: [
    'ഇപ്പോൾ നിങ്ങളുടെ ഗർഭപാത്രം തിരിച്ചറിയാൻ പാകത്തിൽ വളർച്ച നേടിയിരിക്കുന്നു.ബാഹ്യ പരിശോധനയിലൂടെ തന്നെ ഡോക്ടർക്കത് മനസ്സിലാക്കാൻ കഴിയും.നിങ്ങൾക്കും ഇത് അനുഭവിച്ചറിയാൻ കഴിയും.നിങ്ങളുടെ യോനീതടത്തിനുമുകളിലായി അടിവയറ്റിൽ വിരലുകൾ പതിയെ അമർത്തി നോക്കൂ. ആ അനുഭൂതി തൊട്ടറിയാം.',
    'ഒരു ഡോപ്ലർ യന്ത്രം ഉപയോഗിച്ച് നിങ്ങളുടെ കുഞ്ഞിൻറെ ഹൃദയമിടിപ്പിന്റെ ദ്രുതതാളം നിങ്ങൾക്ക് ആസ്വദിക്കാൻ കഴിയും.',
    'ഗർഭത്തോട് അനുബന്ധിച്ചുള്ള ഛർദ്ദിയും ക്ഷീണവും ഒക്കെ ഇപ്പോഴും അലട്ടാം എങ്കിലും വരും ആഴ്ചകളിൽ അതൊക്കെ പൂർണമായും മാറുന്നതാണ്.',
    'ഈ ആഴ്ചയിൽ നിങ്ങളെ ആദ്യത്തെ അൾട്രാസൗണ്ട് സ്കാനിങ്ങിന് വിധേയമാക്കും.കുഞ്ഞിൻറെ ആരോഗ്യസ്ഥിതിയും സ്ഥാനവും ഒക്കെ കൃത്യമായി മനസ്സിലാക്കുന്നത് ഈ സ്കാനിങ്ങിലൂടെ ആണ്.അതുകൊണ്ട് യാതൊരു കാരണവശാലും ഇത് ഒഴിവാക്കാൻ ശ്രമിക്കരുത്.',
    'ഹോർമോൺ ഗുളികകളോ കുത്തിവെയ്പ്പുകളോ ഈ ഘട്ടത്തിൽ നിർബന്ധമില്ല. പക്ഷേ ഡോക്ടർ നിർദ്ദേശിക്കുക യാണെങ്കിൽ അവ കൃത്യമായി പിന്തുടരുക.'
  ],
  babyDataEn: [
    'You would be surprised to know that nails have started to develop in your baby\'s fingers.',
    'Baby\'s length will be doubled by this week.',
    'Irises of your baby\'s eyes will also developing right now.',
  ],
  babyDataMl: [
    'ഇപ്പോൾ നിങ്ങളുടെ ചക്കര കുട്ടിയുടെ കുട്ടി വിരലുകളിൽ കുഞ്ഞികുഞ്ഞി നഖങ്ങൾ മുളക്കാൻ തുടങ്ങിയിട്ടുണ്ട്.',
    'ഈ ഒരാഴ്ച കൊണ്ട് കുഞ്ഞിൻറെ വലുപ്പം ഇരട്ടിയാകും.',
    'കുട്ടിയുടെ കണ്ണുകളിൽ നേത്ര പടലങ്ങളും വികസിച്ചു തുടങ്ങിയിരിക്കുന്നു.'
  ],
);

const WeekByWeekModel week13 = WeekByWeekModel(
  title: 'Week 13',
  // imgUrl: '',
  motherDataEn: [
    'You might experience mild pain in your lower abdomen as well some discomfort this is mainly because your uterus is growing and stretching.',
    'Even though your baby is very small, you might feel some heaviness this is due to the uterus expansion.'
        'You will also feel uncomfortable when you stand up while sitting down and when you move side by side while lying down. This feeling is not going to stop its going increase in the coming weeks.',
    'By this week you will see a change in your breasts. The veins in your breasts will be more visible now and even your nipples will become darker.'
  ],
  motherDataMl: [
    'ഗർഭപാത്രം വളർന്നു കൊണ്ടിരിക്കുന്നതിനാൽ നിങ്ങളുടെ അടിവയറ്റിൽ ഇപ്പോൾ നേരിയ വേദനയോ അസ്വസ്ഥതയോ തോന്നാം.',
    'വയറ്റിൽ ചെറിയ ഭാരം അനുഭവപ്പെടാം. ഇത് കുഞ്ഞിന്റെയല്ല; ഗർഭപാത്രം വികസിക്കുന്നതിന്റെ നിങ്ങളുടെ കുഞ്ഞ് ഇപ്പോഴും തീരെ ചെറുതാണ്.',
    'ഇരുന്നിട്ട് എഴുന്നേൽക്കുമ്പോഴും കിടന്നിട്ട് തിരിഞ്ഞു കിടക്കുമ്പോഴും ചെറിയ ബുദ്ധിമുട്ട് തോന്നിത്തുടങ്ങും.കുഞ്ഞിൻറെ വളർച്ചയ്ക്കനുസരിച്ച് ഈ ബുദ്ധിമുട്ട് കൂടിക്കൊണ്ടിരിക്കും.',
    'ഈ ആഴ്ചയിൽ നിങ്ങളുടെ മാറിടത്തിലെ ഞരമ്പുകൾ കൂടുതൽ തെളിഞ്ഞു കാണാൻ സാധിക്കും. മുലക്കണ്ണുകളിൽ കറുപ്പു നിറം വർദ്ധിക്കും.'
  ],
  babyDataEn: [
    'Your baby is now about 8 cm long. He/she is getting bigger.',
    'Vocal cords have started to develop',
    'Another fascinating fact is that your baby\'s teeth are completely formed, all 20 of them. But they are all waiting beneath the gums until its time to come out which after few months post delivery. In some cases babies have been born showing a single tooth as well.',
    'Production of red blood cells in the baby\'s body is now taken care by its bone marrow, liver and spleen.',
    'Your babies face kind of looked like an alien with eyes being on the sides of the face and ears were also out of position. But in this week the eyes have moved forward and come closer. The ears have also started to come to its original position, this marks the beginning of your beautiful baby\'s face.'
  ],
  babyDataMl: [
    'കുഞ്ഞിനെ വലുപ്പം ഇപ്പോൾ 8 സെൻറീമീറ്റർ വരെ ആയിട്ടുണ്ടാവും അവൻ /അവൾ വളർന്നുകൊണ്ടേയിരിക്കുന്നു.',
    'അലറി കരയുമ്പോൾ നല്ല ശബ്ദം വേണ്ടേ;കുഞ്ഞിൻറെ സ്വനപേടകം വികസിക്കാൻ തുടങ്ങിയിരിക്കുന്നു.',
    'മറ്റൊരു ആശ്ചര്യമായ കാര്യം കുഞ്ഞിൻറെ പല്ലുകൾ മുഴുവനായും വികസിച്ചു കഴിഞ്ഞു എന്നുള്ളതാണ് പക്ഷേ അവയെല്ലാം മോണയ്ക്ക് ഉള്ളിൽ ഒളിഞ്ഞിരിക്കുന്നു. പ്രസവിച്ച് കഴിഞ്ഞ് ചില മാസങ്ങൾക്കുശേഷമേ പുറത്തുവരു. അപൂർവമായി ചില കുട്ടികൾ ഒരു പല്ലോടുകൂടിയും ജനിക്കാറുണ്ട്.',
    'അസ്ഥിമജ്ജയും കരളും പ്ലീഹ യും ഒക്കെ ചേർന്ന് ചുവന്ന രക്താണുക്കളെ ഉത്പാദിപ്പിച്ച് തുടങ്ങിയിരിക്കുന്നു.',
    'നിങ്ങളുടെ കുഞ്ഞിൻറെ കണ്ണുകൾ മുഖത്തിന് ഇരുവശത്തുമായാണ് ഇപ്പോഴുള്ളത്. ചെവികളും സ്ഥാനം തെറ്റി ആണ് ഉണ്ടാവുക. എന്നാൽ ഈ ആഴ്ച കൊണ്ട് കുഞ്ഞിൻറെ കണ്ണുകൾ മുഖത്തീന്റെ മുൻ വശത്തേക്ക് നീങ്ങി തമ്മിൽ അടുത്തുവരും. ചെവികളും യഥാസ്ഥാനത്ത് എത്താൻ തുടങ്ങും. നിങ്ങളുടെ കുഞ്ഞിൻറെ മുഖം മനോഹരമായി മാറിക്കൊണ്ടിരിക്കുന്നു.'
  ],
);

const WeekByWeekModel week12 = WeekByWeekModel(
  title: 'Week 12',
  // imgUrl: '',
  motherDataEn: [
    'Energy Spike: All these weeks you have been so tired and exhausted but now you will have a sense of well being and feel super energetic.',
    'This week your uterus will do a favour to you. It would slightly move upwards so that it doesn\'t press on your bladder as much as before.',
    'Skin discoloration: You might notice some changes to your skin color especially around your neck and face. This is called mask of pregnancy (chloasma). It looks like brown or grey patches around your neck and face. This is a common sight in pregnancy and will go away on its own after delivery.'
        'A dark line of pigmentation may appear running from the top to the bottom of your abdomen, this is called linea nigra. For some people it can be seen now for others it may be visible later in their pregnancy.',
    ' From this week onwards placenta takes up the role in producing hormones.',
    'As you are still in your first trimester, you can sleep in any position as you like. You can sleep on your stomach on your back, you can even turn side by side by lying down. To avoid sprains on your back and stomach while getting up from your lying position ; make sure to turn to your side and then get up.'
  ],
  motherDataMl: [
    'ഇത്രയും നാൾ നിങ്ങൾക്ക് ക്ഷീണവും ഉന്മേഷക്കുറവും ഒക്കെ അനുഭവപ്പെട്ടിരുന്നല്ലോ.പക്ഷേ ഇനിമുതൽ അതൊക്കെ മാറി നല്ല ഉന്മേഷവും ഉത്സാഹവും തോന്നിത്തുടങ്ങും.'
        'മറ്റൊരു അനുകൂല ഘടകം എന്തെന്നാൽ ഗർഭപാത്രം അല്പം മുകളിലേക്ക് നീങ്ങും.അതിനാൽ ഇതുവരെ നിങ്ങളുടെ മൂത്രാശയത്തിനുമേൽ ഉണ്ടായിരുന്ന സമ്മർദ്ദം കുറയും.',
    'ഇപ്പോൾ നിങ്ങളുടെ മുഖത്തെ നിറംമാറ്റം നിങ്ങൾ ശ്രദ്ധിച്ചിട്ടുണ്ടാവും.ഗർഭിണികൾക്ക് മുഖത്തും കഴുത്തിനുചുറ്റും ഇരുണ്ട നിറം ഉണ്ടാവുന്നത് സാധാരണയാണ്.ഇതിനെ ഗർഭാവസ്ഥയുടെ മാസ്ക് ( ക്ളോസ്മ/ മെലാസ്മ) എന്ന് വിളിക്കുന്നു."എൻറെ സൗന്ദര്യം പോയേ"എന്ന് കരുതി വിഷമിക്കേണ്ട പ്രസവശേഷം ഇത് തനിയെ മാറിക്കൊള്ളും.',
    'നിങ്ങളുടെ വയറിൻറെ നടുവിലായി, മുകളിൽനിന്ന് അടിവയറിനു താഴെ അറ്റം വരെ നീളുന്ന ഒരു കറുത്ത വര പ്രത്യക്ഷപ്പെടാം.ഇതിനെ ലിനിയ നൈഗ്ര(linea nigra) എന്നാണ് പറയുക ചിലർക്ക് ഇപ്പോൾതന്നെ ഇത് കണ്ടു തുടങ്ങും മറ്റുള്ളവർക്ക് ഗർഭകാലത്തിലെ വരും ഘട്ടങ്ങളിൽ പ്രത്യക്ഷപ്പെടാം.',
    'മറുപിള്ള (പ്ലാസൻറ) ഈ ആഴ്ച മുതൽ ഹോർമോണുകൾ ഉത്പാദിപ്പിക്കാൻ തുടങ്ങും.',
    'നിങ്ങൾ ഇപ്പോഴും ഗർഭാവസ്ഥയുടെ ഒന്നാംഘട്ടത്തിൽ ആണ് (ആദ്യ മൂന്നുമാസം). ഇപ്പോൾ നിങ്ങൾക്ക് മലർന്നോ കമിഴ്ന്നോ വശങ്ങളിലേക്ക് തിരിഞ്ഞോ ഒക്കെ കിടക്കാം.അതുകൊണ്ട് കുഴപ്പമൊന്നുമില്ല. പക്ഷേ കിടക്ക വിട്ട് എണീക്കുമ്പോൾ വയറിലോ മുതുകിലോ ഉളുക്കോ കൊളുത്തിപ്പിടുത്തമോ വരാൻ സാധ്യതയുണ്ട്. അതിനാൽ ആയാസമില്ലാത്ത രീതിയിൽ എണീക്കാൻ പ്രത്യേകം ശ്രദ്ധിക്കണം.'
  ],
  babyDataEn: [
    'Your baby is now approx. 6cm long, it can fit right in your palms. Now your baby will no longer look like alien he/she will look more or less like a human being.',
    'Your baby\'s scalp will have beginnings of hair.',
    'The skin and nails are completely formed',
    'Your babies feet and hands will no longer look webbed like ducks feet. It will be completely formed into fingers and toes.',
    'Baby is learning to breathe. As it practices breathing, its chests will rise and fall in the process.',
    'Baby\'s kidneys are completely formed and functioning. Baby will start to urinate now as it can swallow amniotic fluid.',
    'No need to worry the amniotic fluid is completely replaced every three hours so that the baby\'s environment remain fresh all the time.'
  ],
  babyDataMl: [
    'ഇപ്പോൾ നിങ്ങളുടെ കുഞ്ഞിന് ഏകദേശം 6 സെൻറീമീറ്റർ നീളം ഉണ്ടാവും. അതായത് നിങ്ങളുടെ ഉള്ളംകൈയിൽ കൊള്ളുന്ന വലിപ്പം. ഇതുവരെയുണ്ടായിരുന്ന അവൻറെ/ അവളുടെ "ഏലിയൻ" ലുക്ക് മാറി മനുഷ്യരൂപം വന്നു തുടങ്ങിയിരിക്കുന്നു.',
    'കുട്ടിയുടെ ശിരോചർമ്മത്തിൽ മുടിയുടെ വളർച്ച ആരംഭമായി.',
    '.ത്വക്കും നഖങ്ങളും പൂർണ്ണ രൂപം പ്രാപിച്ചു കഴിഞ്ഞു.',
    'താറാവിന്റെ കാല് പോലെ ഒട്ടിപ്പിടിച്ചിരുന്ന കുഞ്ഞിന്റെ കൈകാൽ വിരലുകൾ വിടർന്ന് ശരിക്കുള്ള വിരലുകൾ ആയി മാറിയിരിക്കും.',
    'കുഞ്ഞ് ശ്വസിക്കാൻ പഠിക്കുന്ന സമയമാണിത്. ശ്വാസോച്ഛ്വാസം ചെയ്യാനുള്ള പരിശീലനത്തിന്റെ ഭാഗമായി കുഞ്ഞിൻറെ നെഞ്ച് ഉയരുകയും താഴുകയും ചെയ്യും.',
    'കുട്ടിയുടെ വൃക്കകൾ പൂർണ വളർച്ച എത്തുകയും പ്രവർത്തിക്കാൻ തുടങ്ങുകയും ചെയ്യും. ഗർഭപാത്രത്തിലെ അമ്നിയോട്ടിക് ദ്രവം (amniotic fluid) കുടിക്കുകയും, വൃക്കകൾ വഴി അരിച്ച് മൂത്രമൊഴിക്കാൻ തുടങ്ങുകയും ചെയ്യും.',
    'കുഞ്ഞിനെ ചുറ്റിയുള്ള അമ്നിയോട്ടിക് ദ്രവം ഓരോ മൂന്നു മണിക്കൂറിലും പുതുക്കപ്പെട്ടു കൊണ്ടിരിക്കും അതുകൊണ്ട് കുഞ്ഞിൻറെ അന്തരീക്ഷം എപ്പോഴും ഫ്രഷ് ആയിരിക്കും.'
  ],
);

const WeekByWeekModel week14 = WeekByWeekModel(
  title: 'Week 14',
  // imgUrl: '',
  motherDataEn: [
    'A big relief to you because as you have entered the second trimester in your pregnancy your chances for miscarriage is now low.',
    'You might feel a small bump in your lower abdomen. Dont mistake it to be your baby that is just your growing uterus.',
    'A new problem may come up now that is acidity which can also lead to heartburn. This can be a bit of headache for you hence try to follow the below steps: \n a. Your doctor may prescribe you with antacids. Do not ignore it, take the medication it will help in relieving the acidity.\n b. Try to finish your last meal as early as possible. So that you get enough time like one or two hours after your meal and lying down. This will help in improving your digestion and avoid acidity problems.'
        'Your breasts will stop being sensitive but definitely you will feel the heaviness. Sometimes you might have to change your bra to one size larger.',
    'Constipation is very common in pregnancy and you might be still battling with it. So to cure this problem add lots of fibre in your diet for example: eat vegetables especially dark green leafy vegetables and drink plenty of water.',
    'You might not show yet. Some women may get a baby bump by now but some may not. If you dont see any baby bump not need to worry this is quite normal especially is this is your first pregnancy. Wait for another month you will slowly start showing.',
    'Most women lose interest in sex during the first trimester. But things are going to change in the second trimester. You might start to enjoy it now like before.'
  ],
  motherDataMl: [
    'ഒരു വലിയ ആശ്വാസമായി, നിങ്ങൾ ഗർഭകാലത്തിന്റെ ഒന്നാം ഘട്ടം വിജയകരമായി പൂർത്തിയാക്കി രണ്ടാം ഘട്ടത്തിലേക്ക് കടന്നിരിക്കുന്നു.എന്നുവെച്ചാൽ ഗർഭം അലസി പോകാനുള്ള സാധ്യത വളരെയേറെ കുറഞ്ഞു എന്നർത്ഥം.',
    'ഇപ്പോൾ നിങ്ങളുടെ അടിവയറ്റിൽ ഒരു നേരിയ മുഴ ഉള്ളതുപോലെ; ഒരു ചെറിയ ഭാരം പോലെ തോന്നുന്നത് നിങ്ങളുടെ കുട്ടിയാണെന്ന് തെറ്റിദ്ധരിക്കരുത്. നിങ്ങളുടെ വളർന്നു തുടങ്ങിയ ഗർഭപാത്രം ആണ് അത്.',
    'ഇപ്പോൾ പുളിച്ചുതികട്ടലും നെഞ്ചെരിച്ചിലും കൂടുതലാവുകയും അതുമൂലം ചെറിയ തലവേദന ഉണ്ടാവുകയും ചെയ്യാം. താഴെ പറയുന്ന വിവരങ്ങൾ ശ്രദ്ധിച്ചാൽ അതിന് പരിഹാരമാകും\na)അൻറാസിഡുകൾ കഴിക്കാൻ ഡോക്ടർ നിങ്ങളോട് നിർദ്ദേശിച്ചിട്ടുണ്ടാവും കൃത്യസമയത്ത് അവ കഴിക്കാൻ ശ്രദ്ധിക്കുക.\nb)കിടക്കുന്നതിന് രണ്ടു മണിക്കൂർ മുമ്പെങ്കിലും ആഹാരം കഴിക്കാൻ പ്രത്യേകം ശ്രദ്ധിക്കണം. ഇത് നിങ്ങളുടെ ദഹനവ്യവസ്ഥ ശരിയായി പ്രവർത്തിക്കാൻ സഹായിക്കുകയും തന്മൂലം അസിഡിറ്റി ഉണ്ടാവുന്നത് കുറയ്ക്കുകയും ചെയ്യും.',
    'നിങ്ങളുടെ സ്തനങ്ങളിൽ തൊടുമ്പോൾ ഉണ്ടാകുന്ന അസ്വസ്ഥതകൾ കുറഞ്ഞിട്ടുണ്ടാവും. എങ്കിലും തീർച്ചയായും അതിൻറെ കനം കൂടിയത് നിങ്ങൾക്ക് മനസ്സിലാക്കാൻ കഴിയും. ചിലപ്പോൾ നിങ്ങൾക്ക് ഇപ്പോഴുള്ളതിനേക്കാൾ ഒരു സൈസ് കൂടുതൽ ഉള്ള ബ്രാ ധരിക്കേണ്ടിവരും.',
    'ഗർഭാവസ്ഥയിൽ സർവ്വസാധാരണമായി കാണുന്ന ഒന്നാണ് മലബന്ധം. ഒഴിവാക്കാൻ നാര് അടങ്ങിയ ഭക്ഷണ പദാർത്ഥങ്ങൾ പരമാവധി കഴിക്കുക. ഇലക്കറികളും വാഴപ്പഴവും പച്ചക്കറികളുമൊക്കെ ഇതിന് ഉത്തമമാണ്.',
    'ചില സ്ത്രീകൾക്ക് ഇപ്പോൾ വയർ പതുക്കെ പതുക്കെ വലുതായി തുടങ്ങും. എല്ലാവർക്കും അങ്ങനെ ആവണമെന്നില്ല ചിലർക്ക് ഒരു മാസം കൂടി കാത്തിരുന്നാലേ വയർ വലുതായി തുടങ്ങുകയുള്ളൂ.',
    'പലർക്കും ആദ്യഘട്ടത്തിൽ സെക്സിനോട് താൽപര്യക്കുറവ് കണ്ടേക്കാം. എന്നാൽ രണ്ടാംഘട്ടത്തിൽ കാര്യങ്ങൾ മാറും. പഴയതുപോലെ തന്നെ നിങ്ങൾ അത് ആസ്വദിക്കാൻ തുടങ്ങും.'
  ],
  babyDataEn: [
    'Your baby\'s length will be almost same as the previous week but Its weight would have tripled to 45 gms now.',
    'This week is truly magical. Your beautiful baby will start to smile, frown and wrinkle its forehead as its facial features have become more defined and facial muscles are now active.',
    'Your baby\'s neck will be well defined.',
    'Baby\'s reflexes will begin to operate. It will be able to open and close it\'s fists now.',
    'Baby\'s genital organs are completely formed and differentiated your baby into a boy or a girl.'
        'Whorls will start to form on your baby\'s finger tips this will later become your baby\'s finger prints.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ വലുപ്പം മിക്കവാറും കഴിഞ്ഞ ആഴ്ചയിലേതുപോലെ തന്നെയാവും. പക്ഷേ ഭാരം മൂന്നു മടങ്ങ് വരെ കൂടിയിട്ടുണ്ടാവും. അതായത് ഏതാണ്ട് 45 ഗ്രാം ഭാരം നിങ്ങളുടെ കുഞ്ഞിന് ഇപ്പോൾ ഉണ്ടാവും.',
    'നിങ്ങളുടെ കുട്ടിയെ സംബന്ധിച്ച് ഇത് ശരിക്കും ഒരു മാന്ത്രിക ആഴ്ചയാണ്. കുഞ്ഞിൻറെ മുഖ ആകൃതി കൂടുതൽ വ്യക്തത കൈവന്നിരിക്കുന്നു. മുഖ പേശികൾ ചലിപ്പിക്കാനും നെറ്റി ചുളിക്കാനും കഴിയുന്നു.ഉള്ളിൽ കിടന്ന് നിങ്ങളുടെ കുഞ്ഞ് പുഞ്ചിരിക്കുന്നത് ഒന്നു സങ്കൽപ്പിച്ചു നോക്കൂ.അതെ നിങ്ങളുടെ തക്കുടു വിൻറെ ഓമന ചുണ്ടുകൾ മനോഹരമായി പുഞ്ചിരിച്ചു തുടങ്ങിയിരിക്കുന്നു.',
    'കുഞ്ഞിൻറെ കഴുത്തു ഭാഗവും നന്നായി വികസിച്ചിരിക്കുന്നു.',
    'കുട്ടി ബോധത്തോടെ അല്ലാത്ത ചലനങ്ങൾ (reflexes) ഉണ്ടാക്കി തുടങ്ങും. ഇപ്പോൾ കൊച്ചുമുഷ്ടി ചുരുട്ടാനും നിവർത്താനും കുഞ്ഞിന് കഴിയും.',
    'കുട്ടിയുടെ ജനനേന്ദ്രിയങ്ങൾ എല്ലാം തന്നെ പൂർണ്ണമായും വികസിച്ചു കഴിഞ്ഞിരിക്കുന്നു. നിങ്ങളുടെ കുഞ്ഞ് ആണോ പെണ്ണോ എന്ന് നിർണ്ണയിക്കപ്പെട്ടു കഴിഞ്ഞു.',
    'കുഞ്ഞിൻറെ ഉള്ളം കയ്യിലും വിരൽത്തുമ്പിലും തൊലി പിരി പിരിയായി രൂപംകൊള്ളുന്നുണ്ടാവും. ഇതാണ് കുഞ്ഞിൻറെ വിരലടയാളമായി രൂപപ്പെടുന്നത്.'
  ],
);

const WeekByWeekModel week15 = WeekByWeekModel(
  title: 'Week 15',
  // imgUrl: '',
  motherDataEn: [
    'As mentioned earlier feeling of heaviness will increase as your uterus is growing larger day by day.',
    'The top of your uterus (fundus) is now half way between your pubic bone and umbilical. This can be easily felt by your doctor who can figure out whether your uterus is growing normally or not.',
    'There would be an increase in your blood circulation which is quite normal in pregnancy. You can easily notice this for yourself, by checking your palms, it will start look red and feel warmer.'
  ],
  motherDataMl: [
    'നേരത്തെ സൂചിപ്പിച്ചതുപോലെ അടിവയറ്റിലെ ഘനം കൂടിക്കൂടിവരുന്നുണ്ടാവാം. ഗർഭപാത്രം ദിവസംതോറും വളരുകയാണല്ലോ...',
    'നിങ്ങളുടെ ഗർഭാശയമുഖം ഇപ്പോൾ പ്യൂബിക് ബോണിനും (യോനിയുടെ മുകൾഭാഗത്തെ അസ്ഥി) പൊക്കിളിനും ഇടയിലായിരിക്കും.നിങ്ങളുടെ ഗർഭപാത്രത്തിന് ശരിയായ വളർച്ച ഉണ്ടോ എന്ന് മനസ്സിലാക്കാൻ ഒരു പരിശോധനയിലൂടെ നിങ്ങളുടെ ഡോക്ടർക്ക് കഴിയും.',
    'ഗർഭ കാലത്തിൻറെ ഈ ഘട്ടം മുതൽ രക്തചംക്രമണം വർധിക്കുന്നത് സ്വാഭാവികമാണ്.നിങ്ങളുടെ ഉള്ളംകൈ ഒന്ന് നിരീക്ഷിച്ചാൽ ഇത് മനസ്സിലാകും. അത് അല്പം ചുവന്നും ലേശം ചൂടുള്ളതായും കാണപ്പെടും.'
  ],
  babyDataEn: [
    ' This week there is a lot happening in your baby\'s body.',
    'Your baby is growing, it has now grown more than 10 cm long.',
    'Baby\'s eye brows and eyelashes have appeared but it is colourless now. Dont worry it will soon get its color.',
    'Coming to the baby\'s heart, it is beating well and the blood circulation is also fine.',
    'The hair on your baby\'s scalp is now showing more.'
        'Skin has started to form on your baby\'s body but it is still thin. One will be able to see the small blood vessels forming underneath the skin. Thats how thin it is. Fascinating isn\'t it!!!',
    'Your baby is great explorer. It starts to explore everything inside the womb, some women were lucky to see their babies sucking its thumb on ultrasound scan. Observe your scans you never know you might be the lucky one next.'
  ],
  babyDataMl: [
    'ഈ ആഴ്ച കുഞ്ഞിൻറെ ശരീരത്തിൽ ഒരുപാട് വളർച്ചാ വികാസങ്ങൾ സംഭവിക്കും.',
    'നിങ്ങളുടെ കുഞ്ഞിന് ഇപ്പോൾ ഏകദേശം 10 സെൻറീമീറ്ററിൽ കൂടുതൽ വലുപ്പമുണ്ട്.',
    'കുഞ്ഞിൻറെ കൺപീലികളും പുരികങ്ങളും പ്രത്യക്ഷപ്പെട്ടു കഴിഞ്ഞെങ്കിലും നിറമില്ലാത്ത അവസ്ഥയിലാണ് അവ ഉള്ളത്. താമസിയാതെ സ്വാഭാവികനിറം കൈ വരുന്നതായിരിക്കും.',
    'കുഞ്ഞിൻറെ ഹൃദയം നല്ല രീതിയിൽ തന്നെ മിടിക്കുന്നുണ്ടാവും. രക്തചംക്രമണവും നന്നായി നടക്കുന്നുണ്ട്.',
    'തലമുടിയും കൂടുതൽ വളർന്നിട്ടുണ്ടാവും.',
    'കുഞ്ഞിന്റെ ശരീരത്തിൽ ത്വക്ക് രൂപപ്പെട്ടു തുടങ്ങിയിട്ടുണ്ട് എങ്കിലും അതിന് കനം വളരെ കുറവായിരിക്കും. ചർമത്തിനടിയിൽ കുഞ്ഞു രക്തക്കുഴലുകൾ വികസിച്ചിരിക്കുന്നത് കാണാൻ കഴിയും. എത്ര അത്ഭുതകരമാണ് !അല്ലേ...',
    'നിങ്ങളുടെ കുഞ്ഞ് ഇപ്പോൾ ഒരു സഞ്ചാരിയാണ്. ഗർഭപാത്രത്തിൽ മുഴുവൻ പര്യവേഷണം നടത്തുകയാണ് അവൻ/ അവൾ. ചില ഭാഗ്യവതികൾക്ക് അവരുടെ കണ്മണി വിരൽ ചപ്പുന്ന അപൂർവ്വ നിമിഷം സ്കാനിങ്ങിലൂടെ കാണാൻ കഴിയും. നിങ്ങളും നിങ്ങളുടെ സ്കാനിങ് സമയത്ത് ശ്രദ്ധാപൂർവ്വം നിരീക്ഷിക്കുക. ഒരു പക്ഷേ നിങ്ങളും അങ്ങനെയൊരു ഭാഗ്യവതി ആണെങ്കിലോ!...'
  ],
);

const WeekByWeekModel week16 = WeekByWeekModel(
  title: 'Week 16',
  // imgUrl: '',
  motherDataEn: [
    'It is truly magical to feel your baby\'s small movements inside you. It might feel like a small flutter. Unfortunately most of the first time mothers might not be able to experience this, you might have to be patient for another two or four weeks to feel the wonderful human being inside you.',
    'Start sleeping on your side so that later in your pregnancy you get comfortable with it. Sleeping on your stomach will be totally uncomfortable now, so you avoid doing that. You can still sleep on your back but at the same time practise sleeping on your sides.',
    'The most important organ in pregnancy your placenta is now completely formed and fully functional.'
  ],
  motherDataMl: [
    'ഒരു ഗർഭിണിയെ സംബന്ധിച്ചിടത്തോളം കുഞ്ഞ് ഉള്ളിൽ കിടന്ന് ചലിക്കുന്നത് അനുഭവിച്ചറിയുക എന്നത് പറഞ്ഞറിയിക്കാൻ പറ്റാത്ത ഒരു അനുഭൂതിയാണ്. ഇത്, പിടയ്ക്കുന്നത് പോലെയോ, തുടിക്കുന്നത് പോലെയോ ആണ് അനുഭവപ്പെടുക.ആദ്യമായി ഗർഭം ധരിക്കുന്ന പലർക്കും രണ്ടോ നാലോ ആഴ്ചകൾ കൂടി കാത്തിരുന്നാലേ അത് അനുഭവിക്കാൻ കഴിയൂ.',
    'കമിഴ്ന്ന് കിടക്കുന്നത് ഇപ്പോൾ ബുദ്ധിമുട്ടായിരിക്കും. മലർന്നു കിടക്കുന്നതു കൊണ്ട് കുഴപ്പം ഒന്നും ഇല്ലെങ്കിലും വശം തിരിഞ്ഞു കിടന്നു ശീലിക്കുന്നതാണ് നല്ലത്. കാരണം വരും ആഴ്ചകളിൽ നിർബന്ധമായും നിങ്ങൾ ചരിഞ്ഞു തന്നെ കിടക്കേണ്ടിവരും.',
    'നിങ്ങളുടെ ഗർഭകാലത്തിലെ ഏറ്റവും പ്രധാനപ്പെട്ട അവയവമായ പ്ലാസൻറ ഇപ്പോൾ പൂർണ്ണ വികാസം പ്രാപിച്ച് പ്രവർത്തനക്ഷമം ആയിരിക്കുന്നു.'
  ],
  babyDataEn: [
    'Your baby is growing in full swing. He/she is now approx. 11 cm long and average weight is around 100 gms.',
    'Baby\'s head is now straight and erect.',
    'Baby\'s lower limbs are also well developed now.',
    'Baby\'s eyelids are not yet ready to be open but its eyes are moving through the eyelids.',
    'Baby\'s skin is getting thicker day by day. It is now less transparent.'
  ],
  babyDataMl: [
    'കുഞ്ഞന് ഇപ്പോൾ ഏറെക്കുറെ 11 സെൻറീമീറ്റർ വലിപ്പവും 100 ഗ്രാം ഭാരവും ഉണ്ടായിരിക്കും.',
    'കുട്ടി തല നിവർത്തിപ്പിടിച്ച്, നേരെ ഇരിക്കുന്നത് പോലെയാവും ഇപ്പോൾ കാണപ്പെടുക.',
    'കൈകാലുകളും പൂർണ്ണമായി വികസിച്ചിരിക്കുന്നു.',
    'കൺപോളകൾ ഇപ്പോഴും തുറക്കാറായിട്ടില്ലെങ്കിലും കണ്ണുകൾ ചലിക്കുന്നത് അതിലൂടെ അറിയാം.',
    'കുഞ്ഞിൻറെ ചർമത്തിന് കട്ടി കൂടിക്കൂടിവരികയാണ്. ഇപ്പോൾ അതത്ര സുതാര്യമല്ല.'
  ],
);

const WeekByWeekModel week17 = WeekByWeekModel(
  title: 'Week 17',
  // imgUrl: '',
  motherDataEn: [
    'If you were worried that you were not gaining any weight, well no need to worry more. You will slowly start to gain weight. So now is the time to start your antenatal exercise programme and make sure you dont skip it.',
    'Iron is very important for your baby and you as well. If you haven\'t started taking iron supplements yet, now is the time to start.'
  ],
  motherDataMl: [
    'ശരീരഭാരം കൂടുന്നില്ലെങ്കിലും വിഷമിക്കേണ്ട കാര്യമില്ല; പതുക്കെ പതുക്കെ നിങ്ങൾക്ക് ഭാരം കൂടിക്കൊള്ളും. ഇപ്പോൾ ഗർഭകാല വ്യായാമങ്ങൾ തുടങ്ങാൻ ഉള്ള സമയമാണ്. ഗർഭകാലത്തും പ്രസവസമയത്തും ഉണ്ടാവുന്ന പല പ്രശ്നങ്ങൾക്കും പരിഹാരമാണ് ഈ വ്യായാമങ്ങൾ.ഇത് ഒഴിവാക്കാതിരിക്കുക.',
    'നിങ്ങൾക്കും കുഞ്ഞിനും വളരെ അത്യാവശ്യമായ ഘടകമാണ് അയൺ (ഇരുമ്പുസത്ത്). അയൺ ഗുളികകൾ കഴിച്ചു തുടങ്ങിയിട്ടില്ലെങ്കിൽ അത് തുടങ്ങാനുള്ള സമയം ഇതാണ്.'
  ],
  babyDataEn: [
    'Your baby will now respond to sounds. Loud noises outside the uterus may cause the baby to startle and make some jerky movements.',
    'Your baby will sometime move purposely',
    'Now fat will start to get deposited underneath your baby\'s skin.'
  ],
  babyDataMl: [
    'കുഞ്ഞ് ഇപ്പോൾ ശബ്ദങ്ങളോട് പ്രതികരിച്ചു തുടങ്ങിയിരിക്കുന്നു. വെളിയിൽ വലിയ ശബ്ദങ്ങൾ ഉണ്ടായാൽ, കുട്ടി ഞെട്ടുകയും ചെയ്യും.'
        'ഇപ്പോൾ മുതൽ നിങ്ങളുടെ കുട്ടിക്ക് സ്പഷ്ടമായതും വ്യക്തമായുമായ ചലനങ്ങൾ ഉണ്ടാവും.',
    'ഇപ്പോൾ മുതൽ കുഞ്ഞിൻറെ ത്വക്കിനടിയിൽ കൊഴുപ്പ് സംഭരിക്കാൻ തുടങ്ങും.'
  ],
);

const WeekByWeekModel week18 = WeekByWeekModel(
  title: 'Week 18',
  // imgUrl: '',
  motherDataEn: [
    'This is the perfect and enjoyable time in your pregnancy. You will be energetic and you will feel good so enjoy this time.',
    'Its quite obvious to feel worried and anxious when your pregnancy symptoms have now completely(well for more most women.) Your nausea is gone, you now love food and can keep them in your stomach. By now you must have got used to the heaviness of the uterus so there would no discomfort in your abdomen. But there is no need to worry, all is good in your pregnancy so stop getting anxious and just enjoy.',
    'Your uterus is getting larger week by week but it has not become large enough to cause any discomfort for you.',
    'You will still feel the heaviness in your lower abdomen especially when you get up while sitting down.',
    'As now you are in the enjoyable period of your pregnancy, if you haven\'t thought about baby names start now. Pick a name for both boy and girl so that you will be ready to name him/her when they are born.'
  ],
  motherDataMl: [
    'ഇനി മുതൽ ആയിരിക്കും ഗർഭ കാലത്തിനെ നിങ്ങൾ ശരിയായി ആസ്വദിച്ചു തുടങ്ങുന്നത്. നിങ്ങൾ നല്ല ഊർജസ്വലയായിരിക്കും.ഉന്മേഷവതിയായി തോന്നുകയും ചെയ്യും.',
    'കൂടുതൽ പേരിലും ഈ സമയത്ത് ഗർഭകാല ലക്ഷണങ്ങൾ എല്ലാം മാറി തുടങ്ങും. എന്നാൽ ഉൽക്കണ്ഠയും ആകാംക്ഷയും പ്രകടമാവുകയും ചെയ്യും. ഓക്കാനവും ഛർദ്ദിയും ഒക്കെ മാറാനും, ആഹാരത്തെ ഇഷ്ടപ്പെടാനും തുടങ്ങും. ഗർഭപാത്രത്തിലെ മാറ്റങ്ങളുമായി നിങ്ങൾ പൊരുത്തപ്പെട്ടു കഴിഞ്ഞിട്ടുണ്ടാവും. അടിവയറ്റിലെ അസ്വസ്ഥതകളും മാറിത്തുടങ്ങും. ഗർഭകാല ഉൽക്കണ്ഠകൾ ഒക്കെ മാറ്റി പ്രതീക്ഷയോടെ ഇരിക്കുക.',
    'ഗർഭപാത്രം ആഴ്ചതോറും വലുതായിക്കൊണ്ടിരിക്കും പക്ഷേ നിങ്ങൾക്ക് അത് ഒരു തരത്തിലും ബുദ്ധിമുട്ട് സൃഷ്ടിക്കുന്നില്ല.',
    'നിങ്ങളുടെ അടിവയറ്റിൽ ഘനം അനുഭവപ്പെടുന്നുണ്ടാവും. ഇരുന്നിട്ട് എഴുന്നേൽക്കുമ്പോൾ ,പ്രത്യേകിച്ചും.',
    'ഗർഭകാലം നിങ്ങൾ ആസ്വദിക്കുന്ന സമയമാണിത് എന്നു പറഞ്ഞല്ലോ; കുട്ടിയുടെ പേരിനെ കുറിച്ച് ചിന്തിച്ചിട്ടില്ലെങ്കിൽ ഇപ്പോൾ അതിനെപ്പറ്റി ആലോചിക്കാം. ആൺകുട്ടി ആണെങ്കിലും പെൺകുട്ടി ആണെങ്കിലും ഇടാൻ പറ്റിയ പേരുകൾ കണ്ടെത്താം. ഈ ചിന്തകളൊക്കെ നല്ല ഗുണം ചെയ്യും.'
  ],
  babyDataEn: [
    'Your baby now weighs 200 grams',
    'Baby\'s ear now begin to stand out from the head.',
    'Baby\'s bones are growing harder and stronger now which is a great news.',
    ' You will be surprised to know that your baby\'s kidney is able to produce 7-14 ml of urine every single day.',
    'If you had a child before, you must have notice a greenish substance babies excrete during the few days after birth, this is called meconium. This greenish substance is nothing but undigested debris of amniotic fluid and various secretions of the digestive tract. This meconium starts to accumulate in the bowel during this week.',
    'Placenta plays a vital role for the healthy development of your baby as it transfers nutrients and oxygen from your blood to the baby via umbilical cord.',
    'Your skin will get wrinkled if it is immersed in water for long. So imagine a baby\'s skin constantly immersed in amniotic flood for around 9 months. But our human body is amazing, it starts to cover the baby\'s body in a white waxy substance called vernix. This protects the baby\'s skin from getting wrinkled.'
  ],
  babyDataMl: [
    'കുഞ്ഞിന് ഇപ്പോൾ 200ഗ്രാമിനടുത്ത് ഭാരമുണ്ടാകും.',
    'കുഞ്ഞിൻറെ പുറം ചെവി നിവർന്നു വരാൻ തുടങ്ങിയിട്ടുണ്ട്.',
    'അസ്ഥികൾ കട്ടിയുള്ളതും ബലമുള്ളതുമായി മാറിക്കൊണ്ടിരിക്കുന്നു.',
    'ആശ്ചര്യകരമായ ഒരു കാര്യം; കുഞ്ഞിൻറെ വൃക്കകൾ ഇപ്പോൾ 7 മുതൽ 14 മില്ലി വരെ മൂത്രം ഒരു ദിവസം പുറംതള്ളുന്നു.',
    'മുമ്പ് കുട്ടിയുണ്ടായിട്ടുള്ളവർ ശ്രദ്ധിച്ചിട്ടുണ്ടാവും, കുഞ്ഞ് ജനിച്ചതിനുശേഷം മലവിസർജനത്തിൽ കറുപ്പും പച്ചയും കലർന്ന നിറമുള്ള ടാർ പോലെയുള്ള ഒരു പദാർത്ഥം. ഇതിനെ മക്കോണിയം(maconium) എന്ന് വിളിക്കുന്നു.കുഞ്ഞ് ഇപ്പോൾ ഭക്ഷിക്കുന്ന അമ്നിയോട്ടിക് ദ്രവത്തിൻറെ ദഹിക്കാത്ത ഭാഗങ്ങളും, കുഞ്ഞിൻറെ ദഹനവ്യവസ്ഥയുടെ വിസർജ്യവും ആണ് ഇത്.കുട്ടിയുടെ മലാശയത്തിൽ ഇത് സംഭരിച്ചു തുടങ്ങുന്നത് ഈ സമയം മുതലാണ്.',
    'നിങ്ങളുടെ രക്തത്തിൽ നിന്നും പോഷകങ്ങളും ഓക്സിജനും പൊക്കിൾകൊടി വഴി കുഞ്ഞിന്റെ ശരീരത്തിൽ എത്തിക്കുന്നതിലൂടെ, കുഞ്ഞിൻറെ ആരോഗ്യകരമായ വളർച്ചയ്ക്ക് മഹത്തായ പ്രവർത്തനമാണ് പ്ലാസൻറ ചെയ്യുന്നത്.,'
        'നിങ്ങളുടെ കൈ അൽപനേരം വെള്ളത്തിൽ മുക്കി വെച്ചു നോക്കൂ; തൊലി ആകെ ചുളിഞ്ഞിരിക്കുന്നത് കാണാം. അപ്പോൾ ഒൻപതുമാസം അമ്നിയോട്ടിക് ദ്രാവകത്തിനുള്ളിൽ കിടക്കുന്ന കുഞ്ഞിന്റെചർമ്മം എന്താവും എന്ന് ആലോചിച്ചുനോക്കൂ .!എന്നാൽ മനുഷ്യ ശരീരം എക്കാലത്തെയും വലിയ അത്ഭുതമാണല്ലോ.വെർണിക്സ് (vernix) എന്ന് വിളിക്കപ്പെടുന്ന മെഴുകുപോലുള്ള ഒരു പദാർത്ഥം കൊണ്ട് കുഞ്ഞിൻറെ ശരീരം മുഴുവൻ ഒരു ആവരണം സൃഷ്ടിക്കപ്പെടുന്നു. ഇത് കുഞ്ഞിൻറെ ചർമത്തെ ചുളിവുണ്ടാവുന്നതിൽ നിന്ന് സംരക്ഷിക്കുന്നു.'
  ],
);

const WeekByWeekModel week19 = WeekByWeekModel(
  title: 'Week 19',
  // imgUrl: '',
  motherDataEn: [
    'Now you will start to show especially if this is first pregnancy. Your friends and family will start to notice your baby bump as your lower abdomen starts to get fuller.',
    ' Another beautiful sign of pregnancy will start to appear now. STRETCH MARKS!!! Stretch marks will begin to appear on the skin of your abdomen in the coming months. You do not need to be ashamed of this stretch marks as it is a beautiful sign of your pregnancy but if you want to reduce it, you can start applying moisturising creams or lotion over your abdominal skin.'
  ],
  motherDataMl: [
    'ഇപ്പോൾ ഒറ്റനോട്ടത്തിൽ തിരിച്ചറിയാവുന്ന വിധം നിങ്ങളുടെ വയർ വലുതായിട്ടുണ്ടാവും. നിങ്ങളുടെ കുടുംബാംഗങ്ങളും സുഹൃത്തുക്കളും ഒക്കെ നിങ്ങളുടെ \'ഉണ്ണി വയർ\' ശ്രദ്ധിച്ചു തുടങ്ങും. അങ്ങനെ നിങ്ങളുടെ അടിവയർ നിറയാൻ തുടങ്ങിയിരിക്കുന്നു.',
    'ഗർഭ കാലത്തിൻറെ മറ്റൊരു മനോഹര അടയാളം ഈ ആഴ്ചയിൽ കണ്ടുതുടങ്ങും "സ്ട്രെച്ച്മാർക്ക് " (stretch mark).ഗർഭപാത്രത്തിന്റെ വലുപ്പത്തിനനുസരിച്ച്, നിങ്ങളുടെ വയറിലെ ചർമ്മം വലിഞ്ഞു കൊടുക്കുമ്പോൾ ഉണ്ടാകുന്ന വരകൾ പോലുള്ള അടയാളമാണ് ഇത്.ഇത് ഇപ്പോൾ പ്രത്യക്ഷപ്പെട്ട് തുടങ്ങുകയും വരും മാസങ്ങളിൽ കൂടുതൽ വ്യക്തതയോടെ കാണപ്പെടുകയും ചെയ്യും അമ്മ എന്ന പദവിയുടെ പരിപാവനതയുടെ അടയാളമാണിത്. എങ്കിലും ഇതിൻറെ തീവ്രത കുറയ്ക്കാൻ ക്രീമുകൾ വിപണിയിൽ ലഭ്യമാണ്. ആവശ്യമെങ്കിൽ ഡോക്ടറുടെ ഉപദേശം തേടിയ ശേഷം ഇവ ഉപയോഗിക്കാവുന്നതാണ്.',
  ],
  babyDataEn: [
    'If you are having a baby girl, millions of undeveloped eggs will start to form in her ovaries. By the time she is born she will have a million undeveloped eggs in her ovaries. Isn\'t it amazing a million eggs!!!!',
    'Buds for your permanent teeth starts to form behind the buds of your baby\'s milk teeth.',
    'Your baby\'s toe nails starts to grow but not as fast as its finger nails',
    'Your baby will be sleeping a lot from now on. Hence dont be surprised if you dont feel your baby\'s movements all the time.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞ് പെൺകുട്ടിയാണെങ്കിൽ, അവളുടെ അണ്ഡാശയത്തിൽ ഇതിനകംതന്നെ, വളർച്ചയെത്താത്ത കോടിക്കണക്കിന് അണ്ഡങ്ങൾ രൂപമാർജ്ജിച്ച് കഴിഞ്ഞിരിക്കുന്നു. "കോടിക്കണക്കിന് അണ്ഡങ്ങൾ!!" എത്ര അത്ഭുതകരം!! അല്ലേ...',
    'കുഞ്ഞിൻറെ പാൽപ്പല്ലുകൾ മോണക്കുള്ളിൽ തയ്യാറായി എന്ന് മുമ്പ് പറഞ്ഞിട്ടുണ്ടല്ലോ; അതിൻറെ പുറകിലായി സ്ഥിരം പല്ലുകൾക്കുള്ള മുകുളങ്ങളും ഇപ്പോൾ രൂപം കൊള്ളാൻ തുടങ്ങിയിരിക്കുന്നു.',
    'കുഞ്ഞിൻറെ കാൽവിരൽ നഖങ്ങൾ വളരാൻ തുടങ്ങി. പക്ഷേ കൈവിരലുകളിലെ നഖങ്ങളുടെ അത്ര വേഗതയിൽ അല്ല അവ വളരുക.',
    'ഇപ്പോൾ മുതൽ കുഞ്ഞ് കൂടുതൽ നേരവും ഉറക്കത്തിലായിരിക്കും. കുഞ്ഞിൻറെ അനക്കം ഇല്ലെന്നു കരുതി ആകുലപ്പെടേണ്ട.',
  ],
);

const WeekByWeekModel week20 = WeekByWeekModel(
  title: 'Week 20',
  // imgUrl: '',
  motherDataEn: [
    'You are now in the midpoint of your pregnancy. Half way to see your little one.',
    'The top of the uterus reaches the level of your umbilicus in other words your navel.',
    'Your navel will start to protrude out a little. When you progress in your pregnancy, it will start protrude quite a bit.',
    'Vaginal discharge most probably would have started from the very beginning of your pregnancy. It will start to get more noticeable and prominent now.'
        'Along with vaginal discharge you experience itching and burning sensation in your vagina, contact your doctor.',
    'When you progress more into your pregnancy you will tend to look a little puffy. This is quite normal because as your pregnancy progresses your body will retain water more and more, even your feet will get swollen because of this. Try to put feet up from time to time to help reduce a condition called oedema.'
  ],
  motherDataMl: [
    'ഇപ്പോൾ നിങ്ങൾ ഗർഭ കാലത്തിൻറെ പകുതി എത്തിയിരിക്കുന്നു. അതായത് നിങ്ങളുടെ അരുമക്കുഞ്ഞിന്റെ മുഖം കാണാനുള്ള കാത്തിരിപ്പിൽ പകുതി ദൂരം പിന്നിട്ടു കഴിഞ്ഞു.',
    'ഗർഭപാത്രത്തിന്റെ മുകൾഭാഗം ഇപ്പോൾ നിങ്ങളുടെ പൊക്കിളിനു സമാന്തരമായി വന്നിട്ടുണ്ടാവും.',
    'നിങ്ങളുടെ പൊക്കിൾച്ചുഴി അല്പം പുറത്തേക്ക് തള്ളി വരാൻ തുടങ്ങും. വയറിൻറെ വലുപ്പം കൂടുമ്പോൾ ഇനിയും പുറത്തേക്ക് ഉന്തിയേക്കാം.',
    'യോനി സ്രാവം (വജൈനൽ ഡിസ്ചാർജ്-vaginal discharge) ഗർഭാവസ്ഥയുടെ ആദ്യ കാലം മുതൽ തന്നെ ഉണ്ടാവാമെങ്കിലും ഇപ്പോൾ അത് കൂടുതൽ പ്രകടമായി കാണപ്പെടുന്നു.',
    'യോനി സ്രാവം മൂലം യോനിയിൽ ചൊറിച്ചിലോ നീറ്റലോ അനുഭവപ്പെട്ടാൽ ഡോക്ടറെ കണ്ട് ചികിത്സ തേടണം.',
    'ഇനി നിങ്ങൾക്ക് അല്പം തടി കൂടിയതായി തോന്നി തുടങ്ങാം. നിങ്ങളുടെ ശരീരം ഇഷ്ടംപോലെ ജലം സംഭരിച്ച് വയ്ക്കാൻ തുടങ്ങുന്നത് കൊണ്ടാണ് ഇത്. കാൽപ്പാദങ്ങൾ വീക്കം ഉള്ളതായി കാണപ്പെടുന്നതും സാധാരണയാണ് നീരുവന്നു വീർക്കുന്നത് ഒഴിവാക്കാൻ ഇടയ്ക്കിടെ കാലുകൾ പൊക്കി വെച്ച് ഇരിക്കുന്നത് നല്ലതാണ്.',
  ],
  babyDataEn: [
    'Your baby now weighs around 320 grams.',
    'If your little one is a girl, her uterus would have started to develop now.',
    'Your baby\'s heart fully functional and is beating at 120 - 160 beats per minute'
  ],
  babyDataMl: [
    'ഇപ്പോൾ കുഞ്ഞിൻറെ ഭാരം ഏകദേശം 320 ഗ്രാം ആണ്.',
    'നിങ്ങളുടെ കുട്ടി പെൺകുട്ടിയാണെങ്കിൽ അവളുടെ ഗർഭപാത്രം രൂപംകൊള്ളാൻ തുടങ്ങിയിരിക്കും.',
    'കുട്ടിയുടെ ഹൃദയം പൂർണ്ണ പ്രവർത്തനസജ്ജമായി കഴിഞ്ഞു. ഇപ്പോൾ മിനിറ്റിൽ 120-160 പ്രാവശ്യം മിടിക്കുന്നുണ്ട്.',
  ],
);

const WeekByWeekModel week21 = WeekByWeekModel(
  title: 'Week 21',
  // imgUrl: '',
  motherDataEn: [
    'The magical experience you enjoy when your baby moves inside can now be felt by others. Your husband and family can feel the baby move by placing their hands on your abdomen. They too can now feel your wonderful experience.',
    'Try to stay active all the time. Prenatal exercises are really good and you should definitely continue without fail but if you are not able to do that atleast go for a walk regularly.',
    'Often pregnant women might notice swelling in their legs to avoid this make sure you do these two things \n a. Avoid standing for longer period of timen b. Put ur feet up when you sit down.'
  ],
  motherDataMl: [
    ' ഈ ആഴ്ച മുതൽ വർണ്ണനാതീതമായ, അസുലഭമായ അനുഭൂതികൾ നിങ്ങൾക്ക് ഉണ്ടാവും! അതെ; കുഞ്ഞിൻറെ ചലനങ്ങൾ നിങ്ങൾക്ക് തിരിച്ചറിയാൻ കഴിയും! നിങ്ങളുടെ ഭർത്താവിനും മറ്റു കുടുംബാംഗങ്ങൾക്കും ഒക്കെ നിങ്ങളുടെ വയറ്റിൽ കൈ വച്ചാൽ ഇത് അനുഭവിച്ചറിയാൻ കഴിയും.',
    ' എപ്പോഴും ആക്ടീവ് ആയിരിക്കാൻ ശ്രമിക്കുക. വ്യായാമങ്ങൾ ഒക്കെ കൃത്യമായി ചെയ്യേണ്ടത് അത്യാവശ്യമാണ്. മറ്റു വ്യായാമങ്ങൾ ചെയ്യാൻ എന്തെങ്കിലും ആരോഗ്യ പ്രശ്നങ്ങൾ ഉണ്ടെങ്കിലും നടക്കാൻ പോകുന്നതെങ്കിലും പതിവാക്കുക.',
    ' മിക്ക ഗർഭിണികൾക്കും കാല് നീര് വയ്ക്കാറുണ്ട്. ഇതൊഴിവാക്കാൻ താഴെപ്പറയുന്ന രണ്ട് കാര്യങ്ങൾ ശ്രദ്ധിക്കുക.\na)അധികനേരം നിൽക്കുന്നത് ഒഴിവാക്കുക.\nb)ഇരിക്കുമ്പോൾ പാദങ്ങൾ ഉയർത്തി വയ്ക്കാൻ ശ്രദ്ധിക്കുക.',
  ],
  babyDataEn: [
    'Your baby\'s movements can sometimes be unpredictable. One day she will be moving vigorously and other day her movements might be mild. So dont worry if your cant feel the movements she might be sleeping. Baby\'s sleep a lot this time.',
    'Your baby\'s blood cells were made by the liver and spleen. Now this job is taken over by your baby\'s bone marrow.'
  ],
  babyDataMl: [
    'ഈ സമയത്തെ കുഞ്ഞിൻറെ ചലനങ്ങൾ പ്രവചിക്കാൻ കഴിയില്ല. ചിലപ്പോൾ വളരെ ഊർജ്ജസ്വലതയോടെയാവും ചലനം. മറ്റു ചിലപ്പോൾ നനഞ്ഞ മട്ടിൽ ആവും. കുഞ്ഞിൻറെ ചലനം കുറവാണെന്ന് കരുതി ആശങ്കപ്പെടേണ്ടതില്ല. കൂടുതൽ സമയവും അവൻ/അവൾ ഉറക്കത്തിലാണ്.',
    'കുഞ്ഞിൻറെ രക്തകോശങ്ങൾ ഉത്പാദിപ്പിച്ചിരുന്നത് കരളും പ്ലീഹയും ചേർന്നായിരുന്നു. ഇപ്പോൾ ഈ ജോലി മജ്ജ ഒറ്റയ്ക്ക് ഏറ്റെടുത്തുകഴിഞ്ഞു.',
  ],
);

const WeekByWeekModel week22 = WeekByWeekModel(
  title: 'Week 22',
  // imgUrl: '',
  motherDataEn: [
    'Your walking style will change. You will start to feel the effects of changes in your centre of gravity which results in your gait(walking manner) to be changed while you walk.',
    'It\'s time to say bye bye to your pretty high heels for sometime. You dont need to switch to flats, you can use footwear with slight heels. You will be more comfortable in that.',
    'Haemorrhoids(piles) are a common problem in pregnancy. Dont try to treat it by yourself especially if it is very painful or if there is any sort of bleeding. Your doctor might provide you with a stool softener or some ointment to relief the pain and discomfort. In order to prevent this make sure you dont get constipation.'
  ],
  motherDataMl: [
    'ഇനി നിങ്ങളുടെ നടപ്പിന്റെ ശൈലി മാറിത്തുടങ്ങും. വയറിൻറെ ഭാരം ബാലൻസ് ചെയ്യാൻ ശരീരം ശ്രമിക്കുന്നത് കൊണ്ടാണ് ഇത്.',
    'ഹൈഹീൽ ചെരുപ്പുകളോട് വിട പറയേണ്ട സമയമാണിത്. വളരെ ചെറിയ ഹീലുള്ള ചെരിപ്പുകളാണ് ഇനി കുറച്ചു കാലത്തേക്ക് നിങ്ങൾക്ക് നല്ലത്.',
    'ഗർഭകാലത്ത് സാധാരണയായി കണ്ടുവരുന്ന ഒരു പ്രശ്നമാണ് മലബന്ധവും, മൂലക്കുരു പോലുള്ള അവസ്ഥയും. ഇതിന് ഒരിക്കലും സ്വയം ചികിത്സിക്കാതിരിക്കുക. പ്രത്യേകിച്ചും, വേദനയോ രക്തസ്രാവമോ ഉണ്ടെങ്കിൽ നിങ്ങളുടെ ഡോക്ടർ മലംമുറുകാതിരിക്കാനുള്ള മരുന്നുകളും വേദനയ്ക്കുള്ള ഓയിൻമെൻറും തരും. മുൻപ് പറഞ്ഞതുപോലെ, നാരടങ്ങിയ ഭക്ഷണങ്ങൾ ധാരാളം കഴിയ്ക്കുക.',
  ],
  babyDataEn: [
    'Your baby is now 25cm long and weighs around 460 gms.',
    'Baby\'s skin will be covered with a layer of fine, soft hairs called lanugo. This will disappear before the baby is born or soon after birth.',
    'Taste buds have started to form in your baby\'s tongue. Now soon it will start to sense taste.',
    'Your baby will start feel the sensation of touch now. Baby\'s brain and nerve endings can process this now. Your baby will start to experiment this by touching and feeling his or her face or anything else within its reach.',
    'If you are having a boy, this week his testes will begin to descend from the abdomen into his scrotum.'
  ],
  babyDataMl: [
    'കുഞ്ഞിനിപ്പോൾ 25 സെൻറീമീറ്റർ നീളവും, 460 ഗ്രാം വരെ ഭാരവും ഉണ്ടായിരിക്കും.',
    'ഇപ്പോൾ കുഞ്ഞിൻറെ ദേഹമാസകലം ലാനുഗോ(lanugo) എന്ന് വിളിക്കപ്പെടുന്ന ചെറു രോമങ്ങളുടെ ആവരണം ഉണ്ടാകും. ഇത് കുട്ടി ജനിക്കുന്നതിനു മുമ്പായും, ജനിച്ചു കഴിഞ്ഞ് ചില ദിവസങ്ങൾക്കുള്ളിലായും കൊഴിഞ്ഞുപോകും.',
    'കുട്ടിയുടെ നാക്കിൽ രസമുകുളങ്ങൾ ഉണ്ടാവാൻ തുടങ്ങിയിരിക്കുന്നു. അടുത്തുതന്നെ അവന് രുചികളൊക്കെ അറിയാൻ തുടങ്ങും.',
    'തലച്ചോറും നാഡികളും പ്രവർത്തനക്ഷമമായി തുടങ്ങിയതിനാൽ, കുഞ്ഞിനിപ്പോൾ സ്വന്തം മുഖം ഉൾപ്പെടെ, തൊടാൻ കഴിയുന്നതെല്ലാം തൊട്ടു മനസ്സിലാക്കാൻ കഴിയും.',
    'നിങ്ങളുടെ കുട്ടി ആണാണെങ്കിൽ, അവൻറെ വൃഷണങ്ങൾ അടിവയറിന്റെ ഭാഗത്തുനിന്നും, വൃഷണസഞ്ചിയിലേക്ക് ഇറങ്ങിവരാൻ തുടങ്ങും.',
  ],
);

const WeekByWeekModel week23 = WeekByWeekModel(
  title: 'Week 23',
  // imgUrl: '',
  motherDataEn: [
    'Your might feel like your baby is doing a somersault inside your belly. His/her movements are now very evident.',
    'Sides of your lower abdomen may start to ache this is because the round ligaments which holds up the uterus are stretching. To get some relief from this pain try to lie down and rest on the same side which pains.',
    'Sitting for a longer time is not advisable as your lower ribs may ache as the uterus pushes against them. Try not sit for a long time and when you sit down try to lean back a little so that your uterus does not push against lower ribs directly.'
  ],
  motherDataMl: [
    'കുട്ടി ഇപ്പോൾ സർക്കസ്സു കാരനെ പോലെ മലക്കം മറിയുന്ന തായി നിങ്ങൾക്ക് അനുഭവപ്പെടും. കുഞ്ഞിൻറെ ചലനങ്ങൾ ഇപ്പോൾ സ്പഷ്ടവും വ്യക്തവുമായിരിക്കും.',
    'ഈ സമയത്ത് നിങ്ങളുടെ അടിവയറിന്റെ വശങ്ങളിൽ വേദന അനുഭവപ്പെടാം. ഗർഭപാത്രത്തിനെ താങ്ങിനിർത്തുന്ന പേശികൾ(round ligaments) വലിയുന്നതിനാലാണ് ഈ വേദന ഉണ്ടാവുന്നത്. ഏത് വശത്താണോ വേദനയുള്ളത്, ആവശം ചരിഞ്ഞു കിടക്കുന്നത് ആശ്വാസമേകും.',
    'കൂടുതൽ നേരം ഇരിക്കുന്നത് ഈ സമയത്ത് നന്നല്ല. അങ്ങനെ ചെയ്താൽ ഗർഭപാത്രം, ഏറ്റവും താഴെയുള്ള വാരിയെല്ലിനെ തള്ളുകയും, അതിൽ വേദന ഉണ്ടാവുകയും ചെയ്യും. ഇരിക്കുമ്പോൾ അല്പം പുറകിലേക്ക് ചാഞ്ഞ് ഇരിക്കാൻ എപ്പോഴും ശ്രദ്ധിക്കുക. അങ്ങനെയാവുമ്പോൾ, ഗർഭാശയം വാരിയെല്ലിനെ തള്ളുകയില്ല.',
  ],
  babyDataEn: [
    'Your baby is growing fast. He/she now weighs around 500 grams',
    'Baby\'s pancreas are developing and even started to produce insulin.',
    'Your baby can hear your heart beat. The bones in the baby\'s middle ear are hardening now as a result, this enables your baby to hear muffled sounds.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ വളർച്ച ത്വരിതഗതിയിൽ ആയിരിക്കുന്നു. ഇപ്പോൾ 500 ഗ്രാം എങ്കിലും ഭാരം ഉണ്ടായിരിക്കും.',
    'ഈ ആഴ്ച കുട്ടിയുടെ പാൻക്രിയാസ് വികസിക്കുകയും, ഇൻസുലിൻ ഉത്പാദിപ്പിക്കാൻ തുടങ്ങുകയും ചെയ്യും.',
    'വീണ്ടുമൊരു സന്തോഷം പകരുന്ന വസ്തുത; കുഞ്ഞിന് നിങ്ങളുടെ ഹൃദയമിടിപ്പ് വ്യക്തമായി കേൾക്കാൻ കഴിയും. കുട്ടിയുടെ ചെവിയിലെ അസ്ഥികൾ കനം വെച്ചു തുടങ്ങിയതിനാൽ ഇനി ചെറിയ ശബ്ദങ്ങൾ പോലും കേട്ടു തുടങ്ങും.',
  ],
);

const WeekByWeekModel week24 = WeekByWeekModel(
  title: 'Week 24',
  // imgUrl: '',
  motherDataEn: [
    'Have you looked yourself in the mirror?? You look fabulous now and no one can mistake you for not being pregnant. Four more months to go, you will soon see your baby.',
    'Continue with your exercise and stay fit it can help you out a lot.',
    'With your growing belly and uterus you might start to feel uncomfortable while lying down on your side. Pillows can help a lot this time. Try to place a pillow under your belly to support your uterus while you lie on the side. You even place a pillow between your knees. This may help you sleep in peace.',
    'Between 24th and 28th week of pregnancy, your doctor may advise you do a blood test to determine whether you have diabetes or not.'
  ],
  motherDataMl: [
    'കണ്ണാടി നോക്കുമ്പോൾ നിങ്ങൾ ശ്രദ്ധിച്ചിട്ടുണ്ടാവും; നിങ്ങളുടെ മുഖം തിളങ്ങുന്നതും, ഭംഗിയുള്ളതും ആയി മാറിയിരിക്കുന്നു. അക്ഷരാർത്ഥത്തിൽ നിങ്ങൾ കൂടുതൽ സുന്ദരിയായിരിക്കുന്നു! ഗർഭിണികളുടെ പ്രത്യേകതയാണ് ഇത്.നിങ്ങളുടെ കുഞ്ഞുവാവയുടെ പൊന്മുഖം കാണാൻ ഇനി നാലുമാസം കൂടി കാത്തിരുന്നാൽ മതി.',
    'വ്യായാമങ്ങൾ ഒക്കെ കൃത്യമായി പരിശീലിക്കുക. ഇത് പ്രസവത്തിന് വളരെ സഹായകമായിരിക്കും.',
    'നിങ്ങളുടെ വയറും ഗർഭാശയവും വലുതായി കൊണ്ടിരിക്കുന്നതിനാൽ, ചരിഞ്ഞു കിടക്കുമ്പോഴും ബുദ്ധിമുട്ട് അനുഭവപ്പെടാം.ചരിഞ്ഞ് കിടക്കുമ്പോൾ ഒരു ചെറിയ തലയിണ വയറിൻറെ അടിയിലായി വെച്ചു കൊടുക്കുക. ഒപ്പം ഒരു തലയിണ കാൽമുട്ടുകളുടെ ഇടയിൽ വച്ച് കിടക്കുന്നത് ഉറക്കം സുഗമമാക്കും.',
    '24 ആഴ്ചയ്ക്കും 28 ആഴ്ചയ്ക്കും ഇടയിൽ ഡോക്ടർ നിങ്ങൾക്ക് ഒരു രക്തപരിശോധന ശുപാർശ ചെയ്തേക്കാം. ഇത് നിങ്ങൾക്ക് പ്രമേഹം ഉണ്ടോ എന്ന് അറിയുന്നതിനാണ്.',
  ],
  babyDataEn: [
    'Baby is growing rapidly it now weighs around 630 grams.',
    'Baby\'s lungs are developing well. Its lungs have started to develop blood vessels. Now these blood vessels will soon take up the responsibility of getting oxygen into the blood stream.',
    'Have you ever wondered how a new born can breathe air as soon as they are born? It is due to a substance called surfactant. Baby\'s lungs start to produce this substance this week and its main responsibility is to allow the air sacs in the lungs to inflate and prevents them from collapsing. This enables babies to breathe air as soon as they are born.',
    'Baby\'s sleep cycle is just opposite of ours. We sleep in the night and are awake during the day ...RIGHT!!. Well they sleep mostly during the day and are awake during the night. This is why most new born babies struggle to adjust to our sleep cycle.',
    'By now your baby is developing the ability to suck',
    'As mentioned earlier, baby\'s can hear muffled sounds. So just try to talk to them let them know your voice, also try to play some lovely music. They will definitely wont understand what your talking also the words in the music, but they can understand the tone of your voice, rhythm and beats of the music.'
  ],
  babyDataMl: [
    'ഇപ്പോൾ കുഞ്ഞിന് 630 ഗ്രാം ഭാരം ഉണ്ടായിരിക്കും.',
    'കുഞ്ഞിൻറെ ശ്വാസകോശം നന്നായി വികസിച്ചുകൊണ്ടിരിക്കുന്നു. ശ്വാസകോശ രക്തക്കുഴലുകൾ രൂപം പ്രാപിച്ചു തുടങ്ങി. വൈകാതെ ഈ രക്തക്കുഴലുകൾ രക്തത്തിലേക്ക് ആവശ്യമായ ഓക്സിജൻ സ്വീകരിച്ചു തുടങ്ങും.',
    'ഗർഭപാത്രത്തിനുള്ളിൽ ഒരിക്കലും ശ്വസിച്ചിട്ടില്ലാത്ത കുട്ടി ജനിച്ച ഉടനെ തന്നെ ശ്വസിച്ചു തുടങ്ങുന്നതെങ്ങനെ എന്ന് ആലോചിച്ചിട്ടുണ്ടോ?! ഈ ആഴ്ച മുതൽ കുഞ്ഞിന്റെ ശ്വാസകോശത്തിൽ ഉൽപ്പാദിപ്പിക്കപ്പെടുന്ന സർഫക്ടൻ്റ് (surfactant)എന്ന പദാർത്ഥമാണ് അതിന് കാരണം.ഇത് ശ്വാസകോശത്തിൽ വായുഅറ ഉണ്ടാക്കി അതിനെ ഊതി വീർപ്പിക്കുന്നതുപോലെ ചെയ്യുന്നു. ഇതുകൊണ്ടാണ് ജനിച്ച ഉടനെ തന്നെ കുഞ്ഞുങ്ങൾ ശ്വസിച്ചു തുടങ്ങുന്നത്!',
    'കുഞ്ഞിൻറെ ഉറക്കം നമ്മളുടെതിൽനിന്ന് വ്യത്യസ്തമാണ്. പകൽ ഉറങ്ങുകയും രാത്രിയിൽ ഉണർന്നിരിക്കുന്നതുമാണ് ഗർഭത്തിലെ കുഞ്ഞുങ്ങളുടെ ശീലം. അതുകൊണ്ടുതന്നെ, ജനനശേഷം കുട്ടിക്ക് നമ്മുടെ ഉറക്കസമയവുമായി പൊരുത്തപ്പെടാൻ കുറച്ചധികം സമയം വേണ്ടിവരും.',
    'ഇപ്പോൾ മുതൽ കുട്ടി ഉറിഞ്ചി കുടിക്കുന്നതിനുള്ള ശേഷി നേടും.',
    'മുമ്പ് സൂചിപ്പിച്ചിട്ടുള്ളത് പോലെ കുഞ്ഞ് ശബ്ദങ്ങൾ തിരിച്ചറിയാൻ തുടങ്ങി. നിങ്ങൾ കുട്ടിയോട് സംസാരിക്കണം. അതുപോലെതന്നെ, നല്ല നല്ല പാട്ടുകൾ കേൾപ്പിക്കുക. നിങ്ങൾ പറയുന്ന വാക്കുകളോ പാട്ടിൻറെ വരികളോ കുഞ്ഞിന് മനസ്സിലാകില്ല. പക്ഷേ, നിങ്ങളുടെ സ്വരവും സംസാരശൈലിയും തിരിച്ചറിയാനും ആസ്വദിക്കാനും കഴിയും.',
  ],
);

const WeekByWeekModel week25 = WeekByWeekModel(
  title: 'Week 25',
  // imgUrl: '',
  motherDataEn: [
    'Dont get alarmed if your face is changing, it is all part of the pregnancy. Your face will look rounder, sometimes there will be some changes on your nose, it might look a little plumper. But dont worry after delivery you will soon be back to your old self.',
    'Similarly you can see some changes in your skin as well. There might be some skin discolouration(dark patches) in your face, neck, abdomen and even around your mouth. Again, this will also fade away and your skin tone will come back soon after you give birth to your little one.'
  ],
  motherDataMl: [
    'മുഖത്തിന് മാറ്റങ്ങളുണ്ടാകുന്നത് ഗർഭകാലത്ത് സ്വാഭാവികമാണ്. മുഖം വട്ടത്തിൽ ആവുകയും മൂക്ക് തടിച്ചത് പോലെ തോന്നുകയും ചെയ്യാം പ്രസവശേഷം എല്ലാം പഴയപടിയാകും.',
    'അതുപോലെതന്നെ, നിങ്ങളുടെ മുഖത്തും, കഴുത്തിലും, വായ്ക്ക് ചുറ്റും, വയറിലും ഒക്കെ ചർമത്തിന് നിറം മാറ്റം സംഭവിക്കാം. കറുത്തപാടുകൾ പോലെ കാണപ്പെടുന്ന ഇവയും പ്രസവശേഷം പൂർണമായും മാറുന്നതാണ്.',
  ],
  babyDataEn: [
    'Your baby is having fun inside your womb. As its hands are fully developed and the sense of touch is well developed. She spends most of her time trying to touch everything around her.',
    'Your baby\'s spine has also completely developed.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുഞ്ഞിന് ഉള്ളിൽ കിടന്നു കളിക്കുന്നതാണ് ഇപ്പോൾ പ്രധാന പരിപാടി. കുഞ്ഞിൻറെ കൈകൾ പൂർണ്ണ വികാസം പ്രാപിക്കുകയും, തൊട്ടറിയാനുള്ള ശേഷി വർധിക്കുകയും ചെയ്തിട്ടുണ്ട്.കുട്ടി ഇപ്പോൾ ചുറ്റിലുമുള്ള എല്ലാത്തിനെയും തൊട്ടുനോക്കാൻ ശ്രമിച്ചു കൊണ്ടേയിരിക്കും.',
    'കുട്ടിയുടെ നട്ടെല്ലും പൂർണ്ണമായി വികസിച്ചിരിക്കുന്നു.',
  ],
);

const WeekByWeekModel week26 = WeekByWeekModel(
  title: 'Week 26',
  // imgUrl: '',
  motherDataEn: [
    'Try to get all the immunisation in your pregnancy without fail. If you haven\'t received your tetanus toxoid injection yet, get it done now.',
    'False alarms can happen a lot now. Sometimes you might feel your uterus tighten and relax at irregular intervals, these might feel like painless contractions. Dont worry this wont be the actual labour pain this might be just Braxton-Hicks contractions. These contractions occur in order to prepare your uterus for the birth.'
  ],
  motherDataMl: [
    'ഗർഭകാലത്തെ എല്ലാ പ്രതിരോധ കുത്തിവെപ്പുകളും കൃത്യസമയത്ത് തന്നെ എടുക്കാൻ ശ്രദ്ധിക്കുക. ടെറ്റനസ്(tetanus texoid) കുത്തിവെപ്പ് എടുക്കേണ്ട സമയമാണിത്.',
    'തെറ്റിദ്ധാരണ മൂലം ഉണ്ടാകുന്ന ആശങ്കകൾ ഗർഭകാലത്ത് കൂടുതലായി കണ്ടുവരുന്നു. അതിലൊന്നാണ് "ബ്രാക്സ്റ്റൺ ഹിക്സ് സങ്കോചം" (Braxton hiks contracion).നിങ്ങളുടെ ഗർഭാശയം ഇടയ്ക്കിടെ സങ്കോചിക്കുകയും പൂർവസ്ഥിതിയിൽ ആവുകയും ചെയ്യുന്ന പ്രതിഭാസമാണ് ഇത്. വേദനയില്ലാത്ത ഒരു അനുഭവമാണ് ഇത്. പലപ്പോഴും ഇതിനെ പ്രസവ വേദനയായി തെറ്റിദ്ധരിക്കപ്പെടാറുണ്ട്. പ്രസവത്തിനായി ഗർഭപാത്രത്തിനെ തയ്യാറാക്കുന്നതിനുള്ള ശരീരത്തിൻറെ ഉപായമാണിത്.',
  ],
  babyDataEn: [
    'Now your baby will weigh around 800 grams.',
    'Baby\'s skin is now getting less transparent.',
    'Your baby\'s brain is also developing well. The brain is now able to register brain wave activity for sight and hearing.',
    'Baby\'s body still looks lean.'
  ],
  babyDataMl: [
    'ഇപ്പോൾ കുഞ്ഞിൻറെ ഭാരം ഏകദേശം 800 ഗ്രാം ആയിരിക്കും.',
    'കുഞ്ഞിൻറെ ചർമം സുതാര്യത കുറഞ്ഞ് കട്ടിയുള്ളതായിരിക്കുന്നു.',
    'തലച്ചോറിൻറെ വികാസം നല്ല രീതിയിൽ മുന്നേറുന്നു. കാഴ്ചയും കേൾവിയും തിരിച്ചറിയാനുള്ള തലച്ചോറിന്റെ കഴിവ് വികസിക്കുന്നു.',
    'കുഞ്ഞിൻറെ ശരീരം ഇപ്പോഴും വളരെ ചെറുതായിരിക്കും.',
  ],
);

const WeekByWeekModel week27 = WeekByWeekModel(
  title: 'Week 27',
  // imgUrl: '',
  motherDataEn: [
    'You will gain weight rapidly, so please take care of what you eat. Make sure you gain 1 or 2 kilos per month and not more than that.',
    'You might feel difficulty in breathing now. This shortness of breath is a common scenario in pregnancy which occurs when your baby pushes against your ribs, which gives your lungs less space to expand.',
    'The amniotic fluid kind of acts like a swimming pool for your baby. It allows her to swim and explore around. Also at the same time the fluid cushions your baby really well from any falls.',
    'If you are lucky you will be able to see parts of your baby\'s body moving around in your abdomen as they press against your body.'
  ],
  motherDataMl: [
    'നിങ്ങളുടെ ശരീരഭാരം ക്രമാനുഗതമായി വർദ്ധിച്ചുവരും. മാസത്തിൽ ഒന്നോ രണ്ടോ കിലോ മാത്രം കൂടുന്ന വിധത്തിൽ ഭക്ഷണം ക്രമീകരിക്കുക. അമിതഭാരം ഉണ്ടാവാതിരിക്കാൻ പ്രത്യേകം ശ്രദ്ധിക്കണം.',
    'ഗർഭകാലത്ത് ഉടനീളം കണ്ടുവരുന്ന ഒന്നാണ് ശ്വാസമെടുക്കാനുള്ള ബുദ്ധിമുട്ട്.കുഞ്ഞ്, വാരിയെല്ലുകളിൽ നിരന്തരം സമ്മർദ്ദം ചെലുത്തുന്നതിനാൽ ശ്വാസകോശത്തിന് വേണ്ടത്ര വികസിക്കാൻ സാധിക്കാതെ വരുന്നതുകൊണ്ടാണ് ഇങ്ങനെ അനുഭവപ്പെടുന്നത്.',
    'കുഞ്ഞ് ഒരു സിമ്മിങ് പൂളിൽ എന്നപോലെയാണ് അമ്നിയോട്ടിക് ദ്രവത്തിനുള്ളിൽ കിടക്കുന്നത്. അതുകൊണ്ട് അവന്/അവൾക്ക് നീന്തി നീന്തി ചുറ്റിക്കറങ്ങാൻ സാധിക്കും. അതേസമയം അമ്നിയോട്ടിക് ദ്രവം ഒരു കുഷ്യൻ പോലെ പ്രവർത്തിച്ച കുഞ്ഞിനെ തട്ടിൽ നിന്നും മുട്ടലിൽ നിന്നുമൊക്കെ സംരക്ഷിക്കുന്നു.',
    'കുഞ്ഞിൻറെ അനക്കം ചിലപ്പോഴൊക്കെ നിങ്ങളുടെ വയറിനെ തള്ളിക്കൊണ്ടായിരിക്കും. അങ്ങനെയുള്ള ചലനം വയറിനു മുകളിലൂടെ വ്യക്തമായി കാണാൻ നിങ്ങൾക്കു ഭാഗ്യം ഉണ്ടാകാം.',
  ],
  babyDataEn: [
    'By this week you have come to the end of the second trimester in your pregnancy.',
    'Your baby\'s lungs, liver and immune system are all getting fully developed. Around this week your baby\'s length would have tripled or even quadrupled from the length she was when you were around 12 weeks pregnant.',
    'Baby\'s skin kind of looks a little wrinkled and red now.',
    'The fat that was deposited underneath the baby\'s skin earlier will slowly start to even out the baby\'s skin texture.',
    'Your baby\'s hair on its scalp is now getting thicker.',
    'Baby\'s eyelashes are also developing this week.'
  ],
  babyDataMl: [
    'ഈ ആഴ്ച യോടു കൂടി നിങ്ങളുടെ ഗർഭകാലത്തിന്റെ രണ്ടാം ഘട്ടവും വിജയകരമായി അവസാനിക്കും.',
    'ഈയാഴ്ച കുട്ടിയുടെ ശ്വാസകോശം, കരൾ, പ്രതിരോധവ്യവസ്ഥ എന്നിവ പൂർണമായും വികസിച്ചു കഴിയും.കുഞ്ഞിൻറെ ഇപ്പോഴത്തെ വലുപ്പം പന്ത്രണ്ടാം ആഴ്ചയിലേതിനേക്കാൾ മൂന്നോ നാലോ മടങ്ങ് കൂടുതൽ ആവും.',
    'കുഞ്ഞിൻറെ ചർമം അല്പം ചുളിവുകളോടുകൂടിയും ചുവപ്പ് നിറത്തോടുകൂടിയും കാണപ്പെടും.',
    ' കുട്ടിയുടെ ചർമത്തിന് അടിയിൽ സംഭരിച്ചുകൊണ്ടിരിക്കുന്ന കൊഴുപ്പ്, പതുക്കെപ്പതുക്കെ മുഴുവൻ ചർമ്മ വ്യവസ്ഥയിലേക്കും വ്യാപിക്കാൻ തുടങ്ങും.',
    'കുഞ്ഞിൻറെ തലമുടി കട്ടി കൂടിയതായി മാറുന്നു.',
    'കൺപീലികളും ഈ ആഴ്ച കൂടുതൽ വികസിതമാവും.',
  ],
);

const WeekByWeekModel week28 = WeekByWeekModel(
  title: 'Week 28',
  // imgUrl: '',
  motherDataEn: [
    'When you cough or sneeze you might lose few drops of urine. Dont be embarrassed this is quite normal. Try to learn about Kegel\'s exercises, this would help in strengthening your pelvic muscles and also make them supple. If you want you can do these exercises now but most importantly make sure you dont skip these exercises after delivery.',
    'Did you do the blood test to determine whether you diabetic or not? If not do it right away.',
    'This is very important. If you belong to the blood group with Rh Negative for eg. O Negative, B Negative and your husbands is Rh Positive. Your doctor will advice you to take an injection right away to prevent any problems for the baby. But this injection is optional at this stage',
    'If your baby is born with Rh Positive and you are Rh Negative you have to immediately get an injection soon after birth.'
  ],
  motherDataMl: [
    'ചുമയ്ക്കുമ്പോഴും തുമ്മുമ്പോഴും നിങ്ങളറിയാതെ ചെറിയതോതിൽ മൂത്രവിസർജനം ഉണ്ടായേക്കാം. ലജ്ജിക്കേണ്ടതായി ഇതിൽ ഒന്നുമില്ല. എല്ലാ ഗർഭിണികൾക്കും ഇത് സ്വാഭാവികമായി ഉണ്ടാകുന്നതാണ്. "കെഗൽസ് വ്യായാമമുറ" മനസ്സിലാക്കി പരിശീലിക്കാൻ ശ്രമിക്കണം.ഈ വ്യായാമം നിങ്ങളുടെ പെൽവിക് പേശികളെ ബലമുള്ളതും, വഴങ്ങുന്നതും ആക്കിത്തീർക്കും. ഇപ്പോൾമാത്രമല്ല പ്രസവശേഷവും കെഗൽസ് വ്യായാമം നിർബന്ധമായും തുടരണം.'
        'രക്തത്തിലെ പ്രമേഹം പരിശോധിച്ചിട്ടില്ലെങ്കിൽ ഉടനെതന്നെ അത് ചെയ്യുക.'
        'നിങ്ങളുടെ രക്തം നെഗറ്റീവ് ഗ്രൂപ്പ് ആവുകയും, നിങ്ങളുടെ ഭർത്താവിന്റെ രക്തഗ്രൂപ്പ് പോസിറ്റീവ് ആവുകയും ചെയ്താൽ കുട്ടിക്ക് എന്തെങ്കിലും കുഴപ്പം ഉണ്ടാവാതിരിക്കാൻ ഡോക്ടർ നിങ്ങളോട് ഒരു കുത്തിവെപ്പ് എടുക്കാൻ നിർദ്ദേശിച്ചേക്കാം.ഈ സമയത്ത് അത്യാവശ്യമെങ്കിൽ മാത്രം ഇത് എടുത്താൽ മതി.'
        'നിങ്ങൾ നെഗറ്റീവ് രക്തഗ്രൂപ്പും നിങ്ങളുടെ കുഞ്ഞ് പോസിറ്റീവ് രക്ത ഗ്രൂപ്പും ആണെങ്കിൽ, പ്രസവിച്ച എത്രയും പെട്ടെന്ന് തന്നെ നിങ്ങൾക്ക് ഒരു കുത്തിവെപ്പ് എടുക്കേണ്ടിവരും.'
  ],
  babyDataEn: [
    'Hurray!!! Your baby now weighs around 1 Kg.',
    'Baby\'s hair is now getting thicker and is getting darker as well.',
    'The lungs are more developed now. So if the baby is born right now, his lungs will be capable to breathe air.',
    'The time has come to see the world a little. Your baby\'s eyes are partially open and it is sensitive to light.',
    'Your baby\'s brain is now developing. Till this week the surface of baby\'s brain was all smooth, but now it has started to develop wrinkles called sulci and gyri. This is the usual process in the brain development.'
  ],
  babyDataMl: [
    'ആഹാ...! കുഞ്ഞിൻറെ ഭാരം ഒരു കിലോ ആയിരിക്കുന്നു!',
    'മുടിക്ക് കട്ടിയും കറുപ്പുനിറവും വർദ്ധിച്ചിരിക്കും.',
    'ശ്വാസകോശങ്ങൾ പൂർണ്ണ സജ്ജമായിട്ടുണ്ട്. ഇപ്പോൾതന്നെ ജനിച്ചാൽ പോലും കുട്ടിക്ക് ശ്വസിക്കാൻ കഴിയും!',
    'കുഞ്ഞിൻറെ കണ്ണുകൾ ഇപ്പോൾ അല്പം തുറക്കാൻ കഴിയും. വെളിച്ചം തിരിച്ചറിയാനും സാധിക്കും.',
    'തലച്ചോർ, വികാസത്തിന്റെ പ്രധാന ഘട്ടത്തിലാണ് ഇപ്പോൾ ഉള്ളത്. ഈ ആഴ്ച മുതലാണ് തലച്ചോറിലെ ചുളിവുകൾ ഉണ്ടായിത്തുടങ്ങുന്നത്. ഈ ചുളിവുകളെ \"ഗൈറിയുംസുൾഷിയും\"(gyri and sulci) എന്ന് വിളിക്കുന്നു.',
  ],
);

const WeekByWeekModel week29 = WeekByWeekModel(
  title: 'Week 29',
  // imgUrl: '',
  motherDataEn: [
    'Breasts will get heavier now. Nipples and the dark area around (areolae) is now becoming larger and darker. Small bumps around the areolae will be very prominent now. Nothing to be alarmed about, this is very normal.',
    'Sometimes your breasts might leak some clear discharge. This is just sign that your breasts are preparing for breastfeeding.',
    'Your Blood circulation have doubled by now.',
    'Acidity and heartburn will be there even now. Try to take an antacid and avoid spicy and oily foods also try to finish your meal of the day as early as possible.',
    'Please dont skip your supplements especially your iron supplements. Iron you get from your diet might not sufficient to prevent you from being anaemic.',
    'Sleeping can become a problem. You might not sleep really well, this is because your body is preparing itself to adjust to the sleepless nights after the baby is born.',
    'If you are not able to sleep try to read magazines or books.'
  ],
  motherDataMl: [
    'നിങ്ങളുടെ മാറിടം കൂടുതൽ ഘനം ഉള്ളതായി മാറും. മുലക്കണ്ണുകളും ഏരിയോളയും (areola-മുലക്കണ്ണിന് ചുറ്റുമുള്ള ഇരുണ്ട വൃത്തം) വലുതാവുകയും കൂടുതൽ കറുപ്പ് ആവുകയും ചെയ്യും. മാത്രമല്ല, ഏരിയോളയിൽ കാണപ്പെടുന്ന ചെറു കുരുക്കൾ കൂടുതൽ സ്പഷ്ടമാവുകയും ചെയ്യും.',
    'ചിലപ്പോൾ നിങ്ങളുടെ മുലക്കണ്ണിൽ നിന്ന് നിറമില്ലാത്ത ദ്രാവകം സ്രവിക്കാൻ തുടങ്ങും. കുഞ്ഞിന് മുലയൂട്ടാൻ ശരീരം തയ്യാറായതിന്റെ ലക്ഷണമാണിത്.',
    'നിങ്ങളുടെ രക്തചംക്രമണം ഇപ്പോൾ ഇരട്ടിവേഗത്തിൽ ആയിരിക്കും.',
    'ചിലർക്ക് പുളിച്ചുതികട്ടലും നെഞ്ചെരിച്ചിലും ഇപ്പോഴും വിട്ടുമാറാതെ തുടരുന്നുണ്ടാവും. ഡോക്ടറുടെ നിർദേശപ്രകാരം അന്റാസിഡുകൾ ഉപയോഗിക്കാം. മസാല കലർന്നതും, എണ്ണ ചേർന്നതുമായ ഭക്ഷണങ്ങൾ ഉപേക്ഷിക്കുക. ആഹാരം കഴിവതും നേരത്തെ കഴിക്കുവാൻ പരമാവധി ശ്രമിക്കുക.',
    'ഡോക്ടർ നിർദ്ദേശിച്ചിരിക്കുന്ന മരുന്നുകൾ ഒരു കാരണവശാലും മുടക്കരുത്. പ്രത്യേകിച്ചും അയൺ ഗുളികകൾ. ആഹാരത്തിൽ നിന്നും ലഭിക്കുന്ന അയൺ നിങ്ങളുടെ ശരീരത്തിനും കുഞ്ഞിൻറെ വളർച്ചയ്ക്കും മതിയാവാതെ വരാം.',
    'ഉറക്കമില്ലായ്മ ഇപ്പോൾ ഒരു പ്രശ്നമായേക്കാം. ശരിയായി ഉറങ്ങാൻ നിങ്ങൾക്ക് സാധിക്കുന്നുണ്ടാവില്ല.കുഞ്ഞ് ജനിച്ചതിനു ശേഷമുള്ള ഉറക്കമില്ലാത്ത രാത്രികൾ തരണം ചെയ്യുവാൻ, ശരീരം സ്വയം തയ്യാറാവുകയാണ്.',
    'നിങ്ങൾക്ക് തീരെ ഉറങ്ങാൻ കഴിയുന്നില്ലെങ്കിൽ, ഇഷ്ടമുള്ള പുസ്തകങ്ങൾ വായിക്കാൻ ശ്രമിക്കുക.',
  ],
  babyDataEn: [
    'You might feel some slight pain under the ribs on the right side, this is because of your baby is pushing against your liver. This is very normal and nothing to be worried about.',
    'Your baby will now be in the classic foetal position; with the arms and legs curled over the body.',
    'Baby\'s bone marrow has now taken the production of red blood cells.',
    'For your baby your womb is his gym. He would move and kick around a lot, this is because your baby is building his muscles by moving around.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ വലതു വാരിയെല്ലിന്റെ ഭാഗത്തായി ചെറിയ വേദന അനുഭവപ്പെടാം. കുഞ്ഞ് നിങ്ങളുടെ കരളിനെ അമർത്തുന്നത് കൊണ്ടാണ് ഇത്. പേടിക്കേണ്ടതായി ഇതിൽ ഒന്നുമില്ല.',
    'ഇപ്പോൾ കുഞ്ഞ്, കൈകാലുകൾ മടക്കി ശരീരത്തോട് ചേർത്ത്, ചുരുണ്ടുകൂടി കിടക്കുന്ന അവസ്ഥയിലായിരിക്കും(feotal position).',
    'രക്തകോശങ്ങൾ നിർമ്മിക്കുന്ന ജോലി പൂർണ്ണമായും കുഞ്ഞിൻറെ അസ്ഥിമജ്ജ ഏറ്റെടുത്തുകഴിഞ്ഞു.',
    'നിങ്ങളുടെ ഗർഭാശയം ഇപ്പോൾ കുഞ്ഞിന്റെ ജിം(gym) ആണ്. അവൻ കൈകാലുകൾ യഥേഷ്ടം ചലിപ്പിക്കുകയും, ചുറ്റിനും ചവിട്ടുകയും ഒക്കെ ചെയ്യും. കുട്ടിയുടെ പേശികൾ നന്നായി വളരുന്നതിനും, പൂർണ്ണ പ്രവർത്തനശേഷി കൈവരുന്നതിനും വേണ്ടിയുള്ള വ്യായാമങ്ങളാണ് ഇത്.',
  ],
);

const WeekByWeekModel week30 = WeekByWeekModel(
  title: 'Week 30',
  // imgUrl: '',
  motherDataEn: [
    'You are very close to the end of your pregnancy. Now your checkups(antenatal checkups) will be more frequent now. You would see your doctor every two weeks from now.',
    'You might still experience mild pain in the lower sides of your abdomen. This is again the ligaments which hold the uterus are stretching. Lie down on the side where the pain occurs , it helps relieve the pain.',
    'Lower back pain is going to get worse from now on. This is because of the exaggeration of the normal curve of the lower back. If you are doing the prenatal exercises continue with that, it helps a lot with the pain.'
  ],
  motherDataMl: [
    'നിങ്ങൾ ഗർഭ കാലത്തിൻറെ അവസാന ഘട്ടത്തിലേക്ക് കടക്കുകയാണ്.പരിശോധനകളുടെ ഇടവേളകൾ കുറയും. രണ്ടാഴ്ചയിലൊരിക്കൽ ഡോക്ടറെ കാണണം.',
    'ഇപ്പോഴും നിങ്ങളുടെ അടിവയറിന്റെ വശങ്ങളിൽ പേശി വേദന അനുഭവപ്പെടാം. നേരത്തെ പറഞ്ഞിട്ടുള്ളതുപോലെ, ഗർഭപാത്രത്തിനെ താങ്ങിനിർത്തുന്ന പേശികളുടെ വലിവ് ആണ് ഇതിന് കാരണം. വേദനയുള്ള വശം ചരിഞ്ഞു കുറച്ചുനേരം കിടക്കുക എന്നതാണ് പോംവഴി.',
    'നിങ്ങളുടെ നടുവേദന വല്ലാതെ വഷളാവാൻ സാധ്യതയുണ്ട്. നട്ടെല്ലിനുള്ള സ്വാഭാവിക വളവിനുണ്ടാകുന്ന മാറ്റം കാരണമാണ് ഇങ്ങനെ സംഭവിക്കുന്നത്. ഗർഭകാല വ്യായാമങ്ങൾ ചെയ്യുന്നുണ്ടെങ്കിൽ അത് കൃത്യമായി ചെയ്യുന്നത് ഒരുപരിധിവരെ ആശ്വാസമേകും.',
  ],
  babyDataEn: [
    'Baby now weighs around 1250 grams.',
    'Baby\'s skin will still have some wrinkles but it is getting smoother.',
    'The fine hairs(lanugo) over the baby\'s body is now starting to disappear.',
    'Now your baby\'s brain is developing fast. It is developing hundreds of billions of new nerve cells.',
    'After birth, baby\'s brain will not develop any new nerve cells.',
    'Your baby\'s brain will only reach its original size when your little one is around 5 years old.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ ഭാരം 1250 ഗ്രാം ആയി വർദ്ധിച്ചിരിക്കുന്നു.',
    'കുട്ടിയുടെ ചർമത്തിൽ ഉണ്ടായിരുന്ന ചുളിവുകൾ മാറിത്തുടങ്ങും.',
    'ശരീരത്തിലെ ചെറു രോമങ്ങൾ(lanugo) അപ്രത്യക്ഷമായി തുടങ്ങും.',
    'ഇപ്പോൾ കുട്ടിയുടെ തലച്ചോറ് അതിവേഗത്തിൽ വികസിച്ചുകൊണ്ടിരിക്കുകയാണ്. കോടിക്കണക്കിന് പുതിയ നാഡീകോശങ്ങളാണ് ഉൽപാദിപ്പിച്ചു കൊണ്ടിരിക്കുന്നത്.',
    'ജനനശേഷം, കുഞ്ഞിൻറെ തലച്ചോറിൽ പുതിയ നാഡീകോശങ്ങൾ ഉണ്ടാവുന്നില്ല.',
    'തലച്ചോറ്, യഥാർത്ഥ വലിപ്പം എത്താൻ, കുഞ്ഞിന് 5 വയസ്സെങ്കിലും ആകണം.'
  ],
);

const WeekByWeekModel week31 = WeekByWeekModel(
  title: 'Week 31',
  // imgUrl: '',
  motherDataEn: [
    'Your walking mannerisms will change. This is because your centre of gravity is changing because of big pregnant belly.',
    'The hormones which is produced in the pregnancy will cause relaxation of the joints between the bones in your pelvic area. This will cause you walk in short steps and even in a swaying motion.',
    'Your back pain will get worse now.',
    'It would be pretty difficult to find a comfortable position to sleep in. Everything might seem discomfort. As mentioned earlier try to use pillows to give some comfort.',
    'Place a pillow below your belly and even between your knees.'
  ],
  motherDataMl: [
    'നിങ്ങളുടെ നടപ്പിന്റെ ശൈലി പൂർണ്ണമായും മാറും. വലിയ വയറിൻറെ മുമ്പോട്ടുള്ള ഭാരം ബാലൻസ് ചെയ്യാൻ, ശരീരം സ്വീകരിക്കുന്ന ഉപായം ആണ് ഇതിന് കാരണം.',
    'ഗർഭകാലത്തുണ്ടാകുന്ന ഹോർമോണുകൾ നിങ്ങളുടെ ഇടുപ്പിന്റെ ഭാഗത്തുള്ള സന്ധികൾക്ക് ഒരു അയവുണ്ടാക്കുന്നു. അതിനാൽ ഭാരം കൊണ്ട് പിന്നിലേക്ക് അല്പം ചാഞ്ഞു നടക്കുന്ന അവസ്ഥയിൽ പോലും നിങ്ങളുടെ നടപ്പ് സുഗമമാക്കുന്നു.',
    'പുറം വേദന ഇപ്പോൾ കൂടുതലാവാൻ സാധ്യതയുണ്ട്.',
    'ഉറങ്ങുവാൻ സുഖകരമായ ഒരു പൊസിഷൻ കണ്ടെത്താൻ നിങ്ങൾക്ക് ബുദ്ധിമുട്ടായിരിക്കും. എങ്ങനെ കിടന്നാലും അസുഖകരമായി തോന്നും.മുൻപ് സൂചിപ്പിച്ചിട്ടുള്ളത് പോലെ തലയിണകൾ ഉപയോഗിച്ചാൽ അല്പം ആശ്വാസമുണ്ടാകും.',
    'ഒരു തലയിണ വയറിന് അടിയിലും, മറ്റൊന്ന് കാൽമുട്ടുകൾക്ക് ഇടയിലും വെച്ച് ചരിഞ്ഞു കിടക്കുക.',
  ],
  babyDataEn: [
    'Your baby is now getting covered with fat.',
    'Baby\'s skin colour also changes. It\'s now turned into pink from deep red.',
    'Finally your baby\'s eyes are open now.',
    'There is plenty of hair on your baby\'s head now.',
    'Your baby might get startled or even jump upon hearing loud noise. Sometimes they even respond to certain music or to someone\'s voice.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ ശരീരം മുഴുവൻ ചർമത്തിനടിയിൽ കൊഴുപ്പ് സംഭരിച്ചു കഴിഞ്ഞു.',
    'കുഞ്ഞിൻറെ ചർമത്തിന്റെ നിറം നല്ല ചുവപ്പ് ആയിരുന്നത് പിങ്ക് കളർ ആയി മാറി തുടങ്ങും.',
    'അങ്ങനെ നിങ്ങളുടെ കുഞ്ഞ് തൻറെ കുഞ്ഞിക്കണ്ണുകൾ തുറന്നിരിക്കുന്നു.',
    'തലയിൽ നിറയെ സമൃദ്ധമായി മുടി വളർന്നിട്ടുണ്ടാവും.',
    'വലിയ ശബ്ദകോലാഹലങ്ങൾ കേട്ട് കുഞ്ഞ്, നടുങ്ങുകയും ഞെട്ടുകയും ചെയ്യാം. ചില പാട്ടുകളോ ചില ആൾക്കാരുടെ ശബ്ദംമോ കേട്ട് കുഞ്ഞ് ശ്രദ്ധിക്കുകയും ഇളകുകയും ചെയ്യാറുണ്ട്.',
  ],
);

const WeekByWeekModel week32 = WeekByWeekModel(
  title: 'Week 32',
  // imgUrl: '',
  motherDataEn: [
    'Is this your first pregnancy? You might be all worried and anxious about your baby, labour pain and the delivery processes. So the best thing to do is to get yourself prepared. Understand and learn about labour processes. But you dont need to search for anything you can find all the information about this here in our app.',
    'Your baby is having fun in your uterus, it might tumbling around. He/she still haven\'t come to the head down position (cephalic position). This will happen in another week or two.',
    'If you are having twins. By now your uterus would have got as big as if you were in your full term single baby.'
  ],
  motherDataMl: [
    'ഇത് നിങ്ങളുടെ ആദ്യ ഗർഭം ആണോ? എങ്കിൽ നിങ്ങൾക്ക് കുഞ്ഞിനെ കുറിച്ചും, പ്രസവവേദനയെ കുറിച്ചും, പ്രസവ നടപടികളെ കുറിച്ചുമൊക്കെ വളരെയധികം ഉൽക്കണ്ഠ ഉണ്ടാകും. ഇതിനെ അതിജീവിക്കാനുള്ള ഏറ്റവും നല്ല കാര്യം, സ്വയം തയ്യാറാവുക എന്നതാണ്.പ്രസവ നടപടികളെക്കുറിച്ച് നന്നായി മനസ്സിലാക്കണം. അതിനെക്കുറിച്ചുള്ള സകല വിവരങ്ങളും നിങ്ങളുടെ ഈ app-ൽ ലഭ്യമാണ്.',
    'നിങ്ങളുടെ കുസൃതിക്കുടുക്ക ഇപ്പോൾ ഗർഭപാത്രത്തിനുള്ളിൽ ഉരുണ്ടുപിരണ്ടു കളിക്കുന്നുണ്ടാവും. എങ്കിലും കുട്ടി ഒരിക്കലും തലകീഴായി വരികയില്ല അതിന് ഇനിയും ഒന്നോ രണ്ടോ ആഴ്ച എടുക്കും.',
    'കുഞ്ഞ് വളരുകയും വലുപ്പം വയ്ക്കുകയും ചെയ്യുകയാണ്. അതിൻറെ ചലനങ്ങൾ മുമ്പുള്ളതിനേക്കാൾ കൂടുതൽ ആവുന്നതും, ചടുലമാവുന്നതും നിങ്ങൾക്ക് അനുഭവിക്കാൻ കഴിയും.',
    'ചിലപ്പോൾ ആ കുറുമ്പന്റെ/ കുറുമ്പത്തി യുടെ ചവിട്ട് നിങ്ങളെ ചെറുതായി വേദനിപ്പിച്ചേക്കാം.',
  ],
  babyDataEn: [
    'Your baby is also gaining weight fast. He/she is around 1700 grams.',
    'Till now you have seen an increase in baby lengths much faster than its weight. But now your baby will gain weight rapidly than the length',
    'Baby is getting bigger and growing. You can feel the movements to be more frequent and vigorous.',
    'Sometimes your baby\'s kicks may actually be painful.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുട്ടിയുടെ ഭാരം വളരെ വേഗത്തിൽ വർദ്ധിച്ചുകൊണ്ടിരിക്കുകയാണ്. ഇപ്പോൾ കുഞ്ഞിന് ഏകദേശം 1700 ഗ്രാം ഭാരം ഉണ്ടായിരിക്കും.',
    'ഇതുവരെ കുഞ്ഞിൻറെ ഭാരത്തെക്കാളും വേഗത്തിലായിരുന്നു വലിപ്പം കൂടിയിരുന്നത്. എന്നാൽ, ഇപ്പോൾ വലിപ്പത്തെക്കാൾ വേഗത്തിൽ ഭാരം കൂടാൻ തുടങ്ങിയിരിക്കുന്നു.',
    'കുഞ്ഞ് വളരുകയും വലുപ്പം വയ്ക്കുകയും ചെയ്യുകയാണ്. അതിൻറെ ചലനങ്ങൾ മുമ്പുള്ളതിനേക്കാൾ കൂടുതൽ ആവുന്നതും, ചടുലമാവുന്നതും നിങ്ങൾക്ക് അനുഭവിക്കാൻ കഴിയും.',
    'ചിലപ്പോൾ ആ കുറുമ്പന്റെ/ കുറുമ്പത്തി യുടെ ചവിട്ട് നിങ്ങളെ ചെറുതായി  വേദനിപ്പിച്ചേക്കാം.'
  ],
);

const WeekByWeekModel week33 = WeekByWeekModel(
  title: 'Week 33',
  // imgUrl: '',
  motherDataEn: [
    'You will find yourself breathless from time to time. Your uterus now pushes your diaphragm up and that in turn compresses your lungs.',
    'Baby is going to push against your bladder which would cause you to urinate quite often. You might find yourself getting up in the night a lot to go to the toilet.',
    'Pressure will also be on your bowels as well. This will cause frequent or irregular bowel movements in you.',
    'Now is the right time to pack your hospital bag. Buy necessary items for you as well for the new born babies. This would help in avoiding any last minute rush.'
  ],
  motherDataMl: [
    'ഇടയ്ക്കിടെ ശ്വാസം കിട്ടാതാകുന്നതുപോലെ തോന്നിയേക്കാം. ശ്വാസകോശം വികസിക്കാൻ സഹായിക്കുന്ന ഡയഫ്രത്തിനെ(diaphram) ഗർഭാശയം മുകളിലേക്ക് തള്ളി ഞെരുക്കുന്നതാണ് കാരണം.',
    'കുഞ്ഞ് നിങ്ങളുടെ മൂത്രസഞ്ചിയിൽ സമ്മർദ്ദം ചെലുത്തുന്നതിനാൽ, അടിക്കടി മൂത്രമൊഴിക്കാൻ തോന്നുന്നതും സ്വാഭാവികമാണ്. രാത്രി പലതവണ ടോയ്‌ലറ്റിൽ പോകാനായി എഴുന്നേൽക്കേണ്ടിവരും.',
    'മലാശയത്തിനും ഇതുപോലെയുള്ള സമ്മർദ്ദം ഉണ്ടാവും. ഇത് ഇടക്കിടെയുള്ള മലവിസർജനത്തിന് കാരണമാകുന്നു.',
    'നിങ്ങളുടെ പ്രസവസമയത്തെ ആശുപത്രി വാസത്തിന് ആവശ്യമായ സാധനങ്ങൾ ഒരുക്കി വയ്ക്കാനുള്ള സമയമാണിത്. നിങ്ങൾക്കും, ജനിക്കാൻ പോകുന്ന കുഞ്ഞിനും ആവശ്യമായ വസ്തുക്കൾ വാങ്ങി തയ്യാറാക്കി വയ്ക്കുക. അവസാന നിമിഷത്തെ തിക്കിത്തിരക്കി ഉള്ള ഒരുക്കങ്ങൾ ഒഴിവാക്കാം.',
  ],
  babyDataEn: [
    'Sometimes you might feel your baby is lightly striking you in one particular point in your abdomen. It might even last for few minutes. Well your baby is not striking it is just having hiccups.',
    'This hiccups are quite common and this continue even after her birth as well.',
    'Iron is getting stored in your baby\'s liver',
    'If your little one is boy, his testicles is descending to the scrotum',
    'Baby continues to practice breathing. He/she moves his diaphragm in a repetitive rhythm.',
    'Baby skin is covered with a waxy layer called vernix. This week this layer get thicker.'
  ],
  babyDataMl: [
    'ചില സമയം കുഞ്ഞ് ഒരു പ്രത്യേക സ്ഥലത്ത് ചെറുതായി പ്രചരിക്കുന്നത് പോലെ തോന്നാം. ഇത് ചില നിമിഷങ്ങൾ വരെ നീണ്ടു നിന്നേക്കാം! കുട്ടി അടിക്കുകയും മറ്റുമല്ല; ഇത് കുഞ്ഞിന്റെ എക്കിട്ടമോ ഏമ്പക്കമോ ആണ്!',
    'ഈ എക്കിട്ടം തികച്ചും സാധാരണമാണ്. ജനന ശേഷവും കുട്ടിക്ക് ഇത് കണ്ടേക്കാം.',
    'കുഞ്ഞിൻറെ കരളിൽ ഇരുമ്പുസത്ത് ശേഖരിച്ചുവയ്ക്കാൻ തുടങ്ങിയിരിക്കുന്നു.',
    'കുഞ്ഞ് ആണാണെങ്കിൽ അവൻറെ വൃഷണങ്ങൾ, വൃഷണസഞ്ചിയിലേക്ക് ഇറങ്ങിയിട്ടുണ്ടാവും.',
    'കുട്ടി, ശ്വസിക്കാനുള്ള പരിശീലനം തുടരുകയാണ്.കുഞ്ഞിൻറെ ഡയഫ്രം കൃത്യമായ താളത്തിൽ ചലിക്കുന്നുണ്ട്.',
    'കുഞ്ഞിൻറെ ചർമ്മം വെർണിക്സ് എന്ന മെഴുകു പദാർത്ഥം കൊണ്ട് ആവരണം ചെയ്യപ്പെട്ടിരിക്കും, എന്ന് പറഞ്ഞല്ലോ; ഈ ആവരണം ഇപ്പോൾ കട്ടിയുള്ളതായി മാറും.',
  ],
);

const WeekByWeekModel week34 = WeekByWeekModel(
  title: 'Week 34',
  // imgUrl: '',
  motherDataEn: [
    'Do you have any idea how your labor is about to begin? Dont worry if you are new at this we are here to help. You can find all information related to labour pains, false labour pains as well delivery procedures in this app.',
    'You might feel uncomfortable all the time now. But do not miss out on your exercises, continue your regular walk. Staying fit is very important during these times.',
  ],
  motherDataMl: [
    'പ്രസവവേദനയുടെ ആരംഭം എങ്ങനെയാണെന്ന് നിങ്ങൾക്ക് അറിയാമോ? പേടിക്കേണ്ട! എല്ലാ അർത്ഥത്തിലും, നിങ്ങളെ സഹായിക്കാൻ ഞങ്ങളുണ്ട്. പ്രസവവേദന,, പ്രസവ വേദനയായി തെറ്റിദ്ധരിക്കപ്പെടുന്ന വേദന, പ്രസവവുമായി ബന്ധപ്പെട്ട മറ്റെല്ലാ കാര്യങ്ങൾ എന്നിവയെക്കുറിച്ചുള്ള സകല വിവരങ്ങളും ഈ ആപ്പിൽ ഉൾപ്പെടുത്തിയിട്ടുണ്ട്.',
    'നിങ്ങൾക്ക് എല്ലായ്പ്പോഴും ഒരു അസ്വസ്ഥത അനുഭവപ്പെടാം. നിങ്ങളുടെ വ്യായാമങ്ങളും, പതിവായുള്ള നടത്തവും ഒരിക്കലും ഒഴിവാക്കാതിരിക്കുക. ശാരീരികവും മാനസികവുമായ ആരോഗ്യം നല്ലനിലയിൽ കാത്തുസൂക്ഷിക്കേണ്ടത് ഈ സമയത്ത് അത്യാവശ്യമാണ്.',
  ],
  babyDataEn: [
    'Your baby now weighs around 2 kgs now.',
    'Baby\'s nails have grown longer. It can can now reach the tip of his finger or even beyond that.',
    'When your baby is born you can definitely see him/her with long nails. Try to trim it as and when you can because he might scratch his face as well as yours.',
    'If you are having twins, your babies will now remain in a particular position till birth. May be one baby might move around, but not as frequently.',
    'Due to some reason you give birth to your baby now, your baby has a good chance of survival.'
  ],
  babyDataMl: [
    'ഇതാ, കുഞ്ഞ് 2 കിലോ ഭാരം എന്ന നാഴികക്കല്ല് പിന്നിടുന്നു.',
    'കുഞ്ഞിൻറെ നഖം ഇപ്പോൾ വിരൽ തുമ്പിനോളമോ, അതിൽകൂടുതലോ വന്നിട്ടുണ്ടാവും.',
    'കുട്ടി ജനിക്കുമ്പോൾ തീർച്ചയായും നീളമുള്ള നഖങ്ങൾ ഉണ്ടാവും. എത്രയും പെട്ടെന്ന് തന്നെ ഇത് ശ്രദ്ധയോടെ വെട്ടി കളയണം. ഇല്ലെങ്കിൽ, കുഞ്ഞിൻറെ മുഖത്തും, നിങ്ങളുടെ ദേഹത്തിലും മുറിവേൽക്കാൻ സാധ്യതയുണ്ട്.',
    'നിങ്ങൾക്ക് ഇരട്ടക്കുട്ടികൾ ആണെങ്കിൽ, കുട്ടികൾ ഇപ്പോൾ മുതൽ ജനനം വരെയും ഒരു പ്രത്യേക രീതിയിൽ നിലകൊള്ളുന്നതായിരിക്കും. ഒരു പക്ഷേ, ഒരു കുട്ടി ചുറ്റിനും ചലിച്ചേക്കാം. എങ്കിലും ഇത് ക്രമാനുഗതമായിരിക്കില്ല.',
    'ഏതെങ്കിലും കാരണവശാൽ നിങ്ങളുടെ കുഞ്ഞ് ഇപ്പോൾ ജനിക്കുക യാണെങ്കിൽ, അതിന് അതിജീവിക്കാനുള്ള എല്ലാ സാധ്യതകളും ഉണ്ട്.',
  ],
);

const WeekByWeekModel week35 = WeekByWeekModel(
  title: 'Week 35',
  // imgUrl: '',
  motherDataEn: [
    'There would be a lot of pressure in your pelvic area now. You can feel the weight in your vagina. It can become uncomfortable sometimes a little painful when you get up after sitting for awhile.',
    'Your uterus is now so enlarged that it starts to put pressure on some nerves this might cause some numbness in front of your thighs.',
    'You might be getting those muscle cramps in your calves right? This is going to be more frequent now. Nothing to worry try to stretch your calve muscles now and then without fail.'
  ],
  motherDataMl: [
    'ഇപ്പോൾ നിങ്ങളുടെ ഇടുപ്പിൽ നല്ലരീതിയിൽ സമ്മർദ്ദവും, യോനിയുടെ ഉൾഭാഗത്തായി ഒരു ഭാരവും അനുഭവപ്പെടും. കുറച്ചധികം നേരം ഇരുന്നതിനു ശേഷം എഴുന്നേൽക്കുമ്പോൾ അസ്വസ്ഥതയോ, നേരിയ വേദനയോ ഒക്കെ തോന്നുകയും ചെയ്യാം.'
        'ഗർഭപാത്രം പരമാവധി വികസിച്ചിരിക്കുന്നതിനാൽ, അത് ചില ഞരമ്പുകളിൽ അധിക സമ്മർദ്ദം ഉണ്ടാക്കും. ഇതുമൂലം നിങ്ങളുടെ തുടകളുടെ മുൻഭാഗത്ത് തരിപ്പ് അനുഭവപ്പെട്ടേക്കാം.'
        'നിങ്ങളുടെ മുട്ടിനു താഴെയുള്ള പേശികളിൽ (calves muscles) കോച്ചിവലിക്കലും കഴയ്ക്കലും ഉണ്ടാവുന്നുണ്ട്; അല്ലേ?ഇനി ഇത് ഇടയ്ക്കിടെ ഉണ്ടായേക്കാം. കൂടെക്കൂടെ പേശികൾ വലിച്ചു പിടിക്കുന്നത് ആശ്വാസം തരും.'
  ],
  babyDataEn: [
    'Your baby is getting ready to come into this world. It is getting into the head down position or as doctors say the cephalic position.',
    'You might feel your baby\'s movements changing. There would be less kicks, it would be more of rolling, twisting, turning because your baby is getting bigger. There is less room now in the uterus for her move around.',
    'Fat is being continuously deposited all over your baby\'s body. Now your baby is starting to look chubby and plump.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ പുതിയ അതിഥി ഈ ലോകത്തേക്ക് വരാനുള്ള തയ്യാറെടുപ്പ് നടത്തിക്കൊണ്ടിരിക്കുകയാണ്. കുഞ്ഞ് തലകീഴായി വരാൻ തുടങ്ങുകയായി! ഇതിനെ "സെഫാലിക് പൊസിഷൻ" ( cephalic position) എന്നാണ് പറയുക.',
    'കുട്ടിയുടെ ചലന രീതി മാറിയത് നിങ്ങൾക്ക് മനസ്സിലാക്കാൻ കഴിയും. ചവിട്ടുകൾ കുറഞ്ഞ്, തിരിയലും മറിയലും ഉരുളലും ഒക്കെ കൂടിയിട്ടുണ്ടാവും. കുഞ്ഞ് വലുതായി കഴിഞ്ഞതിനാൽ ഗർഭപാത്രത്തിനുള്ളിൽ പഴയതുപോലെ സഞ്ചരിക്കാൻ കുട്ടിക്ക് കഴിയുന്നില്ല.',
    'കുഞ്ഞിൻറെ ശരീരത്തിൽ ഇപ്പോഴും കൊഴുപ്പ് സംഭരിച്ചുകൊണ്ടിരിക്കുന്നതിനാൽ കുഞ്ഞ് തുടുത്ത് കൊഴുത്തതായി കാണപ്പെടുന്നു.',
  ],
);

const WeekByWeekModel week36 = WeekByWeekModel(
  title: 'Week 36',
  // imgUrl: '',
  motherDataEn: [
    'From now onwards you are going to weekly check ups with your doctor.',
    'Your baby would have reached the head down(cephalic)position. This is the preferable position for normal delivery. Most babies get into this position by now but 4 out of 100 babies will be in the breech (buttocks down) position',
    'Along with abdominal examination your doctor is going to do vaginal examination this week or next week. This is done to understand the current condition of your cervix and the position of your baby\'s head.',
    'Your uterus has grown about 1000 times than its original state i.e. before you were pregnant.',
    'It is very crucial note your baby\'s movements. So take a paper and note down how much times he moves in day.',
    'Your Baby should move at least 20 times a day. The force of your baby\'s movement might be less, but you will still be able to feel the movements.'
  ],
  motherDataMl: [
    'ഇപ്പോൾ മുതൽ നിങ്ങൾ, ആഴ്ചതോറും ഡോക്ടറെ നേരിൽ കണ്ട് പരിശോധനകൾ നടത്തണം.',
    'കുഞ്ഞ് ഇപ്പോൾ തലകീഴായ നിലയിൽ വന്നിട്ടുണ്ടാവും. സുഖപ്രസവത്തിന് ഇതാണ് ഏറ്റവും നല്ലത്. കൂടുതൽ കുട്ടികളും ഈ നിലയിലേക്ക് വന്നിട്ടുണ്ടാവാം എങ്കിലും, നൂറിൽ നാലുകുട്ടികൾ പൃഷ്ഠഭാഗം താഴെയായി കാണപ്പെടാറുണ്ട്.',
    'ഈ ആഴ്ചയിലോ അടുത്ത ആഴ്ചയിലോ നിങ്ങളുടെ ഡോക്ടർ, മറ്റ് പരിശോധനകളോടൊപ്പം, യോനി പരിശോധനയും നടത്തും. ഗർഭാശയത്തിന്റെ വായ് ഭാഗത്തെയും, കുട്ടിയുടെ തലയുടെയും ഇപ്പോഴത്തെ അവസ്ഥ കൃത്യമായി മനസ്സിലാക്കുന്നതിനാണ് ഇങ്ങനെ ചെയ്യുന്നത്.',
    'ഇപ്പോൾ നിങ്ങളുടെ ഗർഭാശയം, നിങ്ങൾ ഗർഭിണിയാകുന്നതിന് മുമ്പുണ്ടായിരുന്നതിനേക്കാൾ ആയിരം മടങ്ങ് വലുതാണ്!! എത്ര ആശ്ചര്യകരമാണ്! അല്ലേ....',
    'കുഞ്ഞിൻറെ ചലനങ്ങൾ പ്രത്യേകം ശ്രദ്ധിക്കേണ്ട നിർണായക സമയമാണിത്. ദിവസത്തിൽ എത്ര തവണ അനക്കമുണ്ട് എന്നത് കൃത്യമായി എഴുതി വയ്ക്കണം.',
    'ചലനത്തിന് ശക്തി കുറഞ്ഞിട്ടുണ്ടാകാമെങ്കിലും, കുഞ്ഞ് അനങ്ങുന്നത് നിങ്ങൾക്ക് മനസ്സിലാക്കാൻ കഴിയും. ദിവസത്തിൽ ഏറ്റവും കുറഞ്ഞത് 20 തവണയെങ്കിലും കുട്ടിക്ക് അനക്കം ഉണ്ടാവും.',
  ],
  babyDataEn: [
    'Your baby\'s face is getting rounder and chubby. Fat is getting deposited on his cheeks and this pad of fat (buccal pad)enables your baby to suckle (feed) from the mother\'s breast.',
    'Most probably your baby is now in the head down position. Now the next step he is doing is to find his way to the birth canal.',
    'Baby\'s movements will not be as vigorous as before because of the less space in the uterus.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ മുഖം ഇപ്പോൾ കൊഴുത്ത് വട്ടത്തിൽ ആയി തീർന്നിരിക്കും. കൊഴുപ്പ് കുഞ്ഞിൻറെ കവിളുകളിൽ ചെറുമെത്ത പോലെ സംഭരിക്കപ്പെടുന്നു. ജനനശേഷം മുലപ്പാൽ ചപ്പി കുടിക്കാൻ ഇത് കുട്ടിയെ സഹായിക്കുന്നു.'
        'ഇപ്പോൾ കുഞ്ഞ് മിക്കവാറും പൂർണമായും സെഫാലിക് പൊസിഷനിൽ എത്തിയിട്ടുണ്ടാവും. അടുത്ത ഘട്ടം,\"ബർത്ത് കനാൽ\"( ഗർഭാശയത്തിൽ നിന്ന് യോനി മുഖത്തേക്കുള്ള ഇടുങ്ങിയ കുഴൽ) തേടിയുള്ള യാത്രയാണ്.'
        'കുട്ടിയുടെ അനക്കങ്ങൾക്ക് പഴയ ചടുലത ഉണ്ടാവില്ല. കാരണം, ഗർഭപാത്രത്തിലെ സ്ഥലമില്ലായ്മ തന്നെ.'
  ],
);

const WeekByWeekModel week37 = WeekByWeekModel(
  title: 'Week 37',
  // imgUrl: '',
  motherDataEn: [
    'You have reached your full term in pregnancy. Upon completion of this week your baby will be considered matured. So if you give birth now, your baby will be considered matured but if you give birth anytime before 37 weeks then your baby will be considered premature.',
    'Your mother or grand mom would say that you are all set for delivery. This is because they see a drop in your abdomen. Your baby is head down and his head has dropped into the birth canal, this process is called Lightening.',
    'As your baby has shifted his position, the pressure on the ribs will also reduce',
    'Watery discharge or in another mucus from your vagina will increase from now on. This is because your cervix has started to open up a little.',
    'Understand and learn about the signs of labour in our app',
    'Also enquire with your doctor well in advance to know when you should come to hospital for delivery. This would help in preparing your self ahead of time.',
    'You can discuss various delivery options with your doctor for e.g.normal delivery, c section, epidural analgesia etc. If you wish to have a particular delivery process for eg. epidural analgesia(painless delivery)then it is better you discuss with your doctor right now.'
  ],
  motherDataMl: [
    'ഈ ആഴ്ച അവസാനിക്കുന്നതോടു കൂടി നിങ്ങളുടെ \'അരുമ കിടാവ്\' പൂർണവളർച്ച എത്തിയിരിക്കുന്നു. അതായത് ഇപ്പോൾ നിങ്ങൾ കുഞ്ഞിന് ജന്മം നൽകിയാൽ, ആ കുട്ടിയെ പൂർണ്ണവളർച്ചയെത്തിയ കുട്ടിയായി പരിഗണിക്കും.37 ആഴ്ചകൾക്ക് മുമ്പാണ് നിങ്ങൾ പ്രസവിക്കുന്നത് എങ്കിൽ, അതിനെ അകാലജനനമായാണ് കണക്കാക്കുക.',
    'നിങ്ങളുടെ അമ്മയോ അമ്മൂമ്മയോ ഇപ്പോൾ പറഞ്ഞേക്കാം, \'നിങ്ങളുടെ പ്രസവ മടുത്തു\' എന്ന്. വയറിന്, ഒരു ഇടിവ് സംഭവിച്ചത് മനസ്സിലാക്കിയാണ് അവർ അങ്ങനെ പറയുന്നത്. കുഞ്ഞ് തലകീഴായി വന്ന്, ബർത്ത് കനാലിലേക്ക് നീങ്ങിയിട്ടുണ്ടാകും. ഇതിനെ ലൈറ്റനിംഗ് (lightening) എന്ന് പറയുന്നു.',
    'കുഞ്ഞിൻറെ സ്ഥാനം മാറിയത് കാരണം, വാരിയെല്ലുകളിൽ ഉള്ള തള്ളലും കുറഞ്ഞു കിട്ടും.',
    'നിങ്ങളുടെ യോനിയിൽനിന്നും ദ്രാവകരൂപത്തിലോ കൊഴുപ്പ് രൂപത്തിലോ ഉള്ള ഒഴുക്ക് കൂടിയേക്കാം. നിങ്ങളുടെ ഗർഭാശയമുഖം, പതുക്കെ പതുക്കെ തുറക്കാൻ ആരംഭിച്ചത് കൊണ്ടാണ് ഇങ്ങനെ സംഭവിക്കുന്നത്.',
    'പ്രസവലക്ഷണങ്ങളെക്കുറിച്ച് ഈ app-ൽ നിന്ന് നന്നായി മനസിലാക്കുക.',
    'ആശുപത്രിയിലേക്ക് എത്തേണ്ട സമയത്തെക്കുറിച്ച് ഡോക്ടറോട് നേരത്തെ തന്നെ ചോദിച്ചു മനസ്സിലാക്കണം. ആവശ്യമായ മുന്നൊരുക്കങ്ങൾ നടത്താൻ അത് നിങ്ങൾക്ക് സഹായകമാകും.',
    'വ്യത്യസ്തമായ പ്രസവ രീതികളെക്കുറിച്ച് നിങ്ങളുടെ ഡോക്ടറുമായി ചർച്ചചെയ്യുക.സാധാരണ പ്രസവം, വേദനയില്ലാത്ത പ്രസവം, സിസേറിയൻ എന്നിവ ചില പ്രസവമുറകളാണ്.വേദനയില്ലാത്ത പ്രസവം(epidural analgasia) നിങ്ങൾ തിരഞ്ഞെടുക്കുന്നുണ്ടെങ്കിൽ, അതിനെക്കുറിച്ച് ഡോക്ടറോട് സംസാരിക്കേണ്ട കൃത്യസമയം ഇതാണ്.',
  ],
  babyDataEn: [
    'The waxy substance(Vernix) which is covering the baby\'s body is now lessened. If you were about to give birth now, the vernix will only be around his scalp and in the creases of the joints.',
    'Your baby is taking up all the space in the uterus. He/she cannot move around alot, but this doesn\'t mean that you not count their movements. Everyday without fail you must count your baby\'s movements as it ensures that baby is healthy.',
    'If your baby is born now, he can survive comfortably.'
  ],
  babyDataMl: [
    'കുഞ്ഞിനെ പൊതിഞ്ഞിരുന്ന മെഴുക് പദാർത്ഥം (vernix) ഏറെക്കുറെ ഇല്ലാതായിട്ടുണ്ടാവും. ഇപ്പോഴത് തലയുടെ ഭാഗത്തും, മുട്ടുകളുടെ മടക്കുകളിലും മാത്രമായിരിക്കും കാണപ്പെടുക.',
    'കുഞ്ഞിൻറെ വലുപ്പം ഇപ്പോൾ, ഗർഭാശയം നിറഞ്ഞു നിൽക്കുന്ന അവസ്ഥയിൽ ആയതിനാൽ പഴയതുപോലെ ചലിക്കാൻ കുഞ്ഞിന് ആവില്ല എന്ന് കരുതി കുഞ്ഞിൻറെ അനക്കം എണ്ണുന്നത് നിർത്തരുത്.കുട്ടിയുടെ അനക്കങ്ങൾ എണ്ണി രേഖപ്പെടുത്തി വയ്ക്കേണ്ടത്, കുഞ്ഞിൻറെ ആരോഗ്യസ്ഥിതി ഉറപ്പാക്കുന്നതിന് അത്യന്താപേക്ഷിതമാണ്.',
    'ഇപ്പോൾ കുഞ്ഞ് ജനിക്കുക യാണെങ്കിലും, അതിന് ഒരു കുഴപ്പവും ഇല്ലാതെ ജീവിക്കാൻ കഴിയും.',
  ],
);

const WeekByWeekModel week38 = WeekByWeekModel(
  title: 'Week 38',
  // imgUrl: '',
  motherDataEn: [
    'You will have false alarms in the form of false pains. These pains usually are irregular and occurs mostly in the lower back.',
    'Good news is that such pain doesn\'t increase in intensity and frequency so dont get tensed.',
    'Such false pains mainly occur because your cervix is now thinning (effacing) and slightly opening(dilation). Your cervix is preparing itself for labor.',
    'Be active as much as you can.',
    'In an internal examination your doctor will assess your cervix and also the baby\'s head to find out whether it is dropped to the birth canal or not.',
    'Is this your first pregnancy? If yes then your baby\'s head would have dropped to the birth canal by now, but for some it might not have happened now, the head might drop once the labor starts.',
    'If this is your second pregnancy or if you had multiple pregnancies before then your baby\'s head might not drop in the birth canal till your labor starts.'
  ],
  motherDataMl: [
    'ഈ സമയത്ത് പ്രസവ വേദനയാണെന്ന് തെറ്റിദ്ധരിക്കപ്പെടുന്ന വേദനകൾ ഉണ്ടാവാനുള്ള സാധ്യത കൂടുതലാണ്. ഇത് മിക്കവാറും, ക്രമമില്ലാതെയും, മുതുകിന് താഴെ വശത്തായിട്ടും ആണ് ഉണ്ടാവാറുള്ളത്.',
    'ഇങ്ങനെയുള്ള വേദനകൾ (false labourpain)തീവ്രത കൈവരിക്കുകയോ, ഇടവിട്ട് ഉണ്ടാവുകയോ ചെയ്യുന്നില്ല. അതിനാൽ ആശങ്ക വേണ്ട.',
    'നിങ്ങളുടെ ഗർഭാശയത്തിന്റെ വായ്ഭാഗം ലോലമായി വരുകയും(effacing), ചെറുതായി തുറക്കാൻ തുടങ്ങുകയും(dilation)ചെയ്യുന്നതുകൊണ്ടാണ് ഈ \"വ്യാജ വേദനകൾ\" ഉണ്ടാകുന്നത്. ഗർഭപാത്രം പ്രസവത്തിനായി തയ്യാറെടുക്കുകയാണ്.',
    'നിങ്ങളാൽ കഴിയുന്നത്രയും ഊർജ്ജസ്വലമായി ഇരിക്കാൻ ശ്രമിക്കുക.',
    'ഗർഭാശയമുഖ ത്തിൻറെ അവസ്ഥയും, കുഞ്ഞിൻറെ തല ബർത്ത് കനാലിലേക്ക് എത്തിയിട്ടുണ്ടോ എന്നും മനസ്സിലാക്കാൻ, ഒരു ആന്തരിക പരിശോധനയിലൂടെ നിങ്ങളുടെ ഡോക്ടർക്ക് സാധിക്കും.',
    'ഇത് നിങ്ങളുടെ ആദ്യ ഗർഭമാണെങ്കിൽ, കുഞ്ഞിൻറെ തല ബർത്ത് കനാലിൽ എത്തിയിട്ടുണ്ടാവും. പക്ഷെ ചിലർക്ക് അങ്ങനെയാവണമെന്നില്ല; അവർക്ക് പ്രസവാരംഭത്തിൽ മാത്രമേ കുട്ടിയുടെ തല ബർത്ത് കനാലിലേക്ക് നീങ്ങുകയുള്ളൂ.',
    'നിങ്ങൾ മുൻപ് പ്രസവിച്ചിട്ടുള്ളവരാണെങ്കിൽ, പ്രസവം തുടങ്ങുമ്പോൾ മാത്രമേ കുട്ടിയുടെ തല ബർത്ത് കനാലിലേക്ക് വരികയുള്ളൂ.',
  ],
  babyDataEn: [
    'The average weight of your baby is around 2,500-2,900 grams.',
    'The fine hair over the baby\'s body(lanugo) is almost gone now.',
    'Your baby is chubby and plump. All thanks to the good deposition of fat under the skin.'
  ],
  babyDataMl: [
    'നിങ്ങളുടെ കുട്ടിയുടെ ശരാശരി ഭാരം ഇപ്പോൾ 2500 ഗ്രാം മുതൽ 2900 ഗ്രാം വരെ ആയിരിക്കും.'
        'കുഞ്ഞിൻറെ ശരീരത്തിൽ ഉണ്ടായിരുന്ന ചെറു രോമങ്ങൾ ഭൂരിപക്ഷവും കൊഴിഞ്ഞു പോയിട്ടുണ്ടാവും.'
        'ചർമത്തിന് അടിയിലെ കൊഴുപ്പിന്റെ സമൃദ്ധമായ നിക്ഷേപം കാരണം, കുട്ടി തുടുത്തു കൊഴുത്ത അവസ്ഥയിലായിരിക്കും.'
  ],
);

const WeekByWeekModel week39 = WeekByWeekModel(
  title: 'Week 39',
  // imgUrl: '',
  motherDataEn: [
    'You will be going through an emotional rollercoaster ride now. Everyone around you and even you will be all anxious and excited. Because now it is just one week left in pregnancy and the delivery can happen anytime now.',
    'You are so uncomfortable now because your uterus is all stretched out now. You might even feel like not doing anything.',
    'If you haven\'t packed your hospital/delivery bag, do it right away. There is no much time left for you. Carry all the essentials for the baby and yourself and other items to make your stay in the hospital comfortable.'
  ],
  motherDataMl: [
    'സംഭവബഹുലമായ ഉയർച്ചതാഴ്ചകളുടെ അനുഭവങ്ങൾ സമ്മാനിക്കുന്ന ഒരു റോളർ കോസ്റ്റർ റൈഡിൽ കയറിയത് പോലെ ആയിരിക്കും ഇപ്പോൾ നിങ്ങളുടെ വികാരവിചാരങ്ങൾ!അതെ; ചുറ്റിനും കാണുന്നതെല്ലാം ജിജ്ഞാസാഭരിതവും ഉദ്വേഗജനകവുമായിരിക്കും. എന്തെന്നാൽ, കേവലം ഒരാഴ്ച മാത്രമേയുള്ളൂ, നിങ്ങൾ കാത്തിരുന്ന ആ അതിഥിയുടെ വരവിന്! ഇനി എപ്പോൾ വേണമെങ്കിലും പ്രസവം സംഭവിക്കാം!!',
    'നിങ്ങൾക്ക് ഇപ്പോൾ വളരെയധികം അസ്വസ്ഥതകൾ അനുഭവപ്പെടും. കാരണം, ഗർഭാശയം ഒന്നാകെ വലിഞ്ഞു മുറുകുന്നുണ്ട്.',
    'ആശുപത്രിയിലേക്കുള്ള സാധനങ്ങൾ ഇനിയും തയ്യാറാക്കിയിട്ടില്ലെങ്കിൽ ഉടനെതന്നെ കുഞ്ഞിനും നിങ്ങൾക്കും ആവശ്യമായവയും, തങ്ങുന്നതിന് ആവശ്യമുള്ള വസ്തുക്കളും ഉൾപ്പെടുത്തി ഹോസ്പിറ്റൽ ബാഗ് തയ്യാറാക്കുക. ഇപ്പോൾ തന്നെ ചെയ്യുക! ഇനി തീരെ സമയമില്ല!!',
  ],
  babyDataEn: [
    'Your baby will approx. weigh between 2700 - 3000 grams. An Indian baby is considered large if he weighs 3500 grams or more.',
    'Your baby is all set to come out and see this beautiful world. He is continuously practising breathing hence there will be plenty of breathing movements, he will push his little chest out and in quite often.'
  ],
  babyDataMl: [
    'കുഞ്ഞിൻറെ ഏകദേശ ഭാരം 2700-3000 ഗ്രാം ആയിരിക്കും. ഇന്ത്യൻ സാഹചര്യത്തിൽ 3500 ഗ്രാമിൽ കൂടുതലായുള്ള കുഞ്ഞിനെ അമിതഭാരം ഉള്ളതായി കണക്കാക്കുന്നു.',
    'നിങ്ങളുടെ പൊന്നോമന ഈ മനോഹര ലോകത്തിലേക്ക് കടന്നു വരാൻ എല്ലാ അർത്ഥത്തിലും തയ്യാറായി കഴിഞ്ഞു. ശ്വസിക്കാനുള്ള പരിശീലനം, ഇപ്പോഴും തെറ്റാതെ തുടരുന്നുണ്ട്. കുട്ടിയുടെ കുഞ്ഞു നെഞ്ച്, കൃത്യമായ താളത്തിൽ ഉയരുകയും താഴുകയും ചെയ്യുന്നു.',
  ],
);

const WeekByWeekModel week40 = WeekByWeekModel(
  title: 'Week 40',
  // imgUrl: '',
  motherDataEn: [
    'Yes!! You have finally reached the end of your pregnancy but you must have not delivered by now. It is quite normal to feel irritated because honestly you just what to get it over now correct. So dont feel ashamed about it.',
    'Only about 4 percent of women give birth on the exact due date. Most women deliver either one week before or after the due date. So dont get worried this is all normal.',
    'Your doctor will thoroughly examine you to see how your baby is doing. Sometimes your doctor might wait till 41 weeks before inducing your labor.'
  ],
  motherDataMl: [
    'അങ്ങനെ നിങ്ങൾ നിങ്ങളുടെ ഗർഭകാലത്തിന്റ അവസാന ഘട്ടത്തിൽ എത്തിയിരിക്കുന്നു. എന്നു കരുതി ഉടനെ പ്രസവമായി എന്നല്ല. ഈ സമയത്ത് ചില അസ്വസ്ഥതകളൊക്കെ തോന്നുന്നത് സ്വഭാവികമാണ് . നിങ്ങൾ നിങ്ങളുടെ ലക്ഷ്യത്തിൽ എത്തിയതിന്റെ ലക്ഷണമാണിത്. അതു കൊണ്ട് ആശങ്കപ്പെടേണ്ടതില്ല.',
    'വെറും 4% സ്ത്രീകൾക്കു മാത്രമേ പറഞ്ഞ തീയ്യതിയിൽ തന്നെ പ്രസവം നടക്കാറുള്ളൂ. കൂടതൽ പേരുടേയും പ്രസവം കണക്കുകൂട്ടി പറഞ്ഞ തീയ്യതിക്ക് ഒരാഴ്ച വരെ മുമ്പെ തന്നേയോ,(ഒരാഴ്ച)താമസിച്ചോ ആകാറുണ്ട്. ഇത് തികച്ചും സ്വാഭാവികമാണ്.',
    'നിങ്ങളുടെ ഡോക്ടർ നിങ്ങളെ പരിപൂർണ്ണമായി പരിശോധിച്ച് കുട്ടിയുടെ സ്ഥിതിഗതികൾ സൂക്ഷ്മമായി വിശകലനം ചെയ്യും. ചിലപ്പോൾ 41 ആഴ്ചകൾവരെ നോക്കിയതിനുശേഷം മാത്രമേ നിങ്ങളുടെ ഡോക്ടർ അടിയന്തര പ്രസവത്തിനുള്ള മരുന്ന് കുത്തി വെക്കുകയോ അതുപോലെയുള്ള നടപടികളിലേക്കു കടക്കുകയോ ചെയ്യുകയുള്ളു.'
  ],
  babyDataEn: [
    'Your baby is all set and ready to face the world, now it is just matter of few days.',
    'All his vital organs are completely developed and ready to function.',
    'As mentioned earlier your baby\'s bowel is filled with meconium - the greenish blackish substance/stool. This would be the first motion your baby will pass. So dont get scared when you see her poop.',
    'Most of the fine hair (lanugo) is gone, but the baby may be still be born with this fine hair over the forehead, on top of the ears and over the shoulders.'
  ],
  babyDataMl: [
    'അതെ, നിങ്ങളുടെ കുഞ്ഞ് ഈ മനോഹര ലോകത്തെ അഭിമുഖീകരിക്കാൻ തയ്യാറായിക്കഴിഞ്ഞു. ഇനി ഏതാനും ദിവസങ്ങൾ മാത്രം.',
    'അവന്റെ/അവളുടെ ആന്തരിക അവയവങ്ങളെല്ലാം പൂർണ്ണവളർച്ചയെത്തിക്കഴിഞ്ഞു. അവയെല്ലാം പ്രവർത്തിക്കാൻ സജ്ജമായിരിക്കുന്നു.',
    'നേരത്തേ സൂചിപ്പിച്ചിട്ടുള്ളതുപോലെ, കുഞ്ഞിന്റെ മലാശയം "മെകോണിയം"(meconium) എന്ന കറുപ്പും പച്ചയും കലർന്ന നിറത്തിലുള്ള വിസർജ്ജ്യ വസ്തു നിറഞ്ഞിരിക്കും. ഇതായിരിക്കും നിങ്ങളുടെ കുഞ്ഞിന്റെ ആദ്യത്തെ മല വിസർജ്ജനം. ഇതു കണ്ടു ഭയപ്പെ ഭയപ്പെടേണ്ടാ.',
    'കുഞ്ഞിന്റെ ശരീരത്തിലുള്ള ചെറുരോമങ്ങൾ ഭൂരിഭാഗവും കൊഴിഞ്ഞു പോയിരിക്കും. എങ്കിലും ജനിക്കുമ്പോൾ നെറ്റിയിലും, കാതുകളുടെ മുകൾഭാഗത്തും, തോളിലുമൊക്കെ ഈ ചെറുരോമങ്ങൾ കാണപ്പെടാം.'
  ],
);
