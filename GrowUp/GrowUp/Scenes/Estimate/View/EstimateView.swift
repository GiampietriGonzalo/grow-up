//
//  EstimateView.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

import SwiftUI
import Observation

struct EstimateView: View {
    @Observable private(set) var viewModel: EstimateViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .scrollBounceBehavior(.basedOnSize)
            .navigationTitle("Presupuesto")
            .task {
                await viewModel.fetch()
            }
        }
    }
        
}

#Preview {
    EstimateView(viewModel: .init())
}
