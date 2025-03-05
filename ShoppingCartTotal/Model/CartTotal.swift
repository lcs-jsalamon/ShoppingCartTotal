//
//  CartTotal.swift
//  ShoppingCartTotal
//
//  Created by Josephine Salamon on 2025-03-05.
//

import Foundation

struct CartTotal: Identifiable{
    
    //MARK: Stored Properties
    let id = UUID()
    let priceOne: Double
    let priceTwo: Double
    let priceThree: Double
    
    //MARK: Computed Properties
    
    var totalNoTax: Double{
        return (priceOne + priceTwo + priceThree)
    }
    
    var result: Double{
        
        return((totalNoTax * 0.13) + totalNoTax)
    }
    
}
