//
//  ViewController.swift
//  Counter
//
//  Created by sm on 13.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var counterButton: UIButton!
    
    
    @IBOutlet weak var plus: UIButton!
    
    @IBOutlet weak var minus: UIButton!
    
    @IBOutlet weak var history: UITextView!
    
    
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    var z: Int = 0
    
    let date = Date().description(with: .current)
    

    
    
    @IBAction func pressButton(_ sender: Any){
        print("нажатие")
        print (date)
        z += 1
        print (z)
        self.counter.text = "Значение счётчика:  \(z)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
        }
    
    
    @IBAction func plusOne(_ sender: Any) {
        z += 1
        self.counter.text = "Значение счётчика: \(z)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
    }
    
    @IBAction func minusOne(_ sender: Any) {
        z -= 1 
        self.counter.text = "Значение счётчика: \(z)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
        if z <= 0 {
            z = 0
            self.counter.text = "Значение счётчика: - "
            self.history.text += "\n \(date) Попытка уменьшить значение счётчика ниже 0 \n"
        }
    }
    
    @IBAction func reset_1(_ sender: Any) {
        print("сброс")
        z = 0
        print (z)
        self.counter.text = "Значение счётчика: \(z)"
        self.history.text = "\n Значение сброшено\n"
        }
    
    
}

