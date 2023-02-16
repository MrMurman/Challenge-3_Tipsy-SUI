//
//  SelectTipView.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 16.02.2023.
//

import SwiftUI

struct SelectTipView: View {
    @ObservedObject var viewModel: ViewModel
    @State var buttonIsSelected = false
    
    var tipsArr: [Int] = [0, 10, 20]
    
    
    
    var body: some View {
        VStack{
            
            HStack {
                
                Text("Select tip")
                    .foregroundColor(.secondary)
                    .font(.title3)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack(alignment: .center, spacing: 40) {
                
                ForEach(tipsArr, id: \.self){ btn in
                   
                    TipButton(viewModel: viewModel, selectedTip: btn)
                    
                }
            }
        }
    }
}

struct SelectTipView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTipView(viewModel: ViewModel())
    }
}
