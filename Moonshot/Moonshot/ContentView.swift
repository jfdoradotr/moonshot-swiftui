//
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  let missions: [Mission] = Bundle.main.decode("missions.json")

  let columns = [
    GridItem(.adaptive(minimum: 150))
  ]

  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(missions) { mission in
            NavigationLink {
              Text("Detail view")
            } label: {
              Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            }
          }
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
