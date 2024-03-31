//
//  ContentView.swift
//  reMind
//
//  Created by Flávio Mattos on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BoxCardView(boxName: "Box", numberOfTerms: 10, theme: .mauve)
            .reBadge("15")
        
    }
}
#Preview {
    ContentView()
}
