import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool calculateThalassemiaRisk(
  List<double> userAnswers,
  List<GejalaStruct> listGejala,
) {
  double totalSimilarity = 0.0;
  for (int i = 0; i < 10; i++) {
    totalSimilarity += (1.0 - (userAnswers[i] - listGejala[i].cFPakar).abs());
  }
  double casePercentage = (totalSimilarity / 10.0) * 100.0;

  return casePercentage >= 50.0;
}

List<double> collectUserAnswers(
  String g01,
  String g02,
  String g03,
  String g04,
  String g05,
  String g06,
  String g07,
  String g08,
  String g09,
  String g10,
) {
  List<String> listAnswers = [];
  listAnswers.add(g01);
  listAnswers.add(g02);
  listAnswers.add(g03);
  listAnswers.add(g04);
  listAnswers.add(g05);
  listAnswers.add(g06);
  listAnswers.add(g07);
  listAnswers.add(g08);
  listAnswers.add(g09);
  listAnswers.add(g10);

  List<double> listAnswersDouble = [];
  for (int i = 0; i < 10; i++) {
    listAnswersDouble.add(double.parse(listAnswers[i]));
  }

  return listAnswersDouble;
}
