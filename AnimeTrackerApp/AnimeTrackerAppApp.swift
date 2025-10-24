import SwiftUI
import FirebaseCore

@main
struct Anime_Tracker_AppApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
