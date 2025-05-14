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
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int? subtractTotalAndPayment(
  int? total,
  int? payment,
) {
  if (total != null && payment != null) {
    return total - payment;
  }
  return null;
}

int? parseStringToInt(String? value) {
  if (value == null || value.trim().isEmpty) {
    return null;
  }
  return int.tryParse(value.trim());
}
