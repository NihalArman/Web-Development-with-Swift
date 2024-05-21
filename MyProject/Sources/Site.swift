import Foundation
import Ignite

@main
struct MainPage {
    static func main() async {
        let site = HomePage()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct HomePage: Site {
    var name = "Default Name"
    var baseTitle = "Default Title"
    var url = URL("https://github.com/NihalArman/Web-Development-with-Swift")
    var builtInIconsEnabled = true

    var author = "Arman Nihal"

    var homePage = Home()
    var theme = MyTheme()
}


