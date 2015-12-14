//
//  CorrectGuesesICInterfaceController.swift
//  BibleBooks
//
//  Created by Hinck, Johann A on 12/14/15.
//  Copyright © 2015 Hinck, Johann A. All rights reserved.
//

import WatchKit
import Foundation


class CorrectGuesesICInterfaceController: WKInterfaceController {
    @IBOutlet var thePicker: WKInterfacePicker!

    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        var thePickerItems = [WKPickerItem]()
        for(var i = 1; i <= 100; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i-1].title = WatchCore.correctGuesses[i]
        }

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

}
