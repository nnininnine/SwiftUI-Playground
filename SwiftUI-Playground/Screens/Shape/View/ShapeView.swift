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

      Group {
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
      }

      // MARK: Ellipse

      Group {
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

      // MARK: Rectangle

      Group {
        Text("Rectangle")
          .font(.title2)
        Rectangle()
          .fill(.indigo)
          .frame(width: 200, height: 100)
        Rectangle()
          .strokeBorder(.green, style: .init(lineWidth: 6))
          .frame(width: 200, height: 100)
        Rectangle()
          .strokeBorder(.green, style: .init(lineWidth: 6))
          .background(Rectangle().fill(.indigo))
          .frame(width: 200, height: 100)

        Divider()
      }

      // MARK: Rounded Rectangle

      Group {
        Text("Rounded Rectangle")
          .font(.title2)
        RoundedRectangle(cornerRadius: 12)
          .fill(.mint)
          .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 12)
          .strokeBorder(.orange, style: .init(lineWidth: 6))
          .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 12)
          .strokeBorder(.orange, style: .init(lineWidth: 6))
          .background(RoundedRectangle(cornerRadius: 12).fill(.mint))
          .frame(width: 200, height: 100)
      }
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
