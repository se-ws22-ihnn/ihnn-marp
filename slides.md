---
marp: true
title: Ich habe noch nie
description: HAW Software Engineering WS22/23
theme: uncover
paginate: true
_paginate: false
footer: Team 05 &bull; Software Engineering WS22/23 &bull; HAW Hamburg
_footer: ""
---

![bg](./assets/full.png)

<!-- presenter notes als HTML kommentare -->

---

![bg](./assets/haw-bg.png)

## Team 5

Sören Helms (2359614), Engin Arslan (2239408), 
Jannik Hoefener (2574970), Nico Bielat (2529235)

---

## Gliederung

1. Idee
2. Anforderung & Planung
3. Umsetzung & Architektur
4. Testing
5. Automation & Deployment
6. Organisation & Kommunikation
7. Aussicht & Reflexion

<!-- Nico -->
---

## Idee

- basiert auf dem Spiel "Ich habe noch nie"
- Themenbereich Bucket List
- Ideal auf dem Smartphone spielbar
- Flexible Gruppengröße

<!-- Die Idee neu übertragen, Uni-freundliches Thema, -->

<!-- Nico -->

---

## Ermittlung der Anforderungen

![width:800px](./assets/d-mockup.jpeg)

<!-- Mockup der ersten Stunde -->

<!-- Jannik -->
<!-- - Idee erster Ansatz -->
<!-- - Brainstorming Resultat: Mindmap mit MockUps -->
<!-- - 3 Phasen -->

---

## Use Case Diagramme

![width:1000px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](./assets/d-uc-combo.png)

<!-- Jannik -->
<!-- - Gruppe erstellen -->
<!-- - Spielablauf verwalten -->

---

## Architektur: Technologien

* Frontend: React, TypeScript, Node.js
* API statt Backend: ExpressJS, MongoDB
* Deployment mit GitHub Actions
* Docker

<!-- one by one durchgehen -->

<!-- Jannik -->
<!-- - NPM => MaterialUI, Formik, Yup -->
<!-- -  -->


---

## Architektur: Kommunikation

<br />

![width:800px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](./assets/services.png)

<!-- Jannik -->
<!-- Kommunikation FE zu API, API zu DB -->
<!-- API wird später von Sören näher erklärt -->


---

## State Machine

<br />

![width:800px drop-shadow:0,5px,10px,rgba(0,0,0,.4)](./assets/state-machine.png)

<!-- Jannik -->
<!-- - App-Ablauf in Zuständen: 3 Phasen wie im MockUp -->
<!-- - State erhöhung durch OnClick Funktion bei best. Knöpfen -->
<!-- - Durch % Ausbruch verhindert -->


---

## Komponenten

![width:1100px](./assets/d-objekt.png)

<!-- Jannik -->
<!-- - Verschachtlung / Abhängigkeit der Komponenten -->
<!-- - Haupt-Komponente aus versch. anderen Komp. -->


---

### Aktivitätsdiagramm

![width:450px](./assets/d-activity.png)

<!-- Jannik -->
<!-- - Verbindet Logik StateMachine & Ablauf aus sicht des Nutzer -->
<!-- - Quasi Umsetzung der Mindmap/MockUp  -->

---

## Architektur: MVC

![width:800px](./assets/d-mvc.png)

<!-- Jannik -->
<!-- vereinf. Darstellung => da kein Backend -->
<!-- Nur Views die mit Model und Controller "kommunizieren" -->

<!-- Nun Life Demo von Nico -->

---

## Live Demo

<br />

<!-- in die Live Demo wechseln -->

[![live demo h:8em drop-shadow:0,5px,10px,rgba(0,0,0,.4)](./assets/map.png)](https://ihnn.x5f.de/)

<!-- Nico -->

---

## Live Demo API

<br />

<!-- in die Live Demo wechseln -->

[![live demo h:5em drop-shadow:0,5px,10px,rgba(0,0,0,.4)](./assets/plane.png)](https://api.ihnn.x5f.de/)

<!-- Sören -->

---

## Testing

* Live Konsolen Ausgabe
* Eigenes Testing
* Code Review
* PageSpeed Insights
* Feedback

<!-- one by one -->
<!-- der Docker Build ist natürlich auch eine Art test, baut es nicht, wird gar nicht erst deployed... -->

<!-- Engin -->

---

## Automation

- Alles in Docker Containern
- Workflows für jedes Repository
- Deployment mit GitHub Actions

<!-- alle Teile des Projekts; Code, Doku und Präsi werden gebaut und ausgeliefert -->

<!-- Sören -->

---

## Deployment

- Ende der Pipeline löst Redeploy aus
- 5 Min. von Commit bis Deploy ausgeführt
- optimiert auf geringe Image Größe

![width:800px](./assets/ghcr-packages.png)

<!-- oft sogar schneller -->
<!-- Sören -->

---

## Organisation & Kommunikation

- GitHub Issues & Projects (KanBan)
- Teams Besprechungen

<!-- darlegen das wasserfall eher suboptimal lief, da alles auf zwei Meilensteine aufgeteilt wurde; das eher aber auch wegen des fatalen Zeitmanagements -->

<!-- Engin -->

---

## Aufgabenverteilung

##### Verteilung nach Vorerfahrung und Interesse

| Person | Aufgabe |
|:--- |:--- |
| Sören | Frontend &bull; API &bull; Doku &bull; Deploy |
| Jannik | Frontend &bull; API &bull; Doku &bull; Präsentation |
| Engin | Testing &bull; Datenmodell |
| Nico | Design &bull; Präsentation |

<!-- Engin -->

---

## Aussicht & Reflexion

- Weiterentwicklung möglich
- Rewrite notwendig
- Bessere Zeitplanung & Kommunikation

<!-- Nach einem Rewrite könnten neue Funktionen einfach als weitere Komponenten eingebaut werden -->
<!-- bessere Worte für den Review finden -->

<!-- Nico -->

---

<!-- _footer: "" -->
![bg vertical](./assets/tech-1-app.png)
![bg](./assets/tech-2-api.png)
![bg](./assets/tech-3-docs.png)
![bg](./assets/tech-4-marp.png)

<!-- Sören -->

---

![bg](/assets/background.png)

## Fragen?

<!-- Entsprechend des Ressort -->

---

## Selber spielen?

<!-- QR Code damit die Leute sich das dann auch selbst anschauen können -->

![h:12em](./assets/qr.png)

---

## Vielen Dank für die Aufmerksamkeit

--

#### Quellen

Alle Diagramme, sowie die Grafiken für unsere App sind selbst erstellt. Logos von Technologien gehören ihren jeweiligen Eigentümern.

<!-- den rest bitte hier nachschauen:
[marp-cli-example](https://github.com/yhatt/marp-cli-example)
-->
