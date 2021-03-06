<html>
    <head>
        <title>Site health: $Status</title>
        <style>
            * {
                font-family: Helvetica, Arial;
                font-size: 12px;
            }
            .subtext {
                margin-top: -10px;
                font-size: 10px;
            }
            
            h1 {
                font-size: 30px;
                margin-bottom: 10px;
                margin-left: 8px;
            }
            
            p {
                margin-left: 10px;
            }
            
            table {
                border-collapse: collapse;
            }
                table th {
                    color: white;
                    background-color: #777;
                    /*border: 1px #aaa solid;*/
                    padding: 10px;
                    text-align: left;
                }
                table td {
                    background-color: #eee;
                    /*border: 1px #ddd solid;*/
                    padding: 5px 10px;
                }
                table tr:nth-child(odd) td {
                    background-color: #ddd;
                }
                
            .OK {
                color: green;
            }
            .WARNING {
                color: orange;
                font-weight: bold;
            }
            .ERROR {
                color: red;
                font-weight: bold;
            }
        </style>
    </head>

    
    <body>
        <h1 class="$Status">$Title: $Status</h1>
        
        <table>
            <tr><th>Check</th> <th>Status</th> <th>Message</th></tr>
            <% control Details %>
            <tr><td>$Check</td> <td class="$Status">$Status</td> <td>$Message.XML</td></tr>
            <% end_control %>
        </table>

        <% if ShouldPass %>
        <p>Site is available</p>
        <p class="subtext">(you may check for the presence of the text 'Site is available' rather than an HTTP $ErrorCode error on this page, if you prefer.)</p>
        <% else %>
        <p><b>Site is not available</b></p>
        <% end_if %>
    </body>
</html>