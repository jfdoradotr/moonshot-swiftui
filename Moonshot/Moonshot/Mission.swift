//	
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import Foundation

struct Mission: Codable, Identifiable {
  let id: Int
  let launchDate: String?
  let crew: [CrewRole]
  let description: String

  var displayName: String {
    "Apollo \(id)"
  }

  var image: String {
    "apollo\(id)"
  }
}

extension Mission {
  struct CrewRole: Codable {
    let name: String
    let role: String
  }
}
