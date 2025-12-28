//
//  ContentView.swift
//  sunrise
//
//  Created by vd on 28/12/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model: Model = .init(stepLength: 2.0)
    
    var body: some View {
        VStack {
        }
        .frame(width: 100, height: 100)
        .background(model.color)
    }
}

#Preview {
    ContentView()
}
