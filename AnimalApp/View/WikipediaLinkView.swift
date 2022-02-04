//
//  WikipediaLinkView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI


// MARK: WikipediaLinkView
struct WikipediaLinkView: View {
    // MARK: Property
    let animal : AnimalList
    // MARK: Body
    var body: some View {
        GroupBox {
            HStack(spacing: 12) {
                Image(systemName: "network")
                Text("Wikipedia")
                    .font(.title2)
                Spacer()
                Group {
                    Link(destination: (URL(string: "\(animal.link)") ?? URL(string: "https://wikipedia.org"))!) {
                        HStack {
                            Image(systemName: "link")
                            Text("\(animal.name)")
                                .font(.title2)
                        }
                        .foregroundColor(.accentColor)
                    } //:LINK
                } //: GROUP
            } //:HSTACK
        } //:BOX
    }
}


// MARK: Preview
struct WikipediaLinkView_Previews: PreviewProvider {
    static let animal : [AnimalList] = Bundle.main.decode("animals.json")
    static var previews: some View {
        WikipediaLinkView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
