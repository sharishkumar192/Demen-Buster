import 'package:flutter/material.dart';

class Carecentres extends StatefulWidget {
  static List image = [
    'https://www.myfirstcollege.com/wp-content/uploads/2019/02/50856-teowvzsvpi-1486357354-1024x538.jpg', //1
    'https://cdn.telanganatoday.com/wp-content/uploads/2018/06/KIMS.jpg', //2
    'https://www.vaidam.com/sites/default/files/hospitals/blk_hospital.jpg', //3
    'https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/44/0.05775000_1461667459_malar.png', //4
    'https://www.nirujahealthtech.com/wp-content/uploads/2019/06/Gleneagles-Global-Hospitals.png', //5
    'https://www.apollohospitals.com/images/locations/apollo-ahmedabad.png', //6
    'https://photos.wikimapia.org/p/00/05/99/54/18_big.jpg', //7
    'https://www.manipalhospitals.com/uploads/timeline/TIMELINE_11.jpg', //8
    'https://s.ndtvimg.com/images/entities/300/medanta-the-medicity_636408318760267706_108167.jpg', //9
    'https://www.vaidam.com/sites/default/files/hospitals/aretmis-gurgaon.jpg', //10
    'https://www.gericare.in/static/images/services/nursing.jpg', //11
    'https://images.jdmagicbox.com/comp/coimbatore/f5/0422px422.x422.170127213335.f7f5/catalogue/grand-world-elder-care-coimbatore-gfoesatiqj.jpg?clr=#3b3b2b', //12
    'https://i.pinimg.com/originals/c9/bc/d3/c9bcd31a38ea9a122abd6d28a56373f6.jpg', //13
    'https://i.ytimg.com/vi/XnH0iTZX47U/hqdefault.jpg', //14
    'https://www.drsantoshshetty.com/wp-content/uploads/2018/08/Dignity-Foundation-to-Create-an-Awareness-on-Arthritis-Speaker-Dr-Santosh-Shetty-Mumbai-960x750.jpg', //15
    'https://ardsi.org/wp-content/uploads/2020/02/Untitled-design-2-1024x1024.png', //16
    'https://media-exp1.licdn.com/dms/image/C560BAQEss9qc5WaN4Q/company-logo_200_200/0?e=2159024400&v=beta&t=6IcdSpNtZdXz7SBge9lAERkQaCIAJzrctbtH54A4ZcA', //17
    'https://secureservercdn.net/104.238.69.231/a22.d99.myftpupload.com/wp-content/uploads/2017/08/helpage-1.png', //18
    'https://images.milaap.org/milaap/image/upload/v1515045832/production/images/campaign/26829/cf-0249_mbbpd6_1515045831.jpg?enhance=true&format=jpg&height=315&mode=fit&width=420', //19
    'https://ardsi.org/wp-content/uploads/2020/02/awareness-1024x1024.png', //20
  ];
  static List web = [
    "https://www.aiims.edu", //1
    "https://www.kimshospitals.com", //2
    "https://www.info@blkhospital.com", //3
    "https://www.fortismalar.com", //4
    "https://www.gleneaglesglobalhospitals.com", //5
    "https://www.chennai.apollohospitals.com", //6
    "https://www.miotinternational.com", //7
    "https://www.manipalhospitals.com", //8
    "https://www.medanta.org", //9
    "https://www.artemishospitals.com", //10
    "https://www.veecare.co.in", //11
    "https://www.grandworldeldercare.com", //12
    "https://www.anvayaa.com", //13
    "https://www.nightingaleseldercare.com", //14
    "https://www.dignityfoundation.com", //15
    "https://www.dementiabangalore.in", //16
    "https://www.kshetracare.in", //17
    "https://www.helpageindia.org", //18
    "https://www.dementiaindia.org", //19
    "https://www.ardsi.org", //20
  ];

  static List name = [
    'ALL INDIA INSTITUTE OF MEDICAL SCIENCES, NEW DELHI', //1
    'KIMS HOSPITAL', //2
    'BLK SUPER SPECIALITY HOSPITAL', //3
    'FORTIS MALAR HOSPITAL CHENNAI', //4
    'GLENEAGLES GLOBAL HEALTH CITY', //5
    'APOLLO CITY CENTRE HOSPITAL', //6
    'MIOT INTERNATIONALS', //7
    'MANIPAL HOSPITAL BANGLORE', //8
    'MEDANTA THE MEDICITY, GURGAON', //9
    'ARTEMIS HOSPITAL, GURGAON', //10
    'VEE CARE HOME NURSING SERVICE', //11
    'GRAND WORLD ELDER CARE', //12
    'ANVAYAA- SENIOR HOME HEALTH CARE SERVICES', //13
    'NIGHTINGALES MEDICAL TRUST', //14
    'DIGNITY FOUNDATIONS', //15
    'ALZHEIMERS AND RELATED DISORDER SOCIETY-BANGALORE CHAPTERS', //16
    'KSHETRA ASSISTED LIVING AND DEMENTIA CARE FACILITY', //17
    'HELPAGE INDIA', //18
    'DEMCARE, DEMENTIA CARE IN SCARF', //19
    'ARDSI CHENNAI CHAPTER AND MADRAS MEMORY CLINIC' //20
  ];

  static List address = [
    'Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi 110029',
    'Kims, Ambedkar Nagar, Nellore, Andhra Pradesh 524003',
    'BLK Super Speciality Hospital,  Pusa Road,  New Delhi-110005',
    'No. 52, 1st Main Rd, Gandhi Nagar, Adyar, Chennai, Tamil Nadu 600020',
    '439, Embassy Residency Rd, Cheran Nagar, Perumbakkam,Chennai, Tamil Nadu 600100',
    'No. 134, Mint St, opposite Ramar Temple, Sowcarpet, Peddanaickenpet, George Town, Chennai, Tamil Nadu 600079',
    '4/112, Mount Poonamalle High Rd, Sathya Nagar, Manapakkam, Chennai, Tamil Nadu 600089',
    '98, HAL Old Airport Rd, Kodihalli, Bengaluru, Karnataka 560017',
    'CH Baktawar Singh Road, Sector 38, Gurugram, Haryana 122001',
    'Near Unitech Cyber park, Sector 51, Gurgaon, Haryana - 122001',
    'No : C/B-10, First Floor, Gemini Parsn Complex, Kodambakkam High Road, Chennai - 600 006',
    'Tranquil acres,Block B1 Phase 1, 200 Feet MMRD Thoraipakkam Pallavaram Main Road,Kovilampakkam, Chennai, TamilNadu 600129',
    'Anvayaa Kincare Pvt. Ltd. 202, 2nd floor, Plot no.705, Road no.36, jubilee hills Hyderabad: 500 033 LandMark: Above WoodLand Showroom',
    '8P6, 3rd A Cross Rd, Kasturinagar, Banasawadi, Bengaluru 560043, India',
    'Dignity Foundation 132, (Old No.52-A), AK Block, 7th Main Road, Anna Nagar, Chennai - 600040',
    'c/o Nightingales Medical Trust, 8P6, 3rd A Cross, Kasturinagar, Banaswadi, Bangalore 560043',
    'Plot No. 8, 9,14,15, Rd Number 12, Sai Aishwarya Layout Khajaguda, Telangana 500089 ',
    'C–14 Qutab Institutional Area New Delhi - 110016',
    'R/7a,North Main Road, Anna Nagar West Extension, Chennai 600101',
    'D89, 3rd Street, Anna Nagar East, Chennai 600 102'
  ];

  static List number = [
    '26588700',
    '08612315835',
    '+911130403040 ',
    '09962599933',
    '04444777000',
    '18605004916',
    '04442002288',
    '18001025555',
    '01244141414',
    '01244511111',
    '+914423745643',
    '7667711111',
    '+917288818181',
    '+918042426565',
    '+914426210363',
    '+918042426565',
    '+919666641238',
    '01141688955',
    '7358588822',
    '04442629209'
  ];

  static List type = [
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Hospital',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre',
    'Care Centre'
  ];
  @override
  _CarecentresState createState() => _CarecentresState();
}

class _CarecentresState extends State<Carecentres> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
        title: Text(
          "Hospitals and Care Centres",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/hosp.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.teal.withOpacity(.4),
                        Colors.blue.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: List.generate(Carecentres.address.length, (index) {
                    return Card(
                      elevation: 0,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.network(
                              Carecentres.image[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              Carecentres.name[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              Carecentres.type[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                FlatButton.icon(
                                  label: Text("Details"),
                                  icon: Icon(Icons.info_outline),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/details',
                                        arguments: {
                                          'address': Carecentres.address[index],
                                          'name': Carecentres.name[index],
                                          'type':Carecentres.type[index],
                                          'number': Carecentres.number[index],
                                          'image': Carecentres.image[index],
                                          'web': Carecentres.web[index],
                                        });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
