//
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let astronauts = Bundle.main.decode("astronauts.json")

  var body: some View {
    Text(String(astronauts.count))
  }
}

#Preview {
  ContentView()
}
