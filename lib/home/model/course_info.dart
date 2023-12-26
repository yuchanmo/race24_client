// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class CourseInfo {
  final bool applyEvent;
  final int courseId;
  final int price;
  final String courseName;
  final String courseBannerUrl;
  final String courseDescription;
  final DateTime courseStartDate;
  final DateTime couresEndDate;
  CourseInfo({
    required this.applyEvent,
    required this.courseId,
    required this.price,
    required this.courseName,
    required this.courseBannerUrl,
    required this.courseDescription,
    required this.courseStartDate,
    required this.couresEndDate,
  });

  CourseInfo copyWith({
    bool? applyEvent,
    int? courseId,
    int? price,
    String? courseName,
    String? courseBannerUrl,
    String? courseDescription,
    DateTime? courseStartDate,
    DateTime? couresEndDate,
  }) {
    return CourseInfo(
      applyEvent: applyEvent ?? this.applyEvent,
      courseId: courseId ?? this.courseId,
      price: price ?? this.price,
      courseName: courseName ?? this.courseName,
      courseBannerUrl: courseBannerUrl ?? this.courseBannerUrl,
      courseDescription: courseDescription ?? this.courseDescription,
      courseStartDate: courseStartDate ?? this.courseStartDate,
      couresEndDate: couresEndDate ?? this.couresEndDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyEvent': applyEvent,
      'courseId': courseId,
      'price': price,
      'courseName': courseName,
      'courseBannerUrl': courseBannerUrl,
      'courseDescription': courseDescription,
      'courseStartDate': courseStartDate.millisecondsSinceEpoch,
      'couresEndDate': couresEndDate.millisecondsSinceEpoch,
    };
  }

  factory CourseInfo.fromMap(Map<String, dynamic> map) {
    return CourseInfo(
      applyEvent: map['applyEvent'] as bool,
      courseId: map['courseId'] as int,
      price: map['price'] as int,
      courseName: map['courseName'] as String,
      courseBannerUrl: map['courseBannerUrl'] as String,
      courseDescription: map['courseDescription'] as String,
      courseStartDate:
          DateTime.fromMillisecondsSinceEpoch(map['courseStartDate'] as int),
      couresEndDate:
          DateTime.fromMillisecondsSinceEpoch(map['couresEndDate'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseInfo.fromJson(String source) =>
      CourseInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CourseInfo(applyEvent: $applyEvent, courseId: $courseId, price: $price, courseName: $courseName, courseBannerUrl: $courseBannerUrl, courseDescription: $courseDescription, courseStartDate: $courseStartDate, couresEndDate: $couresEndDate)';
  }

  @override
  bool operator ==(covariant CourseInfo other) {
    if (identical(this, other)) return true;

    return other.applyEvent == applyEvent &&
        other.courseId == courseId &&
        other.price == price &&
        other.courseName == courseName &&
        other.courseBannerUrl == courseBannerUrl &&
        other.courseDescription == courseDescription &&
        other.courseStartDate == courseStartDate &&
        other.couresEndDate == couresEndDate;
  }

  @override
  int get hashCode {
    return applyEvent.hashCode ^
        courseId.hashCode ^
        price.hashCode ^
        courseName.hashCode ^
        courseBannerUrl.hashCode ^
        courseDescription.hashCode ^
        courseStartDate.hashCode ^
        couresEndDate.hashCode;
  }
}
