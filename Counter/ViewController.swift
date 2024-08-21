//
//  ViewController.swift
//  Counter
//
//  Created by sm on 13.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var counter: UILabel!
    @IBOutlet private weak var reset: UIButton!
    @IBOutlet private weak var counterButton: UIButton!
    
    
    @IBOutlet private weak var plus: UIButton!
    
    @IBOutlet private weak var minus: UIButton!
    
    @IBOutlet private weak var history: UITextView!
    
    
    @IBOutlet private weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    private var counterValue: Int = 0
    
    private let date = Date().description(with: .current)
    

    
    
    @IBAction private func pressButton(_ sender: Any){
        print("нажатие")
        print (date)
        counterValue += 1
        print (counterValue)
        self.counter.text = "Значение счётчика:  \(counterValue)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
        }
    
    
    @IBAction private func plusOne(_ sender: Any) {
        counterValue += 1
        self.counter.text = "Значение счётчика: \(counterValue)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
    }
    
    @IBAction private func minusOne(_ sender: Any) {
        counterValue -= 1
        self.counter.text = "Значение счётчика: \(counterValue)"
        self.history.text += "\n \(date): \nзначение изменено на -1/+1\n"
        if counterValue <= 0 {
            counterValue = 0
            self.counter.text = "Значение счётчика: - "
            self.history.text += "\n \(date) Попытка уменьшить значение счётчика ниже 0 \n"
        }
    }
    
    @IBAction private func reset_1(_ sender: Any) {
        print("сброс")
        counterValue = 0
        print (counterValue)
        self.counter.text = "Значение счётчика: \(counterValue)"
        self.history.text = "\n Значение сброшено\n"
        }
    
    
}

