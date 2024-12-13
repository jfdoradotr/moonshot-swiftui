# Moonshot

## Resizing images to fit the available space

`containerRelativeFrame()` helps to fill in a percentage

```swift
Image(.example)
  .resizable()
  .scaledToFit()
  .containerRelativeFrame(.horizontal) { size, axis in
    size * 0.8
  }
```