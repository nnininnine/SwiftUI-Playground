//
//  SidebarViewModel.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks (Nine) on 19/7/2565 BE.
//

import Foundation
import SwiftUI

class SidebarViewModel: ObservableObject {
  // MARK: Properties

  let modules: Modules = [
    Module(name: "Example 01", view: AnyView(ExampleView(text: "Example 01"))),
    Module(name: "Example 02", view: AnyView(ExampleView(text: "Example 02"))),
    Module(name: "Example 03", view: AnyView(ExampleView(text: "Example 03"))),
    Module(name: "Example 04", view: AnyView(ExampleView(text: "Example 04")))
  ]
}
