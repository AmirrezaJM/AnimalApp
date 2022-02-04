//
//  VideoListModel.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import Foundation


struct VideoList: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
