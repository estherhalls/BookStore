//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Esther on 9/23/22.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextField: UITextView!
    
    //MARK: - Properties
    var book: Book? = nil
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(book: book)

        // Do any additional setup after loading the view.
    }
    //MARK: - Helper Functions
    func updateView(book: Book?){
        guard let book = book else {return}
        bookTitleTextField.text = book.title
        bookAuthorTextField.text = book.author
        bookRatingTextField.text = String(book.rating)
        bookSynopsisTextField.text = book.synopsis
    }
    
    func resetView(){
        bookTitleTextField.text = ""
        bookAuthorTextField.text = ""
        bookRatingTextField.text = ""
        bookSynopsisTextField.text = ""
    }
    
    //MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = bookTitleTextField.text,
              let author = bookAuthorTextField.text,
              let rating = bookRatingTextField.text,
              let synopsis = bookSynopsisTextField.text
        else {return}
        let unwrappedRating = Double(rating) ?? 0.0
        if let book = book {
            //Update
            BookController.sharedInstance.updateBook(book: book, title: title, author: author, rating: unwrappedRating, synopsis: synopsis)
        } else {
            //Create
            BookController.sharedInstance.createBook(title: title, author: author, rating: unwrappedRating, synopsis: synopsis)
        }
        navigationController?
            .popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }

} // End of Class
