//
//  EstimateViewModel.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

import Observation
import Foundation


@Observable final class EstimateViewModel {
    @MainActor private(set) var model: GrowModel = .init()
    
    @MainActor func fetch() async {
        guard let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json") else { return }

        do {
            let decoder = JSONDecoder()
            let dto = try decoder.decode(GrowModelDTO.self, from: Data(contentsOf: jsonUrl, options: .mappedIfSafe))
            model = dto.data
        } catch(let error) {
            debugPrint(error.localizedDescription)
        }
    }
}
