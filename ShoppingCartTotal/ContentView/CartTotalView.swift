//
//  ContentView.swift
//  ShoppingCartTotal
//
//  Created by Josephine Salamon on 2025-03-05.
//

import SwiftUI

struct CartTotalView: View {
    
    //MARK: Stored Properties
    @State var viewModel = CartTotalViewModel()
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            //Show result if exits
            if let cartTotal = viewModel.cartTotal {
                CartTotalItemView(resultToShow: cartTotal)
                Button{
                    viewModel.saveResult()
                } label: {
                    Text("Save Result")
                }
                .buttonStyle(.borderedProminent)
                
            } else {
                //2. show the content unavaible mesage
                ContentUnavailableView(
                    "Unable to convert",
                    systemImage: "gear.badge.questionmark",
                    description: Text("\(viewModel.recoverySuggestion)")
                )
                .padding()
            }
            // 3. allow for input to occur
            TextField("Enter Price of First Item", text: $viewModel.providedPriceOne)
            TextField("Enter Price of Second Item", text: $viewModel.providedPriceTwo)
            TextField("Enter Price of Third Item", text: $viewModel.providedPriceThree)
            
            //Show history label
            HStack{
                Text("History")
                    .bold()
                Spacer()
            }
            List(viewModel.resultHistory) { currentResult in
                CartTotalItemView(resultToShow: currentResult)
            }
            
        }
        
    }
    
}

#Preview {
    CartTotalView()
}

