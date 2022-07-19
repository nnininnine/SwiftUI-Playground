//
//  ExampleView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks (Nine) on 19/7/2565 BE.
//

import SwiftUI

struct ExampleView: View {
  // MARK: Properties

  let text: String

  // MARK: Body

  var body: some View {
    Text(text)
  }
}

struct ExampleView_Previews: PreviewProvider {
  static var previews: some View {
    ExampleView(text: "some text")
  }
}
