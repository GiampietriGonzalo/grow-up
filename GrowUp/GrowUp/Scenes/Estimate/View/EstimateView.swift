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
        let extras = viewModel.model.tools + viewModel.model.services
        
        NavigationStack {
            VStack {
                List {

                    Section("Ingredientes") {
                        ForEach(viewModel.model.items) { item in
                            ItemRowView(text: item.name)
                        }
                    }
                    
                    Section("Extras") {
                        ForEach(extras) { extra in
                            SelectableRowView(text: extra.name)
                        }
                    }
                    
                   //  in another list
//                    Section("Trabajo") {
//                        ForEach(viewModel.model.labour) { labour in
//                            ItemRowView(text: labour.name)
//                            
//                    }
            
                    
                }
                .headerProminence(.increased)
                .listStyle(.insetGrouped)
                .scrollIndicators(.hidden)
            }
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
