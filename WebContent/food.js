var itype=[];
var iquant=[];
var dotype=[];
var iunit=[];
function addItem()
{
    if(itemtype.value.length!==0 && quant.value.length!==0)
    {
        itype.push(document.getElementById('itemtype').value);
        iquant.push(document.getElementById('quant').value);
        dotype.push(document.getElementById('dtype').value);
        iunit.push(document.getElementById('dunit').value);
         
    }
    else
    {
        alert("Empty field food type or quantity");
    }
    
    displayCart();
}

function displayCart()
{
    cartdata="<table><tr><th>Donation Type</th><th>Item Type</th><th>Quantity</th><th>Unit</th></tr>";
    for(i=0;i<itype.length;i++)
    {
        cartdata+="<tr><td>"+dotype[i]+"</td><td>"+itype[i]+"</td><td>"+iquant[i]+"</td><td>"+iunit[i]+"</td><td><button onclick='delElement("+i+")'>Delete</button></td></tr>";
    }
    document.getElementById('cart').innerHTML = cartdata;
}

function delElement(a)
{
    
    itype.splice(a,1);
    iquant.splice(a,1);
    dotype.splice(a,1);
    iunit.splice(a,1);

    displayCart();
}
function msg()
{
    var it="";
    var qu="";
    var dt="";
    var ut="";
      for(var i=0;i<itype.length;i++)
    {
        it+=itype[i]+" ";
        qu+=iquant[i]+" ";
        dt+=dotype[i]+" ";
        ut+=iunit[i]+" ";
    }
    document.getElementById('hiddenitem').value=it;
    document.getElementById('hiddenquant').value=qu;
    document.getElementById('hiddendtype').value=dt;
    document.getElementById('hiddenunit').value=ut;
      
}