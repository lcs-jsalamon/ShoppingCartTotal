//
//  CartTotalItemView.swift
//  ShoppingCartTotal
//
//  Created by Josephine Salamon on 2025-03-05.
//

import SwiftUI

struct CartTotalItemView: View {
    
    //MARK: Stored Properties
    let resultToShow: CartTotal
    
    var body: some View {
        VStack{
            Text("$\(resultToShow.priceOne.formatted())")
            Text("$\(resultToShow.priceTwo.formatted())")
            Text("$\(resultToShow.priceThree.formatted())")
            Text("$\(resultToShow.result.formatted())")
            
        }
    }
}

#Preview {
    CartTotalItemView(resultToShow: CartTotal(priceOne: 7, priceTwo: 2, priceThree: 1))
}
