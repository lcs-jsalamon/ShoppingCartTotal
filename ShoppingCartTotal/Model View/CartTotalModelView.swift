//
//  CartTotalModelView.swift
//  ShoppingCartTotal
//
//  Created by Josephine Salamon on 2025-03-05.
//

import Foundation

@Observable
class CartTotalViewModel{
    
    //MARK: Stored Properties
    var resultHistory: [CartTotal] = []
    var providedPriceOne: String = ""
    var providedPriceTwo: String = ""
    var providedPriceThree: String = ""
    
    //if bad input
    var recoverySuggestion: String = ""
    
    //MARK: Computed Properties
    var cartTotal: CartTotal? {
        //guard
        
        guard let priceOne = Double (providedPriceOne), priceOne > 0 else{
            recoverySuggestion = "Please provide a numerical value that is more than 0."
            
            return nil
        }
        
        guard let priceTwo = Double (providedPriceTwo), priceTwo > 0 else{
            recoverySuggestion = "Please provide a numerical value that is more than 0."
            
            return nil
        }
        
        guard let priceThree = Double (providedPriceThree), priceThree > 0 else{
            recoverySuggestion = "Please provide a numerical value that is more than 0."
            
            return nil
        }
        
        //All values are vaild
        recoverySuggestion = "" // No error message
        return CartTotal(priceOne: priceOne, priceTwo: priceTwo, priceThree: priceThree)
    }
    
    
    
    //MARK: Initalizer(s)
    
    init(
        providedPriceOne: String = "",
        providedPriceTwo: String = "",
        providedPriceThree: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedPriceOne = providedPriceOne
        self.providedPriceTwo = providedPriceTwo
        self.providedPriceThree = providedPriceThree
        self.recoverySuggestion = recoverySuggestion
    }
    
    //MARK: Functions
    func saveResult(){
        if let cartTotal = self.cartTotal{
            self.resultHistory.insert(cartTotal, at: 0)
        }
    }
    
}

