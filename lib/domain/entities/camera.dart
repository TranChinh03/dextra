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
    Map<String, dynamic> json = jsonData;
    return Camera(
      privateId: json.containsKey('_id') ? json['_id'] : null,
      id: json.containsKey('id') ? json['id'] : null,
      name: json.containsKey('name') ? json['name'] : null,
      loc: json.containsKey('loc') ? Location.fromJson(json['loc']) : null,
      values:
          json.containsKey('values') ? Values.fromJson(json['values']) : null,
      dist: json.containsKey('dist') ? json['dist'] : '',
      ptz: json.containsKey('ptz') ? json['ptz'] : false,
      angle: json.containsKey('angle') ? json['angle'] : 0,
      liveviewUrl: json.containsKey('liveviewUrl') ? json['liveviewUrl'] : '',
      isEnabled: json.containsKey('isEnabled') ? json['isEnabled'] : false,
      lastModified:
          json.containsKey('lastModified') && json['lastModified'] != null
              ? DateTime.tryParse(json['lastModified']) ?? DateTime(1970, 1, 1)
              : null,
    );
  }
}

class Location {
  final String? type;
  final List<double>? coordinates;

  Location({
    this.type,
    this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json.containsKey('type') ? json['type'] : null,
      coordinates: json.containsKey('coordinates')
          ? List<double>.from(json['coordinates'])
          : null,
    );
  }
}

class Values {
  final String? ip;
  final String? channel;

  Values({
    this.ip,
    this.channel,
  });

  factory Values.fromJson(Map<String, dynamic> json) {
    return Values(
      ip: json.containsKey('ip') ? json['ip'] : null,
      channel: json.containsKey('channel') ? json['channel'] : null,
    );
  }
}
