import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 2),
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Home',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '652',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4),
              Text(
                'ppm',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600]),
              ),
            ],
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'Good',
              style: TextStyle(
                  color: Colors.green[800],
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 16),
          Divider(height: 1, color: Colors.grey[300]),
          SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              // Add your navigation logic here
            },
            child: Row(
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: Colors.blue[600],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}