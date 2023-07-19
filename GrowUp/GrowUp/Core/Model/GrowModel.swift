//
//  GrowModel.swift
//  GrowUP
//
//  Created by Gonzalo.Giampietri on 19/07/2023.
//

struct GrowModelDTO: Decodable {
    var data: GrowModel = .init()
}

struct GrowModel: Decodable {
    var products: [ProductModel] = []
    var items: [ItemModel] = []
    var tools: [ToolModel] = []
    var services: [ServiceModel] = []
    var labour: [LabourModel] = []
}
