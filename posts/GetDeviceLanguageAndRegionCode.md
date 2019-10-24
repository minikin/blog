# Get Device Language and Region Code

__DATE: 24.05.2017__

From time to time I need to send Language ISO (or something like this) to a server as a parameter. Here is a little function which can handle this:

```swift
func getLanguageISO() -> String {
    let locale = Locale.current
    guard let languageCode = locale.languageCode,
      let regionCode = locale.regionCode else {
        return "de_DE"
    }
    return languageCode + "_" + regionCode
  }

```
