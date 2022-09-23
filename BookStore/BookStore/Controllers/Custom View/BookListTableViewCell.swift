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
    
    func configureCell(with book: Book){
        bookTitleLabel.text = book.title
        bookAuthorLabel.text = book.author
        bookRatingLabel.text = "\(book.rating)"
    }
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}// End of Class
