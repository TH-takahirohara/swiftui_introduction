//
//  GlassShape.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/03/30.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct GlassShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.move(to: CGPoint(x: scale * 0.20, y: scale * 0.20))
            path.addLine(to: .init(x: scale * 0.30, y: scale * 1.00))
            path.addLine(to: .init(x: scale * 0.70, y: scale * 1.00))
            path.addLine(to: .init(x: scale * 0.80, y: scale * 0.20))
            path.closeSubpath()
        }
        .strokedPath(.init(lineWidth: min(rect.size.width, rect.size.height) * 0.03))
    }
}

struct GlassShape_Previews: PreviewProvider {
    static var previews: some View {
        GlassShape()
    }
}
