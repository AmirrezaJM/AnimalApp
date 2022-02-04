//
//  VideoPlayerView.swift
//  AfrikaApp
//
//  Created by joooli on 8/28/21.
//

import SwiftUI
import AVKit


// MARK: - VideoPlayerView
struct VideoPlayerView: View {
    //MARK: - Property
//    let video: [VideoList]
    var videoSelected:String
    var videoTitle:String
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                }
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: .topLeading)
                        .padding()
                    ,alignment: .topLeading
                )
        }
            .navigationBarTitle(videoTitle,displayMode: .inline)
        }
    }
}


// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
