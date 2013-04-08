XPTemplate priority=personal

XPT ma " Margin all
  margin: `int^px;
  `cursor^

XPT mall " Margin all with different values
  margin-top: `int1^px;
  margin-bottom: `int2^px;
  margin-left: `int3^px;
  margin-right: `int4^px;
  `cursor^

XPT mr " Margin Right
  margin-right: `int^px;
  `cursor^
XPT ml " Margin Left
  margin-left: `int^px;
  `cursor^
XPT mt " Margin Top
  margin-top: `int^px;
  `cursor^
XPT mb " Margin Bottom
  margin-bottom: `int^px;
  `cursor^

XPT pa " Padding all
  padding: `int1^px;
  `cursor^

XPT pall " Padding all all with different values
  padding-top: `int1^px;
  padding-bottom: `int2^px;
  padding-left: `int3^px;
  padding-right: `int4^px;
  `cursor^

XPT pr "Padding top
  padding-top: `int^px;
  `cursor^

XPT pb "Padding bottom
  padding-bottom: `int^px;
  `cursor^

XPT pl "Padding left
  padding-left: `int^px;
  `cursor^

XPT pr "Padding right
  padding-right: `int^px;
  `cursor^

XPT reset " CSS Reset values
/* RESET CSS */
* { margin: 0; padding: 0; text-decoration: none; font-size: 1em; outline: none; }
code, kbd, samp, pre, tt, var, textarea, input, select, isindex, listing, xmp, plaintext { font: inherit; font-size: 1em; white-space: normal; }
dfn, i, cite, var, address, em { font-style: normal; }
th, b, strong, h1, h2, h3, h4, h5, h6 { font-weight: normal; }
a, img, a img, iframe, form, fieldset, abbr, acronym, object, applet, table { border: none; }
table { border-collapse: collapse; border-spacing: 0; }
caption, th, td, center { text-align: left; vertical-align: top; }
body { line-height: 1; background: white; color: black; }
q { quotes: "" ""; }
ul, ol, dir, menu { list-style: none; }
sub, sup { vertical-align: baseline; }
a { color: inherit; }
hr { display: none; } /* we don't need a visual hr in layout */
font { color: inherit !important; font: inherit !important; color: inherit !important; } /* disables some nasty font attributes in standard browsers */
marquee { overflow: inherit !important; -moz-binding: none; }
blink { text-decoration: none; }
nobr { white-space: normal; }

XPT blanks " Blank CSS values
* {
    margin: 0;
    padding: 0;
    text-decoration: none;
    font-size: 12px;
    outline: none;
}
body {

}
code, kbd, samp, pre, tt, var, textarea, input, select, isindex, listing, xmp, plaintext {
  font: inherit;
  font-size: medium;
  white-space: normal;
}

p {

}

a {

}

h1, h2, h3, h4, h5, h6 {

}

table {

}

tr {

}

td {

}

th {

}

li {

}

ol {

}

ul {

}

