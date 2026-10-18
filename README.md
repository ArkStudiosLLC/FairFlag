<h1 align="center">FairFlag</h1>

<h4 align="center">A SwiftUI country flag package built to mitigate Taiwan flag censorship issues.</h4>

<p align="center">
<picture>
<img src=".github/images/Logo.png" width="512" alt="BitRemote app icon.">
</picture>
</p>

## Background

On China-model iPhone and iPad devices, the Taiwan flag emoji may not render correctly. To keep behavior consistent for those cases, FairFlag uses a fixed rule for `TW`.

- On iOS and iPadOS, when the country code is `TW`, FairFlag always uses the bundled ROC image asset.
- For all other country codes, FairFlag keeps normal emoji-based rendering.

## Features

- Convert ISO country codes to flag emoji (`String.toFlagEmoji()`).
- Render an emoji string as a SwiftUI `Image` (`FairFlag.image(emoji:)`).
- Render a country code as a SwiftUI `Image` (`FairFlag.image(countryCode:)`).

## Requirements

| Platform | Swift 6.4+ (Xcode 27+) | Swift 5.9–6.3 (Xcode 15–26) |
| -------- | ---------------------- | --------------------------- |
| iOS      | 15.0+                  | 13.0+                       |
| iPadOS   | 15.0+                  | 13.0+                       |
| watchOS  | 9.0+                   | 6.0+                        |
| tvOS     | 15.0+                  | 13.0+                       |
| macOS    | 12.0+                  | 10.15+                      |
| visionOS | 1.0+                   | 1.0+                        |

## Usage

Add `FairFlag` to your `Package.swift`:

```swift
.package(url: "https://github.com/ArkStudiosLLC/FairFlag", from: "1.0.0")
```

In a SwiftUI view:

```swift
import FairFlag
  
let emoji = "TW".toFlagEmoji()

let countryCodeImage =
FairFlag.image(countryCode: "TW")?
  .resizable()
  .frame(width: 20, height: 20)

let emojiImage = FairFlag.image(emoji: "🇹🇼")
```
