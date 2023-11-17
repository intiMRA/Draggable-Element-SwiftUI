//
//  ContentView.swift
//  DragNDrop
//
//  Created by ialbuquerque on 14/11/23.
//

import SwiftUI

enum Fruits: String, CaseIterable {
    case orange, pear, grape
    var image: Image {
        switch self {
        case .orange:
            return .init(.orange)
        case .pear:
            return .init(.pear)
        case .grape:
            return .init(.grape)
        }
    }
}

struct ContentView: View {
    @State var draggableItems = Fruits.allCases
    @State var droppedFruit: [Fruits] = []
    @State var selectedItem: Fruits?
    
    var body: some View {
        VStack {
            HStack {
                ForEach(draggableItems, id: \.self) { fruit in
                    fruit.image
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
        .padding()
    }
}
