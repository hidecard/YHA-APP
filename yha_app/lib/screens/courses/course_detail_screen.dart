import 'package:flutter/material.dart';
import 'enrollment_success_screen.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy course data
    final course = {
      'title': 'Flutter for Beginners',
      'instructor': 'John Doe',
      'date': 'Aug 1, 2025',
      'image': null,
      'description':
          'Learn the basics of Flutter and build your first mobile app. This course covers widgets, layouts, navigation, and more.',
    };
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Course Detail'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blueGrey,
        elevation: 0.5,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Container(
                    height: 180,
                    color: Colors.blue[50],
                    child: const Center(
                      child: Icon(
                        Icons.school,
                        size: 80,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course['title'] as String,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 18,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            course['instructor'] as String,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.blueGrey[500]),
                          ),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.calendar_today,
                            size: 18,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            course['date'] as String,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.blueGrey[400]),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        course['description'] as String,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const EnrollmentSuccessScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Enroll / Apply',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
