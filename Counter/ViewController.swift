//
//  ViewController.swift
//  Counter
//
//  Created by Tatsiana Kulikova on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var historyChangesTextView: UITextView!
    
    // MARK: - Properties
    
    private var counter = 0
    
    // MARK: - UIViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction private func resetCounter(_ sender: Any) {
        guard counter > 0 else { return }
        counter = 0
        counterLabel.text = "\(counter)"
    }
    
    @IBAction private func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction private func decrementCounter(_ sender: Any) {
        guard counter > 0 else { return }
        counter -= 1
        counterLabel.text = "\(counter)"
    }
    
}
