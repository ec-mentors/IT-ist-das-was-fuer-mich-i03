# Website

Auch wenn die Entwicklung von Webseiten über den Kurs hinaus geht,
wollen wir uns doch anschauen, wie man einfach Webseiten erstellt
und verstehen, welche Überlegungen und Technologien dabei zur
Anwendung kommen.

Wir befassen uns unter anderem mit diesen Fragen:
- Was ist eine Website?
- Wie erstellt man eine Website?
- Wie ist die Website für den Kurs aufgebaut?

Werkzeuge:
- [Visual Studio Code](https://code.visualstudio.com/) (VS Code)
- Browser wie [Firefox](https://www.mozilla.org/en-US/firefox/new/) oder [Chrome](https://www.google.com/chrome/index.html)

(web_tutorials_target)=
Tutorials:
- [Mozilla's "Learn web development"](https://developer.mozilla.org/en-US/docs/Learn)
- [Django Girls "Start your journey with programming"](https://djangogirls.org/en/resources/)
- [HTML Basic Examples](https://www.w3schools.com/html/html_basic.asp)
- [Markdown](https://commonmark.org/)

(markdown_target)=
## Markdown als Vorstufe zu HTML

Um in VS Code ein Markdown Dokument zu erstellen und zu bearbeiten mache folgendes:
* Erstelle eine neue Datei (oder öffne eine existierende)
* Speichere die Datei als Markdown Datei mit der Dateiendung `.md` ab
* Editiere die Datei wie eine gewöhnlich Textdatei, verwende dabei [Markdown-Syntax](https://commonmark.org/help/) wie beispielsweise `#` für Überschriften oder `*` für Aufzählungen
* Betrachte die Vorschau für das Dokument in dem du `Strg+Shift+P` drückst und dann
  im Dialog `Markdown: Open Preview to the Side` auswählst

Den Inhalt einer Markdown Datei können wir eins zu eins als Inhalt für unsere Homepage
verwenden! 🤸

Es ist auch möglich, eine Markdown Datei mit Hilfe eines Programms direkt als HTML zu
exportieren. Dazu `Strg+Shift+P` und `Markdown All in One: Print current document to HTML`,
wobei wir die Erweiterung (das Programm) `Markdown All in One` verwenden.

(website_update_target)=
## Kursseite aktualisieren

Die Inhalte der Kursseite werden mit Markdown erstellt.
Die einzelnen Bestandteile und die Übersetzung in Markdown verwaltet ein eigenes Programm.
Es heißt [Sphinx](https://www.sphinx-doc.org/en/master/) und ist in der Programmiersprache
Python geschrieben.
Die Daten der Website liegen auf einem Server und jedes Mal, wenn wir den Inhalt ändern, wird
die Seite neu zusammen gebaut und aktualisiert.

Da wir Markdown verwenden, ist es ein Leichtes, Inhalte der Website zu ändern - man muss gar nicht
wissen, wie die Website im Detail funktioniert.


```{exercise} User Account für GitLab.com
:label: exercise-gitlab-user-account

Nicht jede Person kann die Inhalte der Website ändern.
Dazu braucht es bestimmte Berechtigungen.

Gehe auf https://github.com/ und lege dort einen User Account an.

Du bekommst dann Zugriff auf unsere Kursseite.

Wenn das geklappt hat, hast du ein Mail von GitLab bekommen.
```

Die Kursseite kann man sich als Ordner mit vielen Dateien vorstellen.
Für jede Seite auf unserer Website gibt es auch eine Datei in diesem Ordner.

Wenn du **https://github.com/ec-mentors/it-ist-das-was-fuer-mich** öffnest,
kannst du einen Blick hinter die Kulissen werfen.


```{exercise} Update der persönlichen Kursseite
:label: exercise-update-personal-page

Sobald du Zugriff auf die Website hast, kannst du Änderungen
an den Dateien vornehmen.

Jede von euch hat eine Datei in diesem Ordner: https://github.com/ec-mentors/it-ist-das-was-fuer-mich/-/tree/main/source/participants, das ist eure persönliche Seite im
Rahmen unseres Kurses. Genau dort, wollen wir ein paar Updates machen.

Konkret wollen wir ein Foto einfügen und auch eine kleine Beschreibung.
Den ersten Schritt gehen wir gemeinsam, danach könnt ihr das selber.

*Damit wir nicht durcheinander kommen, mache bitte keine Änderungen in anderen
Dateien, nur in eurer eigenen.*
```

Es gibt sehr viele Möglichkeiten Webseiten und erstellen und zu verwalten.
Es gibt Baukastensysteme, mit denen man ganz ohne Programmierkenntnisse Webseiten
bauen kann.
Unsere Kursseite ist nur eine Möglichkeit und wir wollen euch die Gelegenheit
geben, hier einen Blick hinein zu werfen.
