//
//  AnimalDetailView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI

// MARK: - AnimalDetailView
struct AnimalDetailView: View {
    // MARK: - Property
    let animal: AnimalList
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.center,spacing:20) {
                // Hero Image
                Image("\(animal.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(height:300)
                // TITLE
                Text("\(animal.name)".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .underline(true,color: Color.accentColor)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                // HeadLine
                Text("\(animal.headline)")
                    .font(.headline)
                    .foregroundColor(Color.accentColor)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
      
                //Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    FactView(animal: animal)
                }
                .padding(.horizontal)
                //Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text("\(animal.description)")
                        .font(.body)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)
                //Map
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                //Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    WikipediaLinkView(animal: animal)
                }
                .padding()
                  
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        } //:ScrollView
    }
}


// MARK: - Preview
struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [AnimalList] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animal[0])
    }
}
