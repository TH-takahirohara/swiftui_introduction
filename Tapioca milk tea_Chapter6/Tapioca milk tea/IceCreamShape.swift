//
//  IceCreamShape.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/03/30.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct IceCreamShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let scale = min(rect.width, rect.height)
            path.addArc(center: CGPoint(x: scale * 0.50,
                                        y: scale * 0.30),
                        radius: scale * 0.26,
                        startAngle: .degrees(0),
                        endAngle: .degrees(180),
                        clockwise: true)
        }
    }
}

struct IceCreamShape_Previews: PreviewProvider {
    static var previews: some View {
        IceCreamShape()
    }
}
