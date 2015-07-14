//
//  Functions.swift
//  MyLocations
//
//  Created by Zeyu Fan on 15/7/14.
//  Copyright (c) 2015年 Zeyu Fan. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(seconds: Double, closure: () -> ()) {
    let when = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
    dispatch_after(when, dispatch_get_main_queue(), closure)
    
}