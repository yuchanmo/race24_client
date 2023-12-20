// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CompanyInfo {
  final int rowId;
  final String description;
  CompanyInfo({
    required this.rowId,
    required this.description,
  });

  CompanyInfo copyWith({
    int? rowId,
    String? description,
  }) {
    return CompanyInfo(
      rowId: rowId ?? this.rowId,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowId': rowId,
      'description': description,
    };
  }

  factory CompanyInfo.fromMap(Map<String, dynamic> map) {
    return CompanyInfo(
      rowId: map['rowId'] as int,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyInfo.fromJson(String source) =>
      CompanyInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CompanyInfo(rowId: $rowId, description: $description)';

  @override
  bool operator ==(covariant CompanyInfo other) {
    if (identical(this, other)) return true;

    return other.rowId == rowId && other.description == description;
  }

  @override
  int get hashCode => rowId.hashCode ^ description.hashCode;
}
