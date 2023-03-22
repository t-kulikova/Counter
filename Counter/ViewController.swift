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
    
    // MARK: - IBActions
    
    @IBAction private func resetCounter(_ sender: Any) {
        guard counter > 0 else { return }
        
        counter = 0
        counterLabel.text = "\(counter)"
        
        logCounterChange(with: .resetted)
        scrollHistoryChangesToBottom()
    }
    
    @IBAction private func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        
        logCounterChange(with: .incremented)
        scrollHistoryChangesToBottom()
    }
    
    @IBAction private func decrementCounter(_ sender: Any) {
        
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            
            logCounterChange(with: .decremented)
        } else {
            logCounterChange(with: .failed)
        }
        
        scrollHistoryChangesToBottom()
    }
    
    // MARK: - Methods
    
    private func logCounterChange(with operation: CounterOperation) {
        let currentDate = getCurrentDate()
        
        switch operation {
        case .incremented:
            historyChangesTextView.text += "\n\(currentDate): значение изменено на +1"
        case .decremented:
            historyChangesTextView.text += "\n\(currentDate): значение изменено на -1"
        case .resetted:
            historyChangesTextView.text += "\n\(currentDate): значение сброшено"
        case .failed:
            historyChangesTextView.text += "\n\(currentDate): попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    
    private func scrollHistoryChangesToBottom() {
        let range = NSMakeRange(historyChangesTextView.text.count, 0)
        historyChangesTextView.scrollRangeToVisible(range)
    }
    
    private func getCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        let date = Date.now
        let currentDate = dateFormatter.string(from: date)
        
        return currentDate
    }
    
}

// MARK: - CounterOperation

extension ViewController {
    
    enum CounterOperation {
        case incremented
        case decremented
        case resetted
        case failed
    }
    
}
