
import Foundation
import AlfredKit
import ToyboxKit
import AlfredToyboxCore

private func main() {

    do {

        let items = try List.run()
        try items.export()
    } catch let error as ToyboxError {

        print("\(error.description)")
        exit(1)
    } catch let error {
        print("\(error)")
        exit(1)
    }
}

main()
