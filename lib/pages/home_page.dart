import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Greeting
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello,',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                        'Jeff!',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  // Profile Picture
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // card -> "how do you feel?"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    // animation or picture
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                        'https://assets3.lottiefiles.com/packages/lf20_tutvdkg0.json',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    // how do you feel + button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Fill out your medical card now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius:
                                    BorderRadiusDirectional.circular(12)),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // horizontal list view -> medical categories
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/dentist.png',
                  ),
                  CategoryCard(
                    categoryName: 'Doctor',
                    iconImagePath: 'lib/icons/doctor.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/icons/pharm.png',
                  ),
                  CategoryCard(
                    categoryName: 'Psychologist',
                    iconImagePath: 'lib/icons/psychology.png',
                  ),
                  CategoryCard(
                    categoryName: 'Dermatologist',
                    iconImagePath: 'lib/icons/allergy.png',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // Doctor List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // Doctor Card Area
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor_1.jpg',
                    rating: '4.9',
                    doctorName: 'Dr. John Doe',
                    doctorProfession: 'Medical Doctor',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor_2.jpg',
                    rating: '4.8',
                    doctorName: 'Dr. Jane Doe',
                    doctorProfession: 'OBGYN',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor_3.jpg',
                    rating: '4.6',
                    doctorName: 'Dr. John Smith',
                    doctorProfession: 'Surgeon',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
