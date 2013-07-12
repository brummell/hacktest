<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'timechart.css')}" type="text/css">
        <g:javascript src="raphael.2.1.0.min.js"/> 
        <g:javascript src="justgage.1.0.1.min.js"/>
        <g:javascript>
            var memmvar = (${memm} * 100).toFixed(3);
            var diskvar = (${diskk} * 100).toFixed(3);
            window.onload = function(){
                var gm = new JustGage({
                    id: "gaugememm",
                    value: memmvar,
                    min: 0,
                    max: 100,
                    title: "Recent % Memory Use"
                });
                
                var gd = new JustGage({
                    id: "gaugediskk",
                    value: diskvar,
                    min: 0,
                    max: 100,
                    title: "Recent % Disk Use"
                });
            }
       </g:javascript>
       <r:layoutResources/>
    </head>

    <body>
        <div id="gaugememm" class="200x160px"></div>
        <div id="gaugediskk" class="200x160px"></div>
        <r:layoutResources/>
    </body>

</html>


