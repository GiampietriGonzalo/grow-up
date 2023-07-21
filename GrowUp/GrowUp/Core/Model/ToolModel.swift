//
//  ToolModel.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

struct ToolModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let price: Double
}
