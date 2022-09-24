//
//  BookListTableViewCell.swift
//  BookStore
//
//  Created by Esther on 9/23/22.
//

import UIKit

class BookListTableViewCell: UITableViewCell {
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
    
   //Instance Method:
    
    func updateViews(with book: Book){
        bookTitleLabel.text = book.title
        bookAuthorLabel.text = book.author
        bookRatingLabel.text = String(book.rating)
    }

}// End of Class
