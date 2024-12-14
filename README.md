# Moonshot

A SwiftUI application exploring NASA’s Apollo missions, built as part of the **100 Days of SwiftUI** challenge. This project emphasizes custom UI designs, the power of generics in Swift, and the use of `Codable` for data handling.

## Features

- **Mission Overview**: Displays all Apollo missions in a grid or list layout with images, names, and launch dates.
- **Mission Details**: View detailed information about each mission, including highlights, crew members, and launch dates.
- **Astronaut Profiles**: Explore detailed profiles for each astronaut involved in the missions.
- **Custom UI Elements**:
  - Horizontal scrolling carousel for crew members.
  - Custom rectangle dividers for better visual separation.
- **Dark Mode Support**: Designed with a dark theme for an immersive experience.

## Key Learnings

### Custom Layouts with SwiftUI

- Implemented custom grid and list layouts with `LazyVGrid` and `LazyVStack`.
- Used `containerRelativeFrame()` to optimize space utilization in custom designs.

### Codable for Data Decoding

- Utilized `Codable` for efficient JSON decoding of nested mission and astronaut data.
- Leveraged a generic method to handle multiple types of data decoding.

### Generics with Constraints

- Explored the use of generics and type constraints for flexible and reusable code.

### Navigation and State Management

- Added navigation between mission lists and detailed views using `NavigationLink`.
- Managed state toggles for switching between grid and list views with `@State`.

### Toolbar Customization

- Added a toolbar button to toggle between grid and list layouts.

## Challenges Implemented

1. Added the launch date below the mission badge in `MissionView` with a new format.
2. Extracted reusable components, including:
   - Horizontal crew carousel as a separate `CrewCarrouselView`.
   - Rectangle dividers as a custom SwiftUI view (`CustomDivider`).
3. Created a toggle button in `ContentView` to switch between grid and list layouts.

## Git Commit Log Highlights

- **Add a list/grid option view in the toolbar** (48f491f): Enabled users to toggle between grid and list views.
- **Extract Crew Carrousel into its own view** (c86a601): Simplified `MissionView` by moving the horizontal scrolling crew section into a reusable view.
- **Add the launch date** (266eb60): Displayed a more detailed launch date format in `MissionView`.
- **Create the carousel with the crew members** (a0b1068): Added a horizontally scrolling carousel for mission crew members.
- **Create MissionView file** (2468295): Built the `MissionView` to display detailed mission information.
- **Refactor to make the `decode` method a generic to decode also Missions** (091b70e): Enhanced the JSON decoding logic to handle multiple data types.

## Code Overview

### ContentView

- Manages the main interface to display missions in grid or list format.
- Includes a toggle in the toolbar to switch between views.

### MissionView

- Displays mission details, including the mission badge, highlights, crew carousel, and launch date.

### AstronautView

- Shows detailed profiles for astronauts, including their biography and image.

### Bundle+Decodable

- Provides a generic method to decode JSON data from the app bundle, with detailed error handling.

## Summary

This project showcases how to design complex and dynamic UIs in SwiftUI while leveraging advanced Swift concepts like generics and `Codable`. The Moonshot app is a comprehensive introduction to building modular, reusable, and user-friendly interfaces with SwiftUI.

---

This project has been an incredible learning journey, combining creativity with advanced programming techniques to create a polished and functional app. 🚀
