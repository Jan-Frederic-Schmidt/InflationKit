//
//  Double extension.swift
//  In This Economy?
//
//  Created by Jan Schmidt on 15.10.26.
//

import Foundation

public extension Double {
    init(string: String) throws {
        guard let temporary = Double(string) else {
            throw ConvertingError.notARealNumber
        }
        
        self = temporary
    }
}

public enum ConvertingError: Error {
    case notARealNumber
}
