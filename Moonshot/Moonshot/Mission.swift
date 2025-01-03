//	
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import Foundation

struct Mission: Codable, Identifiable, Hashable {
  let id: Int
  let launchDate: Date?
  let crew: [CrewRole]
  let description: String

  var displayName: String {
    "Apollo \(id)"
  }

  var image: String {
    "apollo\(id)"
  }

  var formattedLaunchDate: String {
    launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
  }

  var longLaunchDate: String {
    launchDate?.formatted(date: .complete, time: .omitted) ?? "N/A"
  }
}

extension Mission {
  struct CrewRole: Codable, Hashable {
    let name: String
    let role: String
  }
}
