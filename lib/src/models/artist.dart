// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify;

@JsonSerializable()
class Artist extends Object implements ArtistSimple {
  Artist() {}
  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  // /// Known external URLs for this artist.
  //@JsonKey(name: 'external_urls')
  //Map<String, String> externalUrls;

  /// A link to the Web API endpoint providing full details of the artist.
  String href;

  /// The Spotify ID for the artist.
  String id;

  /// The name of the artist
  String name;

  /// The object type: "artist"
  String type;

  /// The Spotify URI for the artist.
  String uri;

  /// Information about the followers of the artist.
  Followers followers;

  /**
   * A list of the genres the artist is associated with. 
   * For example: 
   *    "Prog Rock", "Post-Grunge". 
   * 
   * (If not yet classified, the array is empty.) 
   */
  List<String> genres;

  /// Images of the artist in various sizes, widest first.
  List<Image> images;

  /**
   * The popularity of the artist. The value will be between 0 and 100, with 100
   * being the most popular. The artist's popularity is calculated from the 
   * popularity of all the artist's tracks.
   */
  int popularity;
}

@JsonSerializable()
class ArtistSimple extends Object {
  ArtistSimple() {}
  factory ArtistSimple.fromJson(Map<String, dynamic> json) =>
      _$ArtistSimpleFromJson(json);

  // /// Known external URLs for this artist.
  //@JsonKey(name: 'external_urls')
  //Map<String, String> externalUrls;

  /// A link to the Web API endpoint providing full details of the artist.
  String href;

  /// The Spotify ID for the artist.
  String id;

  /// The name of the artist
  String name;

  /// The object type: "artist"
  String type;

  /// The Spotify URI for the artist.
  String uri;
}
