//
//  SelectableRowView.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 21/07/2023.
//

import SwiftUI

struct SelectableRowView: View {
    @State private var itemCount = 0
    let text: String
    
    var body: some View {
        HStack {
            Stepper(text, onIncrement: {
                increment()
            }, onDecrement: {
                decrement()
            })
            
            .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text("\(itemCount)")
                .frame(width: 32)
                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
    
    func increment() {
        itemCount += 1
    }
    
    func decrement() {
        guard itemCount > 0 else { return }
        itemCount -= 1
    }
}

#Preview {
    SelectableRowView(text: "Harina x100 gr")
}
