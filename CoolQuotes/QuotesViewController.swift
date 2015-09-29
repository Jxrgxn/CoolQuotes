//
//  QuotesViewController.swift
//  CoolQuotes
//
//  Created by BASEL FARAG on 9/22/15.
//  Copyright © 2015 BaselNotBasilProductions. All rights reserved.
//

import UIKit

class QuotesViewController: UITableViewController {

    //Create AND initialize quote array
    private var quotes = [Quote]()

    override func viewDidLoad() {
        //What do you want to put here.
        super.viewDidLoad()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Tell the Add Quote view controller who its delegate is; in this case its self 

        let viewController = segue.destinationViewController as! AddQuoteViewController
        viewController.delegate = self;
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("quoteIdentifier", forIndexPath: indexPath) as! UITableViewCell
        let quoteArray = quotes[indexPath.row]

        cell.textLabel?.text = quoteArray.quote

        return cell

    }

}

extension QuotesViewController: AddQuoteDelegate {
    func didSaveQuoteWithAuthor(authorFirstName: String, authorLastName: String, quote: String) {

        let newQuote = Quote()
        newQuote.quote = quote
        let newAuthor = Author()
        newAuthor.authorFirstName = authorFirstName
        newAuthor.authorLastName = authorLastName

        //Reload the Tableview 
        tableView.reloadData()

        // 3. Navigate back to the QuotesViewController 
        navigationController?.popViewControllerAnimated(true)

    }
}
