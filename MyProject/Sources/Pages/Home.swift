import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home Page"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Welcome to the Party")
    }
}
