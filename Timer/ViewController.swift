//
//  ViewController.swift
//  Timer
//
//  Created by Александра Иванова on 16.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        if seque.identifier == "secondVC" {
            if let secondVC = seque.destination as? SecondViewController {
                secondVC.time = Int(textField.text!) ?? 0
            }
        }
    }
}
