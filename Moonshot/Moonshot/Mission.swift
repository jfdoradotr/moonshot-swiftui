//	
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import Foundation

struct Mission: Codable, Identifiable {
  let id: Int
  let launchDate: String?
  let crew: [CrewRole]
  let description: String
}

extension Mission {
  struct CrewRole: Codable {
    let name: String
    let role: String
  }
}
