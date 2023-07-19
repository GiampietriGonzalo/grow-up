//
//  ItemModel.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

struct ItemModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let unit: String
    let price: Double
    let image: String
}
