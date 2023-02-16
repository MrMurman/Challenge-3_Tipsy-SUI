//
//  TipButton.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 16.02.2023.
//

import SwiftUI

struct TipButton: View {
    
    @ObservedObject var viewModel: ViewModel
    
    @State var buttonIsSelected = false
    
    var selectedTip = 0
    
    var body: some View {
        
        Button{
            viewModel.selectedTip = selectedTip
            
        } label: {
            Text("\(selectedTip) %")
                .font(.system(.title))
                .foregroundColor(buttonIsSelected ? .white : .green)
                .padding()
                .background(buttonIsSelected ? .green : .clear)
                .cornerRadius(10)
        }
        .onReceive(viewModel.$selectedTip) { tip in
            
            buttonIsSelected = (tip == selectedTip) ? true : false
            
        }
    }
}
    
struct TipButton_Previews: PreviewProvider {
    static var previews: some View {
        TipButton(viewModel: ViewModel())
    }
}
