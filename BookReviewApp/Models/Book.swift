//
//  Book.swift
//  BookReviewApp
//
//  Created by 임재현 on 2023/08/24.
//

import Foundation


struct Book : Decodable {
    let title:String
    private let image:String?
    
    var imageURL:URL? {URL(string: image ?? "" )}
    
}
