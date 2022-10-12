# `SwiftNiceties`

Some niceties to extend the swift language through extensions 

## Philosophy

Swift Niceties aims to extend the language with some helper functions to cut
down on the code that is needed to be written, for example:

To get a substring of a swift String

``` swift
let start = index(startIndex, offsetBy: beginIndex);
let end = index(startIndex, offsetBy: endIndex);
return String(self[start..<end]);
```

you can now just call:

```swift
substring(_ beginIndex: Int, _ endIndex: Int) -> String
```

And yes, most of these were inspired by Java

## String niceties

```swift

```

## DateFormatter niceties

```swift

```
