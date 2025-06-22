class SendEmailByDateQuery {
  final String? email;
  final String? dateFrom;
  final String? dateTo;

  SendEmailByDateQuery({
    this.email,
    this.dateFrom,
    this.dateTo,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email ?? '',
      'dateFrom': dateFrom ?? '',
      'dateTo': dateTo ?? '',
    };
  }
}
