import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .preferredColorScheme(.light)
        }
    }
}
