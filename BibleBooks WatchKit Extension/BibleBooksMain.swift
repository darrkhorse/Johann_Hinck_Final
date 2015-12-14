//
//  BibleBooksMain.swift
//  BibleBooks
//
//  Created by Hinck, Johann A on 12/14/15.
//  Copyright © 2015 Hinck, Johann A. All rights reserved.
//

import WatchKit
import Foundation


class BibleBooksMain: WKInterfaceController {
  
  

    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
       
       
        
        self.theTable.setNumberOfRows(WatchCore.bibleBooksArray.count, withRowType: "cell")
        for(var i = 0; i < WatchCore.bibleBooksArray.count; i++)
        {
       
        
        let currRow = self.theTable.rowControllerAtIndex(i) as! bibleBookCell
        currRow.theBookLabel.setText(WatchCore.bibleBooksArray[i])
        }
       
        // Configure interface objects here.
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        
        if((WatchCore.bibleBooksArrayShuffled[rowIndex]) == (WatchCore.bibleBooksArray[WatchCore.clickCount]))
        {
            WatchCore.correctGuesses[WatchCore.clickCount] = (WatchCore.bibleBooksArray[WatchCore.clickCount])
            
            WatchCore.clickCount = WatchCore.clickCount + 1
        }
        
        else
        {
            WatchCore.totalGuesses = WatchCore.totalGuesses + 1
        }
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
