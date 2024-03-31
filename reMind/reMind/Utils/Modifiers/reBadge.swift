//
//  reBadge.swift
//  reMind
//
//  Created by Flávio Mattos on 31/03/24.
//

import SwiftUI

struct reBadgeModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    @State var value: String
    
    private var textColor: Color {
        colorScheme == .light ? Palette.reWhite.render : Palette.reBlack.render
    }
    
    var backgroundColor: Color {
        colorScheme == .light ? Palette.reBlack.render : Palette.reWhite.render
    }
    
    func body(content: Content) -> some View {
        if value.isEmpty{
            content
        } else {
            content
                .overlay{
                    GeometryReader { reader in
                        Text(value)
                            .padding(6)
                            .font(.body)
                            .foregroundColor(textColor)
                            .fontWeight(.semibold)
                            .background{
                                RoundedRectangle(cornerRadius: 17.5)
                                    .fill(backgroundColor)
                                    .frame(height: 30)
                                    .frame(minWidth: 35, maxWidth: 40)
                            }
                            .position(x: reader.size.width - 2, y: 2)
                    }
                }
        }
    }
}

extension View {
    func reBadge(_ value: String) -> some View {
        modifier(reBadgeModifier(value: value))
    }
}
