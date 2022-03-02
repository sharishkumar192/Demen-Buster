import 'package:flutter/material.dart';

class Neurologist extends StatelessWidget {
  static List doc_name = [
    "Dr Atma Ram Bansal",
    " Dr Mukul Varma",
    " Dr Praveen Gupta",
    "Dr S Dinesh Nayak",
    " Dr Rajiv Anand",
    " Dr Shirish M Hastak",
    "Dr Vinit Suri",
    " Dr Dinesh Sarin",
    "Dr Nitin Sampat",
    " Dr Anand Kumar Saxena",
  ];

  static List doc_img = [
    "https://i.ytimg.com/vi/bSPncidmgR4/maxresdefault.jpg",
    "https://www.neuroaid.in/wp-content/uploads/2018/12/Dr-Mukul-Varma.jpg",
    "https://static.medmonks.com/home/img/doctors/1540456173.jpeg",
    "https://static.medmonks.com/home/img/doctors/1542097506.jpeg",
    "https://static.medmonks.com/home/img/doctors/1540460888.jpeg",
    "https://static.medmonks.com/home/img/doctors/1538736220.jpeg",
    "https://static.medmonks.com/home/img/doctors/1538824295.jpeg",
    "https://static.medmonks.com/home/img/doctors/1543565054.png",
    "https://static.medmonks.com/home/img/doctors/1538736044.jpeg",
    "https://static.medmonks.com/home/img/doctors/1541054052.jpeg",
  ];

  static List doc_experience = [
    "11+ Year",
    "27 Years",
    "10+ Years",
    "23 Years",
    "37 Years",
    "20+ Year",
    "27+ Years",
    "23+ Years",
    "35+ Years",
    "20+ Years",
  ];

  static List doc_hospital = [
    " Medanta-The Medicity. Gurugram, Delhi NCR",
    " Indraprastha Apollo Hospital, New Delhi",
    " Fortis Memorial Research Institute, Gurugram, Delhi NCR",
    "Gleneagles Global Hospital, Perumbakkam, chennai",
    "BLK Super Speciality Hospital, New Delhi",
    "Wockhardt Hospital, Mumbai",
    " Indraprastha Apollo Hospital, New Delhi",
    " Venkateshwar Hospital, Dwarka, Delhi NCR",
    " Wockhardt Hospital, Central Mumbai",
    " Max Super Speciality Hospital, Saket, New Delhi",
  ];

  static List doc_education = [
    "MBBS │ MD (General Medicine)│ DM (Neurology) │ PDF (Epilepsy)",
    "MBBS │ MD (Medicine) │ DM (Neurology)",
    " MBBS │ MD (Internal Medicine)│ DM (Neurology)",
    "MBBS │ MD (General Medicine)│ DM (Neurology) ",
    "MBBS │MD (Internal Medicine) │ DM (Neurology)",
    "MBBS │ M(Neurology) │ DM (Neurology)",
    "MBBS │ MD (General Medicine) │ DM (Neurology)",
    "MBBS│ MD (General Medicine)│ DM (Neurology)",
    " MBBS │ MD (General Medicine) │ DNB (Neurology)",
    "MBBS │ MD (General Medicine)│ DM (Neurology)",
  ];

  static List doc_number = [
    "01244141414",
    "09899453074",
    "09990766036",
    "180012311111",
    "09958112045",
    "8080802665",
    "18605001066",
    "-",
    "02223885469",
    "-",
  ];

  static List doc_info = [
    "Dr Atma Ram Bansal’s expertise includes comprehensive care for epilepsy, epilepsy surgery and electroencephalography advance reporting system. He is also a significant member of Indian Academy of Neurology",
    "Dr Mukul Varma’s special interests include treatment of headaches, movement disorders, and multiple sclerosis. He also holds a lifetime membership in Movement Disorder Society, Indian Academy of Neurology and the American Academy of Neurology.",
    "Dr Praveen Gupta is currently working as the director and HOD of Neurology Department at Fortis Memorial Research Institute. He has previously worked at Paras Hospital and Artemis Hospital. He is credited for establishing the first stroke care centre in Gurugram and a DBS for treating epilepsy in Asia. He is associated with Neurology Association, Association of Physicians of Indian, and Indian Association of Neurology.",
    "Dr S Dinesh Nayak is among the top 10 neurologists in India whose expertise include Video-EEG monitoring, VNS (Vagus Nerve Stimulation), Intracranial EEG Monitoring and Epileptic seizures management. He is a significant member of Indian Academy of Neurology, Neurological Society of India, and Indian Epilepsy Association.",
    "Dr Rajiv Anand  is currently associated with BLK Super Speciality Hospital, where he works as the Senior Consultant and Director of Neurology Department. Dr Rajiv Anand has also worked at Jaipur Golden Hospital and Rajiv Gandhi Cancer Institute & Research Centre in the past. He has professional memberships of DMA, DNA, API, IEA, AAN etc. He specializes in treating Parkinson’s Disease, Stroke, Neuromuscular Disorders, Epilepsy, and Canalith Repositioning.",
    "Dr Shirish’s special interests include bridging therapy and hyperacute management stroke. Before joining Wockhardt Hospital, he has worked at Lilavati Hospital and KokilabenDhirubhai Ambani Hospital in Mumbai. Dr Shirish Hastak is responsible for introducing the first Stroke website and Helpline in India. He is amongst the best neurologists in India.",
    "Dr Vinit Suri started working at Indraprastha Apollo Hospital in 1995 and since have been working there. He has also worked at Asia Oceanic Epilepsy Congress and MoolchandKhairati Ram Hospital. He has been honored with several awards and is recognized for his contribution in the field of neurology. He is a reputed member of prestigious universities like Neurology Society of India, Indian Academy of Neurology, Delhi Neurological Association, Indian Stroke Association and American Society of Neurology",
    "Dr Dinesh Sarin is amongst the top 10 neurologists in India, who has a particular interest in the treatment of headaches and stroke. Before joining Venkateshwar Hospital, Dwarka, Dr Dinesh has worked at Max Hospital (Shalimar Bagh & Pitampura), Saroj Hospital, Rohini, St. Stephens Hospital and Mata Chanan Devi Hospital in New Delhi.",
    "Dr Nitin Sampat is the consultant of the neurology department at Wockhardt Hospital in Mumbai. He also works at Global Hospital, Mumbai as a visiting consultant. His special interests include treatment of epilepsy, headaches, clinical electrophysiology, and sleep disorders. He has won several awards and is recognized for his contribution to the medical field.",
    "Dr Anand Kumar Saxena is the current head of neurology department at Max Super Speciality Hospital in Saket, New Delhi. Before joining Max Hospital, he worked at BLK Super Speciality Hospital, and Indian Spinal Injuries Centre, Columbia Asia Hospital, Saket City Hospital and Umkal Multi Speciality Hospital. His special interests include treatment of Ischemic Stroke, Headache Disorders,  Movement Disorders and Nerve Muscle Disorders which makes him one of the best neurologists in India. He is also trained in using Inj Botulinum Toxin for treating different types of Post Stroke Spasticity and Dystonia.",
  ];
  Map _user_data;
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
          "Top Neurologists",
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
                        image: AssetImage('assets/images/neuro.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.white.withOpacity(.4),
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
                  children: List.generate( 
                    doc_name.length,
                    (index) {
                      return Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Image.network(
                                doc_img[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                doc_name[index],
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
                                doc_experience[index],
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
                                      Navigator.pushNamed(
                                        context,
                                        '/neurodetails',
                                        arguments: {
                                          'name': doc_name[index],
                                          'img': doc_img[index],
                                          'experience': doc_experience[index],
                                          'number': doc_number[index],
                                          'education': doc_education[index],
                                          'hospital': doc_hospital[index],
                                          'info': doc_info[index],
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
