//
//  ShapeView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks (Nine) on 19/7/2565 BE.
//

import SwiftUI

struct ShapeView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .center, spacing: 4) {
        Text("Circle")
          .font(.title2)
        Circle()
          .fill(.red)
          .frame(width: 100, height: 100)
        Circle()
          .strokeBorder(.black, style: .init(lineWidth: 6))
          .frame(width: 100, height: 100)
        Circle()
          .strokeBorder(.black, style: .init(lineWidth: 6))
          .background(Circle().fill(.red))
          .frame(width: 100, height: 100)
      }
      .padding(.horizontal)
    }
    .padding(.horizontal)
    .frame(width: UIScreen.main.bounds.width)
    .navigationTitle("Shape")
  }
}

struct ShapeView_Previews: PreviewProvider {
  static var previews: some View {
    ShapeView()
  }
}
