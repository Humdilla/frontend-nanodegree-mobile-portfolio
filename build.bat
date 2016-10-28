@echo off
:: Minify CSS
del css\*.min.css
for %%f in (css\*) do (
  curl -X POST -s --data-urlencode input@%%f -o css\%%~nf.min.css https://cssminifier.com/raw
)
del views\css\*.min.css
for %%f in (views\css\*) do (
  curl -X POST -s --data-urlencode input@%%f -o views\css\%%~nf.min.css https://cssminifier.com/raw
)
:: Minify JS
del js\*.min.js
for %%f in (js\*) do (
  curl -X POST -s --data-urlencode input@%%f -o js\%%~nf.min.js https://javascript-minifier.com/raw
)
del views\js\*.min.js
for %%f in (views\js\*) do (
  curl -X POST -s --data-urlencode input@%%f -o views\js\%%~nf.min.js https://javascript-minifier.com/raw
)
:: Optimize images
del /q views\optimized_images\*
del /q optimized_img\*
magick convert -resize 720x540 -quality 10 views\images\pizzeria.jpg views\optimized_images\pizzeria.jpg
magick convert views\images\pizza.png PNG8:views\optimized_images\pizza.png
magick convert -quality 50 img\profilepic.jpg optimized_img\profilepic.jpg
@echo on