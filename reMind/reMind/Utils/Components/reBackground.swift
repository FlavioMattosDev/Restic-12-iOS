//
//  reBackground.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct reBackground: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Palette.aquamarine.render,
                    Palette.lavender.render,
                    Palette.mauve.render
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)

//            Rectangle()
//                .fill(Color.clear)
//                .background(colorScheme == .light ? .regularMaterial : .thickMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    reBackground()
}
