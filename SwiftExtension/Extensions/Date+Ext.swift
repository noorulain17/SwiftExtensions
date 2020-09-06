//
//  Date+Ext.swift
//  SwiftExtension
//
//  Created by Noor ul Ain Ali on 06/09/2020.
//

import UIKit

extension Date {
    
    /*
    * Available Date Formats
    * ----------------------
    * Wednesday, Sep 12, 2018           --> EEEE, MMM d, yyyy
    * 06/09/2020                        --> MM/dd/yyyy
    * 06-09-2020 14:11                  --> MM-dd-yyyy HH:mm
    * Sep 6, 2:11 PM                    --> MMM d, h:mm a
    * September 2020                    --> MMMM yyyy
    * Sep 6, 2020                       --> MMM d, yyyy
    * Wed, 6 Sep 2020 14:11:54 +0000    --> E, d MMM yyyy HH:mm:ss Z
    * 2020-09-06T14:11:54+0000          --> yyyy-MM-dd'T'HH:mm:ssZ
    * 06.09.20                          --> dd.MM.yy
    * 10:42:02.112                      --> HH:mm:ss.SSS
    */
    
    func dateString(in format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    var inPast: Bool {
        return self.compare(Date()) == .orderedAscending
    }
    
    var inFuture: Bool {
        return self.compare(Date()) == .orderedDescending
    }

}
