// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
    ResponseModel({
        this.accessToken,
        this.expiresIn,
        this.refreshToken,
        this.tokenType,
        this.providerToken,
        this.user,
    });

    String? accessToken;
    int? expiresIn;
    String? refreshToken;
    String? tokenType;
    dynamic providerToken;
    User? user;

    factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        accessToken: json["access_token"],
        expiresIn: json["expires_in"],
        refreshToken: json["refresh_token"],
        tokenType: json["token_type"],
        providerToken: json["provider_token"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "expires_in": expiresIn,
        "refresh_token": refreshToken,
        "token_type": tokenType,
        "provider_token": providerToken,
        "user": user!.toJson(),
    };
}

class User {
    User({
        this.id,
        this.appMetadata,
        this.userMetadata,
        this.aud,
        this.email,
        this.createdAt,
        this.confirmedAt,
        this.lastSignInAt,
        this.role,
        this.updatedAt,
    });

    String? id;
    AppMetadata? appMetadata;
    UserMetadata? userMetadata;
    String? aud;
    String? email;
    DateTime? createdAt;
    DateTime? confirmedAt;
    DateTime? lastSignInAt;
    String? role;
    DateTime? updatedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        appMetadata: AppMetadata.fromJson(json["app_metadata"]),
        userMetadata: UserMetadata.fromJson(json["user_metadata"]),
        aud: json["aud"],
        email: json["email"],
        createdAt: DateTime.parse(json["created_at"]),
        confirmedAt: DateTime.parse(json["confirmed_at"]),
        lastSignInAt: DateTime.parse(json["last_sign_in_at"]),
        role: json["role"],
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "app_metadata": appMetadata!.toJson(),
        "user_metadata": userMetadata!.toJson(),
        "aud": aud,
        "email": email,
        "created_at": createdAt!.toIso8601String(),
        "confirmed_at": confirmedAt!.toIso8601String(),
        "last_sign_in_at": lastSignInAt!.toIso8601String(),
        "role": role,
        "updated_at": updatedAt!.toIso8601String(),
    };
}

class AppMetadata {
    AppMetadata({
        this.provider,
        this.providers,
    });

    String? provider;
    List<String>? providers;

    factory AppMetadata.fromJson(Map<String, dynamic> json) => AppMetadata(
        provider: json["provider"],
        providers: List<String>.from(json["providers"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "provider": provider,
        "providers": List<dynamic>.from(providers!.map((x) => x)),
    };
}

class UserMetadata {
    UserMetadata();

    factory UserMetadata.fromJson(Map<String, dynamic> json) => UserMetadata(
    );

    Map<String, dynamic> toJson() => {
    };
}
