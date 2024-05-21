import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home Page"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Home page loaded successfully")
            .font(.title1)
    }
}
