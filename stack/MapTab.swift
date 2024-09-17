import SwiftUI

final class Router: ObservableObject {
  @Published var stack: [Destination] = []
}

enum Destination: Hashable, View {
  case single
  var body: some View {
    ZStack {
      Color.gray.opacity(0.5).ignoresSafeArea()
      Text("detail").foregroundStyle(Color.white)
    }
  }
}

struct MapTab {
  @StateObject private var router: Router = .init()
}

extension MapTab: View {
  var body: some View {
    NavigationStack(path: $router.stack) {
      NavigationLink(value: Destination.single) {
        Text("go detail")
      }
      .navigationDestination(for: Destination.self) { v in
        v
      }
    }
    // This implementation cause double push the stack
    .environment(\.openURL, OpenURLAction { url in
        .discarded
    })
  }

}

#Preview {
  MapTab()
}
