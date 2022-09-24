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
    
    init(title: String, author: String, rating: Double){
        self.title = title
        self.author = author
        self.rating = rating
        
    } // End of Init
} // End of Class

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.author == rhs.author &&
        lhs.title == rhs.title &&
        lhs.rating == rhs.rating
    }
}
