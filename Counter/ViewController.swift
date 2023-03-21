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
    
    // MARK: - UIViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction private func resetCounter(_ sender: Any) {
        // TODO: - Implement recetCounter
    }
    
    @IBAction private func incrementCounter(_ sender: Any) {
        // TODO: - Implement incrementCounter
    }
    
    @IBAction private func decrementCounter(_ sender: Any) {
        // TODO: - Implement decrementCounter
    }
    
}
