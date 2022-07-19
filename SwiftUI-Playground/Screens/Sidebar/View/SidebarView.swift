//
//  SidebarView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks (Nine) on 19/7/2565 BE.
//

import SwiftUI

struct SidebarView: View {
  // MARK: Properties

  @StateObject private var vm: SidebarViewModel = .init()

  // MARK: Body

  var body: some View {
    NavigationView {
      List {
        ForEach(vm.modules, id: \.name) {
          NavigationLink($0.name, destination: $0.view)
        }
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Example Sidebar")

      ExampleView(text: "Initial View")
    }
  }
}

struct SidebarView_Previews: PreviewProvider {
  static var previews: some View {
    SidebarView()
  }
}
