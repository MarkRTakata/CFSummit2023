<cfhtmltopdf destination="css3.pdf" overwrite="yes">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Flexbox</title>
<style>
.flex-container {
width: 80%;
min-height: 300px;
margin: 0 auto;
font-size: 32px;
display: -webkit-flex;
-webkit-flex-direction: row;
display: flex;
flex-direction: row;
border: 1px solid #666;
}
.flex-container div {
padding: 10px;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1;
}
.item1 {
background: #e84d51;
}
.item2 {
background: #7ed636;
}
.item3 {
background: #2f97ff;
}
</style>
</head>
<body>
<div class="flex-container">
<div class="item1">Item 1</div>
<div class="item2">Item 2</div>
<div class="item3">Item 3</div>
</div>
</body>
</html>
</cfhtmltopdf>
<cfheader name="Content-Disposition" value="inline;filename=css3.pdf">
<cfcontent type="application/pdf" file="C:\cf23\cfusion\wwwroot\PDFEngineDemo\css3.pdf">