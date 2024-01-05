//
//  GooglePlacesResponse.swift
//  CloudAngles
//
//  Created by Saurabh Sharma on 05/01/24.
//

import Foundation

struct NominatimResult: Codable {
    let placeID: Int
    let licence: String
    let osmType: OsmType
    let osmID: Int
    let lat, lon: String
    let nominatimResultClass: Addresstype
    let type: TypeEnum
    let placeRank: Int
    let importance: Double
    let addresstype: Addresstype
    let name: Name
    let displayName: String
    let boundingbox: [String]

    enum CodingKeys: String, CodingKey {
        case placeID = "place_id"
        case licence
        case osmType = "osm_type"
        case osmID = "osm_id"
        case lat, lon
        case nominatimResultClass = "class"
        case type
        case placeRank = "place_rank"
        case importance, addresstype, name
        case displayName = "display_name"
        case boundingbox
    }
}

enum Addresstype: String, Codable {
    case amenity = "amenity"
}

enum Name: String, Codable {
    case starbucks = "Starbucks"
}

enum OsmType: String, Codable {
    case node = "node"
    case way = "way"
}

enum TypeEnum: String, Codable {
    case cafe = "cafe"
}

typealias NominatimResults = [NominatimResult]
