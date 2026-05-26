import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topRight,
                child: Text('Jobspot', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              Center(
                child: SvgPicture.asset(
                  'lib/images/splash_screen.svg',
                  height: 300,
                ),
              ),
              const Spacer(),
              RichText(
                text: const TextSpan(
                  style: AppTextStyles.heading,
                  children: [
                    TextSpan(text: 'Find Your\n'),
                    TextSpan(
                      text: 'Dream Job\n',
                      style: TextStyle(color: AppColors.secondary, decoration: TextDecoration.underline),
                    ),
                    TextSpan(text: 'Here!'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Explore all the most exciting jobs roles based on your interest and study major.',
                style: AppTextStyles.body,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  backgroundColor: AppColors.primary,
                  shape: const CircleBorder(),
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
