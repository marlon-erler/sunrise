//
//  Model.swift
//  sunrise
//
//  Created by vd on 28/12/2025.
//

import Foundation
import Combine
import SwiftUI

@MainActor class Model: ObservableObject {
    @Published var color: Color
    @Published var stepLengthSeconds: TimeInterval
    
    init(stepLength: TimeInterval) {
        self.color = .night
        self.stepLengthSeconds = stepLength
        
        Task {
            await self.loop()
        }
    }
    
    private func loop() async {
        var i = 0
        while true {
            var _color: Color
            
            i += 1
            
            switch i {
            case 1:
                _color = .night
            case 2:
                _color = .sunrise1
            case 3:
                _color = .sunrise2
            case 4:
                _color = .bright
            default:
                _color = .bright
                break
            }
            
            withAnimation(.linear(duration: self.stepLengthSeconds)) {
                self.color = _color
            }
            
            do {
                try await Task.sleep(for: .seconds(self.stepLengthSeconds))
            }
            catch {}
        }
    }
}
