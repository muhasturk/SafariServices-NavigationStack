/// If you delete this file completly or
/// comment every line, NavigationStack works perfectly on the iOS 18
/// If this file persist in the project
/// NavigationStack pushes view twice.
/// WHY_? If u know let me know -> mustafa/at/hasturk.dev

import SwiftUI
import SafariServices

public struct SafariWebView: UIViewControllerRepresentable {
  public init(url: URL) {
    self.url = url
  }

  let url: URL

  public func makeUIViewController(context: Context) -> SFSafariViewController {
    return SFSafariViewController(url: url)
  }

  public func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {

  }
}
