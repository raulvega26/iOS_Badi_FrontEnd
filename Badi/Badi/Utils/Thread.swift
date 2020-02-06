//
//  Thread.swift
//  Badi
//
//  Created by user on 06/02/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

extension Thread {
    
    static func executeInMain(_ block: @escaping () -> Void) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async { block() }
            return
        }
        block()
    }
    
}
