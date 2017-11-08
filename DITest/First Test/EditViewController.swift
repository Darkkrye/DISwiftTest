//
//  EditViewController.swift
//  DITest
//
//  Created by Openfield Mobility on 08/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    var modelController: ModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let quote = modelController.quote
        textView.text = quote.text
        textField.text = quote.author
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let newQuote = Quote(text: textView.text, author: textField.text!)
        modelController.quote = newQuote
        self.dismiss(animated: true, completion: nil)
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
