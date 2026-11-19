class ApodModel {
  final String title;
  final String date;
  final String hdurl;

  ApodModel({required this.title, required this.date, required this.hdurl});

// Method of converting JSON INTO A DART OBJECT USING class ApodModel
  factory ApodModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'title': String title, 'date': String date, 'hdurl': String hdurl} =>
        ApodModel(title: title, date: date, hdurl: hdurl),
      _ => throw const FormatException('Failed to load APOD.'),
    };
  }
}
