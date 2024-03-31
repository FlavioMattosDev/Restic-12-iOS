//
//  ContentView.swift
//  reMind
//
//  Created by Flávio Mattos on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Rectangle()
            .fill(Color.clear)
            .background(reBackground())
    }
}
#Preview {
    ContentView()
}
