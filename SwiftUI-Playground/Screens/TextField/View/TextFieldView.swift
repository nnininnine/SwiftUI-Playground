//
//  TextFieldView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks on 15/7/2565 BE.
//

import SwiftUI

struct TextFieldView: View {
  // MARK: Properties

  @State private var text: String = ""

  // MARK: Body

  var body: some View {
    ScrollView {
      VStack(spacing: 20) {
        Spacer()

        // MARK: Basic TextField

        TextField("Basic TextField", text: $text)
          .textFieldStyle(.automatic)
        // MARK: Rounded border TextField

        TextField("Rounded border TextField", text: $text)
          .textFieldStyle(.roundedBorder)

        // MARK: Custom TextField

        TextField("Custome Style TextField", text: $text)
          .padding()
          .border(.pink)

        // MARK: Custom Rounded border TextField

        TextField("Custom Style Rounded border TextField", text: $text)
          .padding()
          .overlay(RoundedRectangle(cornerRadius: 12).strokeBorder(.yellow))
        
        // MARK: Custom Capsule border TextField
        
        TextField("Custom Style Capsule border textField", text: $text)
          .padding()
          .overlay(Capsule().strokeBorder(.blue))
      }
    }
    .padding(.horizontal)
    .navigationTitle("TextField")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct TextFieldView_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldView()
  }
}
