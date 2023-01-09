//
//  CardModel.swift
//  MultipleCell
//
//  Created by Khalil Mhelheli on 2/12/2022.
//

import Foundation

struct CardModel {
    var title: String!
    var description: String!
    var active: Bool!
}

var dummyCardModelOne  = CardModel(title: "title 5", description: "Description 5", active: false)
var dummyCardModelTwo  = CardModel(title: "title 6", description: "Description 6", active: false)
var dummyCardModelThree  = CardModel(title: "title 7", description: "Description 8", active: false)

var dummyArrayCardModel = [ [ CardModel(title: "Title 1", description: "Description 1", active: false), CardModel(title: "Title 2", description: "Description 2", active: true)]]

var dummyArray2CardModel = [ CardModel(title: "Title 10", description: "Description 10", active: false),
CardModel(title: "Title 11", description: "Description 11", active: true),
CardModel(title: "Title 12", description: "Description 12", active: true),
CardModel(title: "Title 13", description: "Description 13", active: true)]

