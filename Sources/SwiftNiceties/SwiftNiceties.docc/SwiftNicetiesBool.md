# ``SwiftNiceties/SwiftNicetiesBool``

Extensions of functionality to `Bool` 

## Overview

Found in file: **`SwiftNicetiesBool.swift`**

## Topics

### Initialisers

Creates a new Boolean value from the given string.
If the `description` value is any string other than `"true"` or `"0"` (zero)
the the value is set to false. This initializer is NOT case sensitive.

- Parameter description: A string representation of the Boolean value.

```swift
init(fromString: String) {
```

