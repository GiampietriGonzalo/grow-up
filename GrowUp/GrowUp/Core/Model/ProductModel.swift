//
//  ProductModel.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

struct ProductModel: Decodable {
    let id: Int
    let name: String
    let items: [ProductModelDTO]
}

struct ProductModelDTO: Decodable {
    let id: Int
    let amount: Double
}
