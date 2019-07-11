# stylist

CSS-variables-alike Flutter theming.

## How does it work?

`stylist` is like CSS variables - it will be easy to pick up for any web developers.

First, you create a `StyleData` instance. You can have multiple `StyleData` instances, and then inject them all into one big `StyleData`.

```dart
StyleData cardStyle = StyleData({
  "card-color": Color(0xFF129892),
  "card-border-radius": BorderRadius.circular(16.0),
  "card-border-color": "app-primary-color",
});

StyleData appStyle = StyleData({
  "app-primary-color": Colors.blue.shade500,
})..inject(cardStyle)
```

Then, you apply your style in your app root using either `AnimatedStyle` or `Style`.

```dart
// If style changes - this will animate the entire thing.

return AnimatedStyle(
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  style: appStyle,
  child: MaterialApp(...),
);
```

Now you can use your style by calling `Style.of(context)`.

```dart
final style = Style.of(context);

// Automatically resolves the "app-primary-color" as a reference and gets the color.
final cardBorderColor = style.get<Color>("card-border-color"); 
```

## Benefits and downsides

It is really flexible, but you might lose some custom behavior that is obtainable through classes. Nevertheless, the ease of use makes up for it.

## Contact me

**E-Mail**: `kk.erzhan@gmail.com`

Happy to accept and fix any issues or pull requests :)