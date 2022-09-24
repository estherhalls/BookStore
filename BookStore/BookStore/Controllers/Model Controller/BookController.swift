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
    func createBook(title: String, author: String, rating: Double, synopsis: String){
        let book = Book(title: title, author: author, rating: rating, synopsis: synopsis)
        books.append(book)
    }
    // Update:
    func updateBook(book: Book, title: String, author: String, rating: Double, synopsis: String){
        book.title = title
        book.author = author
        book.rating = rating
        book.synopsis = synopsis
    }
    // Delete:
    func delete(book: Book){
        guard let index = books.firstIndex(of: book)
        else {return}
        books.remove(at: index)
    }
    
    
} // End of Class
