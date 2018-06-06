//
//  ViewController.swift
//  ThêmSửaXoá
//
//  Created by dohien on 5/21/18.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit

class DeTailViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    var number: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if number != nil {
            nameTextField.text = String(number!)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard nameTextField.text != "" else { return }
        number = Int(nameTextField.text!)
    }
}

