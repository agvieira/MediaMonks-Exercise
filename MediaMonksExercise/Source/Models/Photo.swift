//
//  Photo.swift
//  MediaMonksExercice
//
//  Created by Andre Vieira on 14/02/18.
//  Copyright © 2018 Andre Vieira. All rights reserved.
//

import Foundation

struct Photo: Mappable {
    var albumId: Int
    var photoId: Int
    var title: String
    var url: URL?
    var thumbnailUrl: URL?
    private var fromUrl: (Any) -> URL? = { strUrl -> URL? in
        guard let strUrl = strUrl as? String else { return nil }
        return URL(string: strUrl)
    }

    init(map: Mapper) throws {
        try albumId = map.from("albumId")
        try photoId = map.from("id")
        try title = map.from("title")
        try url = URL(string: map.from("url"))
        try thumbnailUrl = URL(string: map.from("thumbnailUrl"))
    }
}
