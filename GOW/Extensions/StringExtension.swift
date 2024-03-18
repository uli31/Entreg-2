//
//  StringExtension.swift
//  GOW
//
//  Created by Alberti Ulises on 09/03/24.
//

import Foundation

extension String {
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(withComment comment : String) -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
