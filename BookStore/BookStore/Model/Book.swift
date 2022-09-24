//
//  Book.swift
//  BookStore
//
//  Created by Esther on 9/23/22.
//

import Foundation

class Book {
    var title: String
    var author: String
    var rating: Double
    var lastUpdated: Date
    var synopsis: String
    
    init(title: String, author: String, rating: Double, lastUpdated: Date = Date(), synopsis: String){
        self.title = title
        self.author = author
        self.rating = rating
        self.lastUpdated = lastUpdated
        self.synopsis = synopsis
        
    } // End of Init
} // End of Class

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.author == rhs.author &&
        lhs.title == rhs.title &&
        lhs.rating == rhs.rating &&
        lhs.lastUpdated == rhs.lastUpdated &&
        lhs.synopsis == rhs.synopsis
    }
}
