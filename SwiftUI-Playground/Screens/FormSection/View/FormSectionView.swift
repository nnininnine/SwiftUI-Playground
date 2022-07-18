//
//  FormSectionView.swift
//  SwiftUI-Playground
//
//  Created by Nuttapon Buaban on 18/7/2565 BE.
//

import SwiftUI

struct FormSectionView: View {
  // MARK: Properties

  // toggle
  @State private var toggle: Bool = false
  // picker
  let pickerList = ["picker 00", "picker 01", "picker 02", "picker 03"]
  @State private var selectedMode = 0

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

        Picker(selection: $selectedMode, label: Text("Picker")) {
          ForEach(0 ..< pickerList.count, id: \.self) {
            Text(self.pickerList[$0])
          }
        }
        .onChange(of: selectedMode, perform: { value in
          print(value)
        })
      }
    }
    .navigationTitle("Form & Section")
  }
}

struct FormSectionView_Previews: PreviewProvider {
  static var previews: some View {
    FormSectionView()
  }
}
