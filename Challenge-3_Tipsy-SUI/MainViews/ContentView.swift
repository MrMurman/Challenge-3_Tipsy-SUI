//
//  ContentView.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 14.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    @State var detailVCisPresented = false
    
    var body: some View {
        
        ZStack {
            
            Color.green
                .ignoresSafeArea()
                .opacity(0.3)
                .offset(x: 0, y: 150)
            
            VStack{
                EnterBillView(billTotal: $viewModel.billTotal)
                    //.padding(.vertical)
                
                            
                SelectTipView(viewModel: viewModel)
                    .padding(.top, 50)
                
                
                ChoseSplitView(viewModel: viewModel)
                    .padding(.vertical)
                
                Spacer()
                
                Button{
                    detailVCisPresented.toggle()
                } label: {
                    Text("Calculate")
                        .font(.system(.title))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .sheet(isPresented: $detailVCisPresented) {
            DetailVIew(viewModel: viewModel, billSplit: viewModel.calculateBillSplit())
        }
    }

        
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


