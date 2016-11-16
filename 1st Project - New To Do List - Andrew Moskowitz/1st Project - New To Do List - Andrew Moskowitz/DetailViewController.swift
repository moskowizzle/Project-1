//
//  DetailViewController.swift
//  1st Project - New To Do List - Andrew Moskowitz
//
//  Created by Andrew Moskowitz on 11/16/16.
//  Copyright © 2016 Andrew Moskowitz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    var selectedIndex: Int?
    var selectedItemIndex: Int?
    
    @IBAction func saveButton(_ sender: UIButton) {
         lists[selectedIndex!].items[selectedItemIndex!].itemName = itemNameLabel.text!
         lists[selectedItemIndex!].items[selectedItemIndex!].itemDescription = detailTextView.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemNameLabel.text = lists[selectedIndex!].items[selectedItemIndex!].itemName
        detailTextView.text = lists[selectedItemIndex!].items[selectedItemIndex!].itemDescription
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
