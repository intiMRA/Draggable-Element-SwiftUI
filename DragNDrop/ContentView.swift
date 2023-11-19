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

enum BurgerIngredients: String, CaseIterable {
    case cheese, patty, bun
    var image: Image {
        switch self {
        case .cheese:
            return .init(.cheese)
        case .patty:
            return .init(.patty)
        case .bun:
            return .init(.bun)
        }
    }
}

struct ContentView: View {
    @State var fruits = Fruits.allCases
    @State var droppedFruits: [Fruits] = []
    @State var selectedFruit: Fruits?
    
    @State var burgerIngredients = BurgerIngredients.allCases
    @State var droppedIngredients: [BurgerIngredients] = []
    @State var selectedIngredient: BurgerIngredients?
    
    var body: some View {
        VStack {
            HStack {
                ForEach(fruits, id: \.self) { fruit in
                    SwapDragView(itemsList: $fruits, selectedItem: $selectedFruit, destinationItem: fruit) {
                        fruit.image
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            
            StandardDragView(selectedItem: $selectedFruit, onDrop: {
                if let selectedFruit {
                    self.droppedFruits.append(selectedFruit)
                    self.fruits.removeAll(where: { $0 == selectedFruit })
                }
            }) {
                fruitBowl
            }
            .padding(.bottom, 50)
            
            HStack {
                ForEach(burgerIngredients, id: \.self) { fruit in
                    SwapDragView(itemsList: $burgerIngredients, selectedItem: $selectedIngredient, destinationItem: fruit) {
                        fruit.image
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            
            StandardDragView(selectedItem: $selectedIngredient, onDrop: {
                if let selectedIngredient {
                    self.droppedIngredients.append(selectedIngredient)
                    self.burgerIngredients.removeAll(where: { $0 == selectedIngredient })
                }
            }) {
                burger
            }
        }
        .animation(.easeIn, value: fruits)
        .animation(.easeIn, value: burgerIngredients)
        .padding()
    }
    
    @ViewBuilder
    var burger: some View {
        let bun = droppedIngredients.firstIndex(where: { $0 == .bun })
        let patty = droppedIngredients.firstIndex(where: { $0 == .patty })
        let cheese = droppedIngredients.firstIndex(where: { $0 == .cheese })
        Group {
            switch(bun, patty, cheese) {
            case (.none, .none , .none):
                Image(.burger)
                    .resizable()
            case (.some, .none, .none):
                Image(.burgerBun)
                    .resizable()
            case (.none, .some, .none):
                Image(.burgerPatty)
                    .resizable()
            case (.none, .none, .some):
                Image(.burgerCheese)
                    .resizable()
            case (.some, .some, .none):
                Image(.burgerBunPatty)
                    .resizable()
            case (.some, .none, .some):
                Image(.burgerCheeseBun)
                    .resizable()
            case (.none, .some, .some):
                Image(.burgerCheesePatty)
                    .resizable()
            case (.some, .some, .some):
                Image(.burgerAll)
                    .resizable()
            }
        }
        .frame(width: 100, height: 100)
    }
    
    @ViewBuilder
    var fruitBowl: some View {
        let orange = droppedFruits.firstIndex(where: { $0 == .orange })
        let grape = droppedFruits.firstIndex(where: { $0 == .grape })
        let pear = droppedFruits.firstIndex(where: { $0 == .pear })
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
