  <cfhtmltopdf destination="svg.pdf"
  source="testpdf-svgsource.cfm" overwrite="true"  
  orientation="portrait"  pagetype="A4" margintop="1" marginbottom="1" 
  marginleft="1" marginright="1" />


<cfheader name="Content-Disposition" value="inline;filename=svg.pdf">
<cfcontent type="application/pdf" file="C:\cf23\cfusion\wwwroot\PDFEngineDemo\svg.pdf">