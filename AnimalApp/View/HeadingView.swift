//
//  HeadingView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - Property
    var headingImage: String
    var headingText: String
    // MARK: - Body
    var body: some View {
        HStack {
            Image(systemName:headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }//:HSTACK
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
