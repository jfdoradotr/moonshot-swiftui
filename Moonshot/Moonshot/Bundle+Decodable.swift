//	
// Copyright © Juan Francisco Dorado Torres. All rights reserved.
//

import Foundation

extension Bundle {
  func decode(_ file: String) -> [String: Astronaut] {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle")
    }

    let decoder = JSONDecoder()
    do {
      return try decoder.decode([String: Astronaut].self, from: data)
    } catch DecodingError.keyNotFound(let key, let context) {
      fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
    } catch DecodingError.typeMismatch(_, let context) {
      fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
    } catch DecodingError.valueNotFound(let value, let context) {
      fatalError("Failed to decode \(file) from bundle due to missing value '\(value)' - \(context.debugDescription)")
    } catch DecodingError.dataCorrupted(let context) {
      fatalError("Failed to decode \(file) from bundle due to data corruption - \(context.debugDescription)")
    } catch {
      fatalError("Failed to decode \(file) from bundle: \(error)")
    }
  }
}
