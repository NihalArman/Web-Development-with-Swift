import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Default Name"
    var baseTitle = "Default Title"
    var url = URL("https://github.com/NihalArman/Web-Development-with-Swift")
    var builtInIconsEnabled = true

    var author = "Arman Nihal"

    var homePage = Home()
    var theme = MyTheme()
}


