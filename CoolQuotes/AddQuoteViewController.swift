//
//  AddQuoteViewController.swift
//  CoolQuotes
//
//  Created by BASEL FARAG on 9/23/15.
//  Copyright © 2015 BaselNotBasilProductions. All rights reserved.
//

import UIKit

protocol AddQuoteDelegate {
    //Note in Swift functions are consumed via 
    func didSaveQuoteWithAuthor(authorFirstName: String, authorLastName: String, quote: String)
}

class AddQuoteViewController: UITableViewController {

    var delegate: AddQuoteDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var quoteTextView: UITextView!
    @IBOutlet weak var authorFirstNameTextField: UITextField!
    @IBOutlet weak var authorLastNameTextField: UITextField!

    @IBAction func saveQuoteWithAuthorUponPressed(sender: AnyObject) {

        if delegate == nil  {
            print("You haven't set a delegate!!")
        } else {
            //Ask why the compiler asked for an unwrapper for the author names
            print(authorFirstNameTextField.text)
            delegate.didSaveQuoteWithAuthor(authorFirstNameTextField.text!, authorLastName: authorLastNameTextField.text!, quote: quoteTextView.text!)
        }
    }
}
