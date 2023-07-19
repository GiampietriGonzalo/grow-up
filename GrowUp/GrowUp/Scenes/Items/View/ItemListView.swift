//
//  ItemListView.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

import SwiftUI

struct ItemListView: View {
    @Observable private(set) var viewModel: EstimateViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.model.items) { item in
                    Text(item.name)
                }
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .scrollBounceBehavior(.basedOnSize)
            .navigationTitle("Ingredientes")
            .task {
                await viewModel.fetch()
            }
        }
    }
}

#Preview {
    ItemListView(viewModel: .init())
}
