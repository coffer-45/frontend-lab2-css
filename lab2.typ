#set page(paper: "a4", margin: (x: 1.7cm, y: 1.8cm), numbering: none)
#set text(font: "New Computer Modern", lang: "uk", size: 11pt)
#set par(justify: true, leading: 0.65em)

#align(center)[
  Національний технічний університет України \
  «Київський політехнічний інститут імені Ігоря Сікорського»
  #v(0.2cm)
  Факультет інформатики та обчислювальної техніки \
  Кафедра інформаційних систем та технологій
]

#v(1fr)

#align(center)[
  #text(size: 21pt)[Основи FE-технологій]
  #v(0.6cm)
  #text(size: 22pt, weight: "bold")[Лабораторна робота №2]
  #v(0.3cm)
  «Таблиці в HTML-5. Створення зображень засобами трансформацій в CSS-3»
]

#v(1fr)

#align(right)[
  Виконав: Вовк Андрій Андрійович \
  студент групи ІО-41 \
  Номер у загальному списку: 67 \
  Варіант завдань: 7
]

#v(1fr)
#align(center)[Київ — 2026]

#pagebreak()
#set page(numbering: "1", number-align: center + bottom)
#counter(page).update(1)

*Мета.* Створити HTML-таблицю за індивідуальним зразком та відтворити CSS-зображення
двома способами: через позиціонування і трансформації.

*Вибір варіанта.* За матеріалами вступної лекції (слайд 9), номер зразка
обчислюється як `(my_num - 1) % total_variants + 1`. Для №67 у списку та десяти
зразків: `(67 - 1) % 10 + 1 = 7`. Отже, для таблиці й зображення використано
зразок *№7* з методичних вказівок (с. 7–8 PDF).

#v(0.25cm)
#align(center)[#text(size: 15pt, weight: "bold")[Завдання 1. Таблиця]]

У файлі `index.html` створено таблицю. Перший рядок містить окремі комірки
«Вовк», «Андрій», «Андрійович»; другий — «ІО-41», «ЛР №2», «Зразок №7».
Форму зразка №7 наближено додатковими комірками, `colspan` та `rowspan`.
Верхню ліву зону залишено двома HTML-комірками без спільної межі, щоб
виконати вимогу щодо трьох окремих комірок у *кожному* з двох рядків.

CSS для таблиці розміщено в `style` того самого HTML-файлу. Для `nn = 07`
фони рядків задано як `#078f8f` і `#f5f507`; селектори `tr:hover > td` міняють
їх місцями. Колір тексту `#071414` контрастує з обома фонами: розраховані
співвідношення приблизно *4.77:1* та *16.04:1* (орієнтир — Adobe Color Contrast Checker).

#figure(
  align(center)[#image("table-screenshot.png", width: 91%)],
  caption: [HTML-таблиця з даними виконавця і кольорами рядків],
)

#pagebreak()
#align(center)[#text(size: 15pt, weight: "bold")[Завдання 2. CSS-зображення]]

Зразок №7 — закруглений квадрат із чотирма червоними точками й чорними
перпендикулярними лініями. Зображення відтворено *двічі*, без графічних файлів,
у файлі `style.css`. Ліва версія використовує `position: relative` для основи
та `position: absolute` для деталей; права ставить усі деталі в центр CSS Grid
і зміщує їх через `transform: translateX()` / `translateY()`, не позиціонуючи
деталі властивістю `position`.

#figure(
  align(center)[#image("figures-screenshot.png", width: 90%)],
  caption: [Два способи створення зображення за зразком №7],
)

*Перевірка та публікація.* Сторінку перевірено сервісом W3C Nu Validator:
*0 помилок і 0 попереджень*. Для локального запуску достатньо відкрити
`index.html` у браузері. Код: #link("https://github.com/coffer-45/frontend-lab2-css")[репозиторій GitHub],
зокрема #link("https://github.com/coffer-45/frontend-lab2-css/blob/main/index.html")[розмітка й CSS таблиці]
і #link("https://github.com/coffer-45/frontend-lab2-css/blob/main/style.css")[CSS-зображення].
Сайт: #link("https://coffer-45.github.io/frontend-lab2-css/")[GitHub Pages].

*Документація.*
#link("https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/td")[MDN: `td`, `colspan`, `rowspan`];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/:hover")[MDN: `:hover`];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/position")[MDN: `position`];
#link("https://developer.mozilla.org/en-US/docs/Web/CSS/transform")[MDN: `transform`];
#link("https://color.adobe.com/create/color-contrast-analyzer")[Adobe Color: перевірка контрасту].

*Висновок.* Створено HTML-таблицю з перемиканням кольорів і два CSS-рисунки;
сторінка опублікована та проходить валідацію HTML без зауважень.
