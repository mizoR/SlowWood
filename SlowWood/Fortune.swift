import Foundation
import Dollar

class Fortune {
    class func sample() -> String {
        let messages = [
            "Everyone can be taught to sculpt: Michelangelo would have had to be taught how not to.  So it is with the great programmers.",
            "This fortune was brought to you by the people at Hewlett-Packard.",
            "When a girl can read the handwriting on the wall, she may be in the wrong rest room.",
        ]
        
        return $.sample(messages)
    }
}