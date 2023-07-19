//
//  ContentView.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    @Observable private(set) var viewModel: EstimateViewModel
    
    var body: some View {
        ZStack {
            TabView {
                EstimateView(viewModel: viewModel)
                    .tabItem { Label(
                        title: { Text("Estimate")  },
                        icon: { Image(systemName: "dollarsign.circle.fill") })
                    }
                
                ItemListView(viewModel: viewModel)
                    .tabItem { Label(
                        title: { Text("Ingredientes") },
                        icon: { Image(systemName: "carrot") }
                    ) }
                
                EstimateView(viewModel: viewModel)
                    .tabItem { Label(
                        title: { Text("Rectas")  },
                        icon: { Image(systemName: "birthday.cake") })
                    }
            }
        }
        
    }
}

#Preview {
    ContentView(viewModel: .init())
}
