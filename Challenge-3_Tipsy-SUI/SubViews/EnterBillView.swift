//
//  EnterBillView.swift
//  Challenge-3_Tipsy-SUI
//
//  Created by Андрей Бородкин on 16.02.2023.
//

import SwiftUI

struct EnterBillView: View {
    
    @Binding var billTotal: String
    
    var body: some View {
        VStack {
            
            VStack(alignment: .center) {
                HStack {
                    
                    Text("Enter bill total")
                        .foregroundColor(.secondary)
                        .font(.title3)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                
                TextField("e.g. 12.2", text: $billTotal)
                    .font(.system(.largeTitle, design: .rounded, weight: .bold))
                    .foregroundColor(.green)
                    .padding(.horizontal, 100)
                    .padding(.top, 20)
            }
        }
        
        
    }
}

struct EnterBillView_Previews: PreviewProvider {
    static var previews: some View {
        EnterBillView(billTotal: .constant("200"))
    }
}
