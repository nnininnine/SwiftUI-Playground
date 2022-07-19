//
//  SidebarView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks (Nine) on 19/7/2565 BE.
//

import SwiftUI

struct SidebarView: View {
  var body: some View {
    NavigationView {
      List {
        Text("Example 01")
        Text("Example 02")
      }
      .navigationTitle("Example Sidebar")
    }
      .navigationTitle("Sidebar")
      .navigationBarTitleDisplayMode(.inline)
  }
}

struct SidebarView_Previews: PreviewProvider {
  static var previews: some View {
    SidebarView()
  }
}
