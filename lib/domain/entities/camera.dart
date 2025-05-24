class Camera {
  final String? privateId;
  final String? id;
  final String? name;
  final Location? loc;
  final Values? values;
  final String? dist;
  final bool? ptz;
  final int? angle;
  final String? liveviewUrl;
  final bool? isEnabled;
  final DateTime? lastModified;

  Camera({
    this.privateId,
    this.id,
    this.name,
    this.loc,
    this.values,
    this.dist,
    this.ptz,
    this.angle,
    this.liveviewUrl,
    this.isEnabled,
    this.lastModified,
  });

  factory Camera.fromJson(dynamic jsonData) {
    Map<String, dynamic>? json = jsonData;

    if (json == null) {
      throw ArgumentError('The provided JSON map is null');
    }
    return Camera(
      privateId: json['_id'] ?? '',
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      loc: json['loc'] != null ? Location.fromJson(json['loc']) : null,
      values: json['values'] != null ? Values.fromJson(json['values']) : null,
      dist: json['dist'] ?? '',
      ptz: json['ptz'] ?? false,
      angle: json['angle'] ?? 0,
      liveviewUrl: json['liveviewUrl'] ?? '',
      isEnabled: json['isEnabled'] ?? false,
      lastModified: json['lastModified'] != null
          ? DateTime.tryParse(json['lastModified']) ?? DateTime(1970, 1, 1)
          : null,
    );
  }
}

class Location {
  final String type;
  final List<double> coordinates;

  Location({
    required this.type,
    required this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json['type'] ?? "",
      coordinates: List<double>.from(json['coordinates']),
    );
  }
}

class Values {
  final String ip;
  final String channel;

  Values({
    required this.ip,
    required this.channel,
  });

  factory Values.fromJson(Map<String, dynamic> json) {
    return Values(
      ip: json['ip'] ?? "",
      channel: json['channel'] ?? "",
    );
  }
}
