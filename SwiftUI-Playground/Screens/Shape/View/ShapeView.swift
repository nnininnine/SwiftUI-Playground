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
      // MARK: Circle

      Text("Circle")
        .font(.title2)
      Circle()
        .fill(.red)
        .frame(width: 100, height: 100)
      Circle()
        .strokeBorder(Color(uiColor: .label), style: .init(lineWidth: 6))
        .frame(width: 100, height: 100)
      Circle()
        .strokeBorder(Color(uiColor: .label), style: .init(lineWidth: 6))
        .background(Circle().fill(.red))
        .frame(width: 100, height: 100)

      Divider()

      // MARK: Ellipse

      Text("Ellipse")
        .font(.title2)
      Ellipse()
        .fill(.yellow)
        .frame(width: 200, height: 100)
      Ellipse()
        .strokeBorder(.blue, style: .init(lineWidth: 6))
        .frame(width: 200, height: 100)
      Ellipse()
        .strokeBorder(.blue, style: .init(lineWidth: 6))
        .background(Ellipse().fill(.yellow))
        .frame(width: 200, height: 100)

      Divider()
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
