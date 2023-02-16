//
//  ViewModel.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 15.02.2023.
//

import Foundation

final class ViewModel: ObservableObject {
    
    
    @Published var billTotal: String = ""
    @Published var selectedTip: Int = 0
    @Published var chosenSplit: Int = 2
    
    
    func calculateBillSplit() -> Double {
        
        var tipPercent: Double {
            
            switch selectedTip {
            case 0: return 1
            case 10: return 1.1
            case 20: return 1.2
            default: return 999
            }
        }
        
        let billWithTip = Double(billTotal)! * tipPercent
        
        let billSplit = billWithTip / Double(chosenSplit)
        
        return billSplit
    }
    
    func shouldButtonBeSelected(_ tip: Int) -> Bool {
        
        if tip == selectedTip {
            return true
        }
        
        return false
    }
    
}
