//
//  TeaShape.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/03/30.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct TeaShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addLines([
                CGPoint(x: scale * 0.2115, y: scale * 0.30),
                CGPoint(x: scale * 0.30, y: scale * 1.00),
                CGPoint(x: scale * 0.70, y: scale * 1.00),
                CGPoint(x: scale * 0.7875, y: scale * 0.30)
            ])
            path.closeSubpath()
        }
    }
}

struct TeaShape_Previews: PreviewProvider {
    static var previews: some View {
        TeaShape()
    }
}
