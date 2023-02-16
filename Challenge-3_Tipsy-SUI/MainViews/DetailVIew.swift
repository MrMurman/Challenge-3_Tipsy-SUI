//
//  DetailVIew.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 15.02.2023.
//

import SwiftUI

struct DetailVIew: View {
    
    @ObservedObject var viewModel: ViewModel
    @Environment(\.dismiss) var dismiss
    
    var billSplit: Double = 0
    
    var body: some View {
        ZStack {
            
            Color.green
                .ignoresSafeArea()
                .opacity(0.3)
                .offset(x: 0, y: -500)
            
            VStack {
                
                            
                VStack (spacing: 20){
                    Text("Total per person")
                        .font(.title)
                        .foregroundColor(.secondary)
                    
                    Text(String(format: "%.1f", billSplit))
                        .font(.system(.largeTitle, design: .rounded, weight: .bold))
                        .foregroundColor(.green)
                }
                .padding(.top, 120)
                
                Text("Split between \(viewModel.chosenSplit) people, with \(viewModel.selectedTip)% tip.")
                    .font(.system(.title2))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 30)
                
                Spacer()
                    .frame(height: 310)
                
                Button{
                    dismiss()
                } label: {
                    Text("Recalculate")
                        .font(.system(.title))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                
            }
        }
        
    }
}

struct DetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        DetailVIew(viewModel: ViewModel())
    }
}
