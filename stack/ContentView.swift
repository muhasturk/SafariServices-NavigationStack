//
//  ContentView.swift
//  stack
//
//  Created by Hastürk on 17.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView {
        Text("yeni tab")
          .tabItem({
            Label("first", systemImage: "gear")
          })
          .tag(0)
        MapTab()
          .tabItem({
            Label("second", systemImage: "folder")
          })
          .tag(1)
      }

    }
}

#Preview {
    ContentView()
}
