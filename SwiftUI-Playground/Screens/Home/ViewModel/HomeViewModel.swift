//
//  HomeViewModel.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks on 15/7/2565 BE.
//

import SwiftUI

class HomeViewModel: ObservableObject {
  // MARK: Properties

  let modules: Modules = [
    Module(name: "TextField", view: AnyView(TextFieldView())),
    Module(name: "Button", view: AnyView(ButtonView()))
  ]
}
