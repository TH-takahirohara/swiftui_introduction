//
//  StrawShape.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/03/30.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct StrawShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addLines([
                CGPoint(x: scale * 0.6745, y: scale * 0.0069),
                CGPoint(x: scale * 0.5217, y: scale * 0.8735),
                CGPoint(x: scale * 0.6103, y: scale * 0.8892),
                CGPoint(x: scale * 0.7631, y: scale * 0.0225)
            ])
            path.closeSubpath()
        }
    }
}

struct StrawShape_Previews: PreviewProvider {
    static var previews: some View {
        StrawShape()
    }
}
