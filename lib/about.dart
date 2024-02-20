import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool voiceeffect = false;
  bool musiceffect = false;
  bool notifications = false;
  bool vibrations = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hakkımızda',
            style: TextStyle(
              fontFamily: 'Switzer',
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Color(0xFF000000),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 34),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Image.asset('assets/images/about.png'),
              ),
              SizedBox(height: 34),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Şirketimiz bünyesinde '),
                      TextSpan(
                        text:
                            'yüzlerce çalışanımız;\nPsikolog, Psikolojik Danışman, Pedagog, Aile\nDanışmanı, Eğitim Danışmanı ve Çocuk Gelişim Uzmanlarından oluşmaktadır.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' 2010 yılından\nitibaren uzmanlarımız çocuk, ergen, yetişkin ve\nçift terapileri yapmaktadır. Kurumsal ve kişisel\neğitimler vermektedirler. Üniversitelerle\nanlaşmalar yaparak Psikoloji, Sosyoloji ve Eğitim\nalanında uzman Profösor ve Doçentlerle ortak\nçalışmalar yürütmekteyiz.',
                      ),
                      TextSpan(
                        text:
                            ' Bugüne kadar\nortalama 60+ bin kadar kişiye bireysel eğitim,\n binlerce kişiye terapi, 520 kurumsal psikoloji\neğitimleri düzenledik ve düzenlemeye devam\n etmekteyiz.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Uzmanlarımız çocuk, ergen ve yetişkinlerle;\n'),
                      TextSpan(
                        text:
                            'dikkat eksikliği, beyin gelişim egzersizleri,\nhafıza geliştirme, hiperaktivite, dürtüsellik,\n disleksi, öğrenci ve sınav danışmanlığı\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'programlarını çalışmaktadırlar.',
                      ),
                      TextSpan(
                        text: '',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Programımızın vizyonu, psikolog, psikolojik\n danışman ve çocuk gelişim uzmanlarının'),
                      TextSpan(
                        text:
                            ' 23 yıllık\n beyin geliştirme, dikkati artırma ve hafıza\n geliştirme egzersizlerinin bir program haline\n getirilmiş şeklidir',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' Dikkat ve Beyin gelişimi için\n terapi programlarında uygulanan son derece ilgi\n çekici ve yararlı egzersizleri kişisel ve eğlenceli\n hale getirmişlerdir. Eğitim teknolojisinin\n gelişmesiyle birlikte, telefon, tablet ve bilgisayar\n programlarının hızlı bir şekilde büyümesine\n hazırdır. Yenilikçi ve sıra dışı düşünme\n becerilerinin gelişmesini hedeflemekteyiz.',
                      ),
                      TextSpan(
                        text: '',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Özel Çukurova Aile Danışma Merkezi, Özel\n Çukurova Uzaktan Öğretim Merkezi, Ömür Boyu\n Eğitim Merkezi, Adana Aile Danışma Merkezi,\n Kariyer Akademi Polikliniği olarak hizmet vermeye\n devam etmekteyiz.'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 90),
              Container(
                child: Image.asset('assets/images/manifest.png'),
              ),
              SizedBox(height: 36),
              Container(
                child: Text(
                  'Manifestomuz',
                  style: TextStyle(
                    fontFamily: 'Switzer',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 36),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 73),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about1.png'),
                          SizedBox(height: 10),
                          Text('Dikkatinizi\ngeliştirmek\nistiyorsanız,')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 51),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about2 .png'),
                          SizedBox(height: 10),
                          Text('Hafızanızı\ngeliştirmek\nistiyorsanız,')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 49),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 48),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about3.png'),
                          SizedBox(height: 10),
                          Text(
                              'Sözel ve sayısal mantık\nyürütme becerilerinizi\ngeliştirmek istiyorsanız,')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34, bottom: 20),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about4.png'),
                          SizedBox(height: 10),
                          Text('İşitsel algınızı\ngeliştirir.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 71),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 48),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about5.png'),
                          SizedBox(height: 10),
                          Text(
                              'Sözel ve sayısal mantık\nyürütme becerilerinizi\ngeliştirmek istiyorsanız,')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34, bottom: 25),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about6.png'),
                          SizedBox(height: 10),
                          Text('İşitsel algınızı\ngeliştirir.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 48, bottom: 15),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about7.png'),
                          SizedBox(height: 10),
                          Text('Görsel algınızı geliştirir.')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about8.png'),
                          SizedBox(height: 10),
                          Text('Analitik Düşünme\nBecerinizi geliştirir.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 48, bottom: 15),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about9.png'),
                          SizedBox(height: 10),
                          Text(
                              'Yaratıcı problem çözme\nbecerilerinizi geliştirmek\n           istiyorsanız,')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34, bottom: 40),
                      child: Column(
                        children: [
                          Image.asset('assets/images/about10.png'),
                          SizedBox(height: 10),
                          Text('Mantık-Muhakeme\nbecerinizi geliştir.')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
