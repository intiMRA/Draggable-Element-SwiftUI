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
                        .onDrag({
                            self.selectedItem = fruit
                            return MyItemProvider(selectedItem: $selectedItem, draggableItems: $draggableItems, originalItems: draggableItems)
                        })
                        .onDrop(of: [.text], delegate: MyDropDelegate(selectedItem: $selectedItem, draggableItems: $draggableItems, destinationItem: fruit))
                }
            }
            .animation(.easeIn, value: draggableItems)
        }
        .padding()
    }
}

class MyItemProvider: NSItemProvider {
    @Binding var selectedItem: Fruits?
    @Binding var draggableItems: [Fruits]
    let originalItems: [Fruits]
    
    init(selectedItem: Binding<Fruits?>, draggableItems: Binding<[Fruits]>, originalItems: [Fruits]) {
        self._selectedItem = selectedItem
        self._draggableItems = draggableItems
        self.originalItems = originalItems
        super.init()
    }
    
    deinit {
        if self.selectedItem != nil {
            self.draggableItems = self.originalItems
        }
    }
}

class MyDropDelegate: DropDelegate {
    @Binding var selectedItem: Fruits?
    @Binding var draggableItems: [Fruits]
    let destinationItem: Fruits
    
    init(selectedItem: Binding<Fruits?>, draggableItems: Binding<[Fruits]>, destinationItem: Fruits) {
        self._selectedItem = selectedItem
        self._draggableItems = draggableItems
        self.destinationItem = destinationItem
    }
    
    func performDrop(info: DropInfo) -> Bool {
        self.selectedItem = nil
        return false
    }
    
    func dropEntered(info: DropInfo) {
        if let newIndex = draggableItems.firstIndex(where: { $0 == destinationItem }), let selectedItem {
            draggableItems.removeAll(where: { $0 == selectedItem })
            draggableItems.insert(selectedItem, at: newIndex)
        }
    }
}
