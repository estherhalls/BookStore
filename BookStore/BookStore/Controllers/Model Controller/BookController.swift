//
//  BookController.swift
//  BookStore
//
//  Created by Esther on 9/23/22.
//

import Foundation

class BookController {
    
    // Singleton:
    static let sharedInstance = BookController()
    
    // SOT:
    var books: [Book] = []
    
    // MARK: - CRUD
    // Create:
    func create(title: String, author: String, rating: Int){
        let book = Book(title: title, author: author, rating: rating)
        books.append(book)
    }
    
} // End of Class
