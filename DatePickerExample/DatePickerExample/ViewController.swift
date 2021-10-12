//
//  ViewController.swift
//  DatePickerExample
//
//  Created by Field Employee on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
        
    @IBAction func datePickerChanged(_ sender: Any) {
            let dateFormatter = DateFormatter()
            let timeFormatter = DateFormatter()
            dateFormatter.dateStyle = DateFormatter.Style.short
            timeFormatter.timeStyle = DateFormatter.Style.short
            
            let strDate = dateFormatter.string(from: datePicker.date)
            dateLabel.text = strDate
        
            let strTime = timeFormatter.string(from: datePicker.date)
            timeLabel.text = strTime

        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

