import 'dart:convert';

import 'package:flutter/foundation.dart';

class CattleFair {
  String name;

  String animalname;
  String animallover;
  String phone;
  String address;
  String breed;
  String age;
  String teeth;
  String calving;
  String milkperday;
  String maxmilk;
  List<String> picurl;
  String videourl;
  bool show;
  String uid;
  CattleFair({
    this.name,
    this.animalname,
    this.animallover,
    this.phone,
    this.address,
    this.breed,
    this.age,
    this.teeth,
    this.calving,
    this.milkperday,
    this.maxmilk,
    this.picurl,
    this.videourl,
    this.show,
    this.uid,
  });
  /*
  CattleFair copyWith({
    String? name,
    String? animalname,
    String? animallover,
    String? phone,
    String? address,
    String? breed,
    String? age,
    String? teeth,
    String? calving,
    String? milkperday,
    String? maxmilk,
    List<String>? picurl,
    String? videourl,
    bool? show,
    String? uid,
  }) {
    return CattleFair(
      name: name ?? this.name,
      animalname: animalname ?? this.animalname,
      animallover: animallover ?? this.animallover,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      breed: breed ?? this.breed,
      age: age ?? this.age,
      teeth: teeth ?? this.teeth,
      calving: calving ?? this.calving,
      milkperday: milkperday ?? this.milkperday,
      maxmilk: maxmilk ?? this.maxmilk,
      picurl: picurl ?? this.picurl,
      videourl: videourl ?? this.videourl,
      show: show ?? this.show,
      uid: uid ?? this.uid,
    );
  }*/

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'animalname': animalname,
      'animallover': animallover,
      'phone': phone,
      'address': address,
      'breed': breed,
      'age': age,
      'teeth': teeth,
      'calving': calving,
      'milkperday': milkperday,
      'maxmilk': maxmilk,
      'picurl': picurl,
      'videourl': videourl,
      'show': show,
      'uid': uid,
    };
  }

  factory CattleFair.fromMap(Map<String, dynamic> map) {
    return CattleFair(
      name: map['name'],
      animalname: map['animalname'],
      animallover: map['animallover'],
      phone: map['phone'],
      address: map['address'],
      breed: map['breed'],
      age: map['age'],
      teeth: map['teeth'],
      calving: map['calving'],
      milkperday: map['milkperday'],
      maxmilk: map['maxmilk'],
      picurl: List<String>.from(map['picurl']),
      videourl: map['videourl'],
      show: map['show'],
      uid: map['uid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CattleFair.fromJson(String source) =>
      CattleFair.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CattleFair(name: $name, animalname: $animalname, animallover: $animallover, phone: $phone, address: $address, breed: $breed, age: $age, teeth: $teeth, calving: $calving, milkperday: $milkperday, maxmilk: $maxmilk, picurl: $picurl, videourl: $videourl, show: $show, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CattleFair &&
        other.name == name &&
        other.animalname == animalname &&
        other.animallover == animallover &&
        other.phone == phone &&
        other.address == address &&
        other.breed == breed &&
        other.age == age &&
        other.teeth == teeth &&
        other.calving == calving &&
        other.milkperday == milkperday &&
        other.maxmilk == maxmilk &&
        listEquals(other.picurl, picurl) &&
        other.videourl == videourl &&
        other.show == show &&
        other.uid == uid;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        animalname.hashCode ^
        animallover.hashCode ^
        phone.hashCode ^
        address.hashCode ^
        breed.hashCode ^
        age.hashCode ^
        teeth.hashCode ^
        calving.hashCode ^
        milkperday.hashCode ^
        maxmilk.hashCode ^
        picurl.hashCode ^
        videourl.hashCode ^
        show.hashCode ^
        uid.hashCode;
  }
}
