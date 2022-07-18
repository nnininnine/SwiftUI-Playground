//
//  FormSectionView.swift
//  SwiftUI-Playground
//
//  Created by Nuttapon Buaban on 18/7/2565 BE.
//

import SwiftUI

struct FormSectionView: View {
  // MARK: Properties

  @State private var toggle: Bool = false

  // MARK: Body

  var body: some View {
    Form {
      Section("Section 01") {
        Text("Normal Text")
        HStack {
          Toggle("Toggle Text", isOn: $toggle)
        }
      }
      Section("Section 02") {
        HStack {
          Text("Title")
          Spacer()
          Text("Value")
        }
      }
    }
    .navigationTitle("Form & Section")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct FormSectionView_Previews: PreviewProvider {
  static var previews: some View {
    FormSectionView()
  }
}
