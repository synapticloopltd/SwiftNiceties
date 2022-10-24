# ``SwiftNiceties``

Some niceties to extend the swift language through extensions 

## Background

Coming from a `Java` based development background these extensions were designed
to be a half-way bridge between the languages, adding extended functionality
to the swift language - or just to make it more plain.

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
## Niceties

### String niceties

```swift
func substring(_ beginIndex: Int) -> String


```

## DateFormatter niceties

```swift

```
