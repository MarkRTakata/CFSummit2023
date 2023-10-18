<cfscript>
function generatecontentwithcheck(task, role, audience, create, intent) {   
    local.contentText = task & " " & role & " " & audience & " " & create & " " & intent;
    local.payload = 
        '
            {
                "model": "llama2-70b",
                "messages": [{"role": "user", "content": "#local.contentText#"}],
                "temperature": 0.7
            }
        '
    cfhttp(
        url="https://llama2-70b.lepton.run/api/v1/chat/completions", 
        method="post",
        result="apiresponse"){
            cfhttpparam (type="header", name="Authorization", value="KEY-FROM-LEPTONAI-GOES-HERE");
            cfhttpparam (type="header", name="Content-Type", value="application/json" );
            cfhttpparam (type="body" ,value="#local.payload#");
            
    }
    contentOutput = deserializeJSON(apiResponse.filecontent).choices[1].message.content;
}
generatecontentwithcheck(#prompt_task#, #prompt_role#, #prompt_audience#, #prompt_create#, #prompt_intent#);
</cfscript>
<textarea><cfoutput>#contentOutput#</cfoutput></textarea>