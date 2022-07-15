//
//  ContentView.swift
//  SwiftUI-Playground
//
//  Created by 7Peaks on 15/7/2565 BE.
//

import SwiftUI

struct HomeView: View {
  // MARK: Properties

  @StateObject private var vm: HomeViewModel = .init()

  // MARK: Body

  var body: some View {
    NavigationView {
      List {
        ForEach(vm.modules, id: \.name) { module in
          NavigationLink(module.name, destination: module.view)
        }
      }
      .navigationTitle("SwiftUI")
    }
    .navigationViewStyle(.stack)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
