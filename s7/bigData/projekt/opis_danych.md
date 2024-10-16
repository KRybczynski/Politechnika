# Zestaw 1 – imdb-genres

Pochodzenie danych to `https://www.imdb.com/interfaces/`

Uwaga! Dane pobieramy z miejsca wskazanego w ramach Twojego kursu

## Dwa zbiory danych


### `datasource1` – informacje na temat najważniejszych osób zaangażowanych w poszczególne filmy (1)

Dane mają format TSV, pliki nie posiadają nagłówka.

Pola w pliku:

0. `tconst` – identyfikator filmu
1. `ordering` - numer kolejny osoby w filmie
2. `nconst` - identyfikator osoby
3. `category` - rola osoby w filmie
4. `job` - nazwa zawodu (jeśli dotyczy, w przeciwnym wypadku `\N`)
5. `characters` - nazwa postaci jaką grała osoba (jeśli dotyczy, w przeciwnym wypadku `\N`)


### `datasource4` – informacje na temat filmów (4)

Dane mają format TSV, pliki posiadają nagłówek.

Pola w pliku:

0. `tconst` – identyfikator filmu
1. `titleType` – typ filmu (np.: `movie`, `short`, `tvseries`, `tvepisode`, `video`, itp.)
2. `primaryTitle` – tytuł filmu wykorzystywany w dniu premiery
3. `originalTitle` – oryginalny tytuł
4. `isAdult` – czy film był przeznaczony dla widzów dorosłych `0`: nie; `1`: tak
5. `startYear` – rok premiery
6. `endYear` – ostatni rok serialu. W pozostałych przypadkach `\N`
7. `runtimeMinutes` – długość trwania filmu
8. `genres` – gatunki filmu rozdzielane przecinkami 