<cfhtmltopdf destination="grid.pdf" overwrite="yes">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sample of a CSS grid layout</title>
<style>
body {
  margin: 40px;
}
.sidebar {
    grid-area: sidebar;
}
.content {
    grid-area: content;
}
.header {
    grid-area: header;
}
.footer {
    grid-area: footer;
}
.wrapper {
    display: grid;
    grid-gap: 10px;
    grid-template-columns: 140px 140px 140px;
    grid-template-areas:
    "....... header header"
    "sidebar content content"
    "footer  footer  footer";
    background-color: #fff;
    color: #444;
}
.box {
  background-color: #444;
  color: #fff;
  border-radius: 5px;
  padding: 10px;
  font-size: 150%;
}

.header,
.footer {
  background-color: #999;
}
</style>
</head>
<body>
<div class="wrapper">
  <div class="box header">Luminari</div>
  <div class="box sidebar">A story.<br />A fox.<br />A spirit.<br />An icon.</div>
  <div class="box content">
  In Finnish, "Lumi" means snow. In Japanese, "Inari" is the fox spirit, the deity of rice and the harvest.
  <br /><br />Luminari is a magical arctic fox, a playful spirit that captures the hardiness, the stability, the creativity and power of the CFML language.
  <br /><br /> She serves as a symbol of the magic of CFML, one united icon to bring all programmers together.
  </div>
  <div class="box footer">かわいいキツネのマスコット ルミナリ</div>
</div>
</body>
</html>
</cfhtmltopdf>
<cfheader name="Content-Disposition" value="inline;filename=GridViewDemo.pdf">
<cfcontent type="application/pdf" file="C:\cf23\cfusion\wwwroot\PDFEngineDemo\grid.pdf">