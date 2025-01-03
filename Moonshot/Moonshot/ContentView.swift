//
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var isShowingGrid = true

  let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  let missions: [Mission] = Bundle.main.decode("missions.json")

  private var gridLayout: some View {
    let columns = [GridItem(.adaptive(minimum: 150))]

    return LazyVGrid(columns: columns) {
      missionContentItems
    }
  }

  private var listLayout: some View {
    LazyVStack {
      missionContentItems
    }
  }

  private var missionContentItems: some View {
    ForEach(missions) { mission in
      NavigationLink(value: mission) {
        VStack {
          Image(mission.image)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding(.vertical)
          VStack {
            Text(mission.displayName)
              .font(.headline)
              .foregroundStyle(.white)
            Text(mission.formattedLaunchDate)
              .font(.caption)
              .foregroundStyle(.white.opacity(0.5))
          }
          .padding(.vertical)
          .frame(maxWidth: .infinity)
          .background(.lightBackground)
        }
        .clipShape(.rect(cornerRadius: 10))
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(.lightBackground)
        )
      }
      .accessibilityElement()
      .accessibilityLabel(mission.displayName)
      .accessibilityHint(mission.launchDate == nil ? "No launch date available" : mission.formattedLaunchDate)
      .accessibilityRemoveTraits(.isButton)
    }
  }

  var body: some View {
    NavigationStack {
      ScrollView {
        Group {
          if isShowingGrid {
            gridLayout
          } else {
            listLayout
          }
        }
        .padding([.horizontal, .bottom])
      }
      .navigationTitle("Moonshot")
      .background(.darkBackground)
      .preferredColorScheme(.dark)
      .toolbar {
        ToolbarItem {
          Button(
            isShowingGrid ? "Grid" : "List",
            systemImage: isShowingGrid ? "square.fill.text.grid.1x2" : "square.grid.2x2"
          ) {
            withAnimation {
              isShowingGrid.toggle()
            }
          }
          .accessibilityLabel(isShowingGrid ? "Grid view" : "List view")
          .accessibilityHint(isShowingGrid ? "Switch to list view" : "Switch to grid view")
        }
      }
      .navigationDestination(for: Mission.self) { mission in
        MissionView(mission: mission, astronauts: astronauts)
      }
    }
  }
}

#Preview {
  ContentView()
}
