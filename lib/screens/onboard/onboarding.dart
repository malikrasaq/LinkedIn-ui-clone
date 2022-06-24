import 'package:flutter/material.dart';
import 'package:linkedin_clone/components/custom_button.dart';
import 'package:linkedin_clone/components/header.dart';
import 'package:linkedin_clone/screens/signin.dart';
import 'package:linkedin_clone/screens/signup.dart';
import 'package:linkedin_clone/utils/navigtion.dart';
import 'package:linkedin_clone/screens/onboard/widgets/dotindicator.dart';
import 'package:linkedin_clone/screens/onboard/widgets/onboard_content.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
             const Header(text: '',),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                      image: data[index].image, title: data[index].title),
                ),
              ),
              const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                text: "Join now",
                color: Colors.blue[800],
                textcolor: Colors.white,
                onTap: () => AppNavigator(context: context)
                    .nextPage(screen: const SignUp()),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomButton(
                  text: "Continue with Google",
                  textcolor: Colors.black,
                  color: Colors.white,
                  
                  onTap: () {}),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => AppNavigator(context: context)
                    .nextPage(screen: const SignIn()),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardMain {
  final String image, title;

  OnboardMain({
    required this.image,
    required this.title,
  });
}

final List<OnboardMain> data = [
  OnboardMain(
      image: "assets/images/onboard.jpg", title: "Find and land your next job"),
  OnboardMain(
    image: "assets/images/onboardtwo.jpg",
    title: "Build your network on the go",
  ),
  OnboardMain(
    image: "assets/images/onboardthree.jpg",
    title: "Stay ahead with curated content for your career",
  ),
];
