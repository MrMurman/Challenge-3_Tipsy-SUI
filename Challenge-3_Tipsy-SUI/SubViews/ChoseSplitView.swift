//
//  ChoseSplitView.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 16.02.2023.
//

import SwiftUI

struct ChoseSplitView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack{
            HStack {
                
                Text("Chose split")
                    .foregroundColor(.secondary)
                    .font(.title3)
                
                Spacer()
            }
            .padding(.horizontal)
            
            
            
            HStack{
                
                Spacer()
                Text(String(viewModel.chosenSplit))
                    .font(.system(.title))
                    .foregroundColor(.green)
                
                Stepper("", value: $viewModel.chosenSplit, in: 2...10, step: 1)
                Spacer()
            }
            
            
        }
    }
}

struct ChoseSplitView_Previews: PreviewProvider {
    static var previews: some View {
        ChoseSplitView(viewModel: ViewModel())
    }
}
