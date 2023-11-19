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
                        .onDrop(of: [.text], delegate: MyDropDelegate(selectedItem: $selectedItem, draggableItems: $draggableItems, droppedFruit: $droppedFruit, destinationItem: fruit))
                }
            }
            fruitBowl
                .onDrop(of: [.text], delegate: MyDropDelegate(selectedItem: $selectedItem, draggableItems: $draggableItems, droppedFruit: $droppedFruit, destinationItem: nil, destinationIsBowl: true))
        }
        .animation(.easeIn, value: draggableItems)
        .padding()
    }
    
    
    @ViewBuilder
    var fruitBowl: some View {
        let orange = droppedFruit.firstIndex(where: { $0 == .orange })
        let grape = droppedFruit.firstIndex(where: { $0 == .grape })
        let pear = droppedFruit.firstIndex(where: { $0 == .pear })
        Group {
            switch(orange, grape, pear) {
            case (.none, .none , .none):
                Image(.fruitBowl)
                    .resizable()
            case (.some, .none, .none):
                Image(.fruitBowlOrange)
                    .resizable()
            case (.none, .some, .none):
                Image(.fruitBowlGrape)
                    .resizable()
            case (.none, .none, .some):
                Image(.fruitBowlPear)
                    .resizable()
            case (.some, .some, .none):
                Image(.fruitBowlOrangeGrape)
                    .resizable()
            case (.some, .none, .some):
                Image(.fruitBowlOrangePear)
                    .resizable()
            case (.none, .some, .some):
                Image(.fruitBowlGrapePear)
                    .resizable()
            case (.some, .some, .some):
                Image(.fruitBowlAll)
                    .resizable()
            }
        }
        .frame(width: 100, height: 100)
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
            self.selectedItem = nil
        }
    }
}

class MyDropDelegate: DropDelegate {
    @Binding var selectedItem: Fruits?
    @Binding var draggableItems: [Fruits]
    @Binding var droppedFruit: [Fruits]
    let destinationItem: Fruits?
    let destinationIsBowl: Bool
    
    init(selectedItem: Binding<Fruits?>, draggableItems: Binding<[Fruits]>, droppedFruit: Binding<[Fruits]>, destinationItem: Fruits?, destinationIsBowl: Bool = false) {
        self._selectedItem = selectedItem
        self._draggableItems = draggableItems
        self._droppedFruit = droppedFruit
        self.destinationItem = destinationItem
        self.destinationIsBowl = destinationIsBowl
    }
    
    func performDrop(info: DropInfo) -> Bool {
        if destinationIsBowl, let selectedItem {
            self.droppedFruit.append(selectedItem)
            self.draggableItems.removeAll(where: { $0 == selectedItem })
        }
        self.selectedItem = nil
        return false
    }
    
    func dropEntered(info: DropInfo) {
        if !destinationIsBowl, let newIndex = draggableItems.firstIndex(where: { $0 == destinationItem }), let selectedItem {
            draggableItems.removeAll(where: { $0 == selectedItem })
            draggableItems.insert(selectedItem, at: newIndex)
        }
    }
}
