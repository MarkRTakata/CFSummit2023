<!DOCTYPE html>
<html lang="en">
<head>
    <title>TRACI Input</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <style>
    body {
        font-family: 'Roboto', sans-serif;
        font-size: 16px;
        line-height: 1.5;
        color: #333;
        padding: 30px;
    }
    textarea {
        width: 500px; 
        height: 500px; 
        padding: 10px;
    }
 </style>   
    
</head>
<body>
<form name="traciinput" id="traciinput">
    Task<br />
    <input type="text" class="form-control" name="prompt_task" id="prompt_task" /><br /><br />
    Role<br />
    <input type="text" class="form-control" name="prompt_role" id="prompt_role" /><br /><br />
    Audience<br />
    <input type="text" class="form-control" name="prompt_audience" id="prompt_audience" /><br /><br />
    Create<br />
    <input type="text" class="form-control" name="prompt_create" id="prompt_create" /><br /><br />
    Intent<br />
    <input type="text" class="form-control" name="prompt_intent" id="prompt_intent" /><br /><br />

    <button type="button" hx-post="generatecontentwithcheck.cfm" hx-target="#viewport" class="btn btn-success" name="getcountbtn" id="getcountbtn">YEAH! AI! WOO!</button>
</form>
<div id="viewport"></div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/htmx.org@1.8.5"></script>
</html>