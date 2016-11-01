## Optimized Website

### Building resources
1. Download [ImageMagick](http://www.imagemagick.org/script/index.php) and [cURL](https://curl.haxx.se/).
2. Run `build.bat`! It's that simple!

### Running the project
1. Open `index.html` in your browser of choice.

### Optimizations made
* Batching dom reads and dom writes with [fastdom](https://github.com/wilsonpage/fastdom).
* Using a [css minifier](https://cssminifier.com/) and a [js minifier](https://javascript-minifier.com/) to minify css and js.
* Inlined minified css and js
* Added media query to non-essential css and async tag to non-essential js
* Slight optimizations to functions using closures to prevent function redefinition.
* Reduced the amount of element queries
* Using ImageMagick to optimize images