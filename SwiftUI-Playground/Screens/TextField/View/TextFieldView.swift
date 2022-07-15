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
        // MARK: Basic TextField

        TextField(text: $text) {
          Text("Basic TextField")
        }

        // MARK: Rounded border TextField

        TextField("Rounded border TextField", text: $text)
          .textFieldStyle(.roundedBorder)
        
        // MARK: Custom TextField
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
