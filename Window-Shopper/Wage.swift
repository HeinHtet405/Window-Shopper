//
//  Wage.swift
//  Window-Shopper
//
//  Created by Hein Htet on 9/4/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import Foundation
class Wage {
    class func getHour(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
