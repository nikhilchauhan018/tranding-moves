@echo off
echo Changing folder structure...

rename src\components\MovieCard.jsx CardMovie.jsx
rename src\components\Search.jsx MovieSearch.jsx
rename src\components\Spinner.jsx LoaderCircle.jsx

mkdir src\lib
mkdir src\shared
move src\appwrite.js src\lib\backend.js
move src\assets\react.svg src\shared\brand.svg

echo Updating imports...

for %%f in (
    src\App.jsx
    src\main.jsx
    src\components\CardMovie.jsx
    src\components\MovieSearch.jsx
    src\components\LoaderCircle.jsx
    src\App.css
    src\index.css
) do (
    powershell -Command "(Get-Content %%f) -replace 'MovieCard','CardMovie' -replace 'Search','MovieSearch' -replace 'Spinner','LoaderCircle' -replace 'appwrite','backend' -replace 'assets/react.svg','shared/brand.svg' | Set-Content %%f"
)

echo Done. Now compress the folder and submit to HR.
pause
