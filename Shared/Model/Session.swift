//
//  Session.swift
//  MVVM - Magic8Ball
//
//  Created by Emily Liang on 2021/9/17.
//

import Foundation

struct Session {
    
    //Question that the user asks, must be set to start an advice session
    let question: String
    
    //Response will be provided later
    var response: String = ""
}
