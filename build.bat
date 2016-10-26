:: Minify CSS
del css\*.min.css
for %%f in (css\*) do (
  curl -X POST -s --data-urlencode input@%%f -o css\%%~nf.min.css https://cssminifier.com/raw
)
del views\css\*.min.css
for %%f in (views\css\*) do (
  curl -X POST -s --data-urlencode input@%%f -o css\%%~nf.min.css https://cssminifier.com/raw
)
:: Minify JS
del js\*.min.js
for %%f in (js\*) do (
  curl -X POST -s --data-urlencode input@%%f -o js\%%~nf.min.js https://javascript-minifier.com/raw
)
del views\js\*.min.js
for %%f in (views\js\*) do (
  curl -X POST -s --data-urlencode input@%%f -o js\%%~nf.min.js https://javascript-minifier.com/raw
)
:: Optimize images