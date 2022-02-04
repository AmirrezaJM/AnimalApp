//
//  InsetGalleryView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI


// MARK: InsetGallery
struct InsetGalleryView: View {
//  MARK: - Property
    let animal: AnimalList
//  MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment:.center,spacing:15) {
                ForEach(animal.gallery, id: \.self) { animalGal in
                    Image("\(animalGal)")
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                }
            }
        }
    }
}


// MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animal: [AnimalList] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
