//
//  FactView.swift
//  AfrikaApp
//
//  Created by joooli on 8/27/21.
//

import SwiftUI

// MARK: - Fact
struct FactView: View {
    // MARK: - Property
    let animal: AnimalList
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact,id:\.self) { item in
                    Text(item)
                } //: LOOP
            } //: TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168, maxHeight: 180)
        } //:BOX
    }
}


// MARK: - Preview
struct FactView_Previews: PreviewProvider {
    static let animal: [AnimalList] = Bundle.main.decode("animals.json")
    static var previews: some View {
        FactView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
