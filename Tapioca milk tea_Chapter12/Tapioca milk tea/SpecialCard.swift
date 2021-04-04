//
//  SpecialCard.swift
//  Tapioca milk tea
//
//  Created by 原昂大 on 2021/04/04.
//  Copyright © 2021 example.com. All rights reserved.
//

import SwiftUI

struct SpecialCard: View {
    var special: Special
    
    var body: some View {
        self.special.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 280)
            .overlay(TextOverlay(special: self.special))
            .clipped()
    }
}

struct SpecialCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(dataStore.specials) { special in
                SpecialCard(special: special)
            }
        }
    }
}
