//
//  ContentView.swift
//  Hello world
//
//  Created by 原昂大 on 2021/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello SwiftUI"
    
    var body: some View {
        VStack(spacing: 80) {
            Text(labelText)
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Button(action: {self.labelText = "Yes Tapped!"}) {
                Text("Tap!!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
