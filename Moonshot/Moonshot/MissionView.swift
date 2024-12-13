//
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct MissionView: View {
  let mission: Mission

  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

#Preview {
  let missions: [Mission] = Bundle.main.decode("missions.json")

  return MissionView(mission: missions[0])
    .preferredColorScheme(.dark)
}
