# Spacing

Layout tokens for SwiftUI on macOS. Every measurement a view needs is named and
declared once, so a spacing decision is a single edit and a diff a reviewer can
read.

Eleven token groups cover corner radius, stack spacing, list row spacing,
content width, panel and tag and badge padding, sidebar dimensions, and the
control dimensions for search, filter, and state actions.

```swift
import Spacing

VStack(spacing: StackSpacing.standard) { ... }
    .padding(PanelPadding.card)
    .clipShape(.rect(cornerRadius: CornerRadius.card))
```

`StackSpacing` carries an `automatic` case that is a real `CGFloat?` of `nil`,
so a view can defer to SwiftUI's own spacing through the same vocabulary rather
than stepping outside it.

Swift 6, macOS 14 or later. No dependencies. The test suite asserts the token
values, so a silent drift in a measurement fails the run.

Extracted from a search interface project, where it sits alongside
[Fonts](https://github.com/ideasbyrobert/finite-search-fonts) and
[Colors](https://github.com/ideasbyrobert/finite-search-colors).
