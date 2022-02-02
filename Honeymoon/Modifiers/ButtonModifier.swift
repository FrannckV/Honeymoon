//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Frannck Villanueva on 17/01/22.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
                Capsule()
                    .fill(.pink)
            )
            .foregroundColor(.white)
    }
}
