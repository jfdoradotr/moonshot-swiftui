//
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct MissionView: View {
  struct CrewMember {
    let role: String
    let astronaut: Astronaut
  }

  let mission: Mission
  let crew: [CrewMember]

  init(mission: Mission, astronauts: [String: Astronaut]) {
    self.mission = mission
    self.crew = mission.crew.map { member in
      if let astronaut = astronauts[member.name] {
        return CrewMember(role: member.role, astronaut: astronaut)
      } else {
        fatalError("Missing \(member.name)")
      }
    }
  }

  var body: some View {
    ScrollView {
      VStack {
        Image(mission.image)
          .resizable()
          .scaledToFit()
          .containerRelativeFrame(.horizontal) { width, axis in
            width * 0.6
          }
          .padding(.top)

        VStack(alignment: .leading) {
          Text("Mission Highlights")
            .font(.title.bold())
            .padding(.bottom, 5)
          Text(mission.description)
        }
        .padding(.horizontal)
      }
      .padding(.bottom)
    }
    .navigationTitle(mission.displayName)
    .navigationBarTitleDisplayMode(.inline)
    .background(.darkBackground)
  }
}

#Preview {
  let missions: [Mission] = Bundle.main.decode("missions.json")
  let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

  return NavigationStack { MissionView(mission: missions[0], astronauts: astronauts) }
    .preferredColorScheme(.dark)
}
