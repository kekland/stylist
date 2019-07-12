# stylist

CSS-variables like Flutter theming.

## How does it work?

`stylist` is just like CSS variables - it will be easy to pick up and use for web developers.

First, you create `StyleData` instance. You can have multiple `StyleData` instances, and then inject them all into one big `StyleData`.

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

Then, you apply your style in your app root using `StaticStyle`.

```dart
return StaticStyle(
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