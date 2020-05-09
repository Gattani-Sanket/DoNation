<html>
    <head>
        <title>

        </title>
        <link rel="stylesheet" type="text/css" href="food.css">  
        <script src="food.js"></script>
        
    </head>
    <body>
   <%@include file="topnav.jsp" %>
  <img src="logo.png" height=150px width=150px>
<hr> 

 
        <div class="main">
            <h1> Donate </h1>
            <div class="DonationBoxTransaction">
            <div class="cardelement">
               
		    
          
                    <fieldset>
                        <legend>Add to Donation Box</legend>
                            <label>Donation Type: </label>
                            <select id="dtype" name="dotype">
                                <option value="Food">Food</option>
                                <option value="Cloths">Clothes</option>
                                <option value="Books">Books</option>
                                <option value="Toys">Toys</option>
                            </select><br>
                            <label>Item Type: </label>
                            <input id='itemtype' type="text"><br>
                            <label>Approx Quantity: </label>
                            <input id='quant' type="text"><br>
                            <label>unit: </label>
                            <select id="dunit">
                                <option value="kg">kg</option>
                                <option value="litre">liter</option>
                                <option value="unit">unit</option>
                            </select><br>
                            <button onclick="addItem()">Add Item </button>
                    </fieldset>
             </div>
             <div class="vl"></div>
             <div id='cart'>
                 <table><tr><th>Donation Type</th><th>Item Type</th><th>Quantity</th><th>Unit</th></tr></table>
             </div>
             <div class='contactdetails'>
                 <form action="food.jsp" method="post">
            
       
                 <fieldset>
    		    <legend>Contact Details</legend>
                    Name*:
                    <input type="text" id="cname" name="sname"><br>
                    Mobile*:
                    <input type="text" id="cmobile" name="smob"><br>
                     Address*:
                     <input type="text" id="caddr" name="saddr"><br>
                    </fieldset>
                     
            <input type="text" id="hiddendtype" name="hiddtype" hidden>
            <input type="text" id="hiddenitem" name="hiditem" hidden>
            <input type="text" id="hiddenquant" name="hidquant" hidden>
            <input type="text" id="hiddenunit" name="hidunit" hidden>
            
            <center> <button type="submit" id='submitrequest' onclick="msg()">Place Request</button> </center>
            
             </form>
             </div>
            </div>
        </div>
        
    </body>
</html>