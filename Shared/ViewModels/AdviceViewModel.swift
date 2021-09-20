//
//  AdviceViewModel.swift
//  MVVM - Magic8Ball
//
//  Created by Emily Liang on 2021/9/17.
//

import Foundation

class AdviceViewModel {
    
    // History of advice sessions
    var sessions: [Session] = []    //empty array to start
    
    // Given a question, provide some advice
    // Library shortcut: Commant-Shift-L
    func provideResponseFor(givenQuery: String) -> String {
        
        // Start an advice session
        var currentSesion = Session(question: givenQuery)
        // Use the static function right from the Magic8Ball type (no instance required!)
        currentSesion.response = Magic8Ball.getResponse()

        //Save the question and the advice given to the history
        sessions.append(currentSesion)
        
        // Give the response back
        return currentSesion.response
        
    }
}
