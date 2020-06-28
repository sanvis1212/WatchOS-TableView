//
//  InterfaceController.swift
//  WatchTableViewDemo WatchKit Extension
//
//  Created by Mobcoder on 6/15/20.
//  Copyright © 2020 Mobcoder. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
    let names = ["Sandeep", "Deepak", "Ayush", "Jayant"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setUpTableDataSource()
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func setUpTableDataSource() -> Void {
        tableView.setNumberOfRows(self.names.count, withRowType: "Row")
        for (index, name) in names.enumerated() {
            let row = tableView.rowController(at: index) as! NoteSelectRow
            row.mainLabel.setText(name)
        }
    }

    @IBAction func addNewNoteButtonAction() {
        
    }
}
