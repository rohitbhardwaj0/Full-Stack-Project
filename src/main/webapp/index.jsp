<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>milestone_4</title>
<style> 
#table1 { 
  border-collapse: collapse; 
  width: 100%; 
} 

#table1 th, 
#table1 td { 
  text-align: left; 
  padding: 8px; 
  border: 2px solid #000000; /* Add border property */ 
} 

#table1 th { 
  background-color: #f2f2f2; 
} 

#table1 tr:nth-child(odd) { 
  background-color: #f9f9f9; 
} 

#table1 tr:nth-child(even) { 
  background-color: #ddd; 
} 

#table1 th { 
  background-color: lightgreen; 
} 

#table2 { 
  border-collapse: collapse; 
  width: 100%; 
} 

#table2 th, 
#table2 td { 
  text-align: left; 
  padding: 8px; 
  border: 2px solid #000000; /* Add border property */ 
} 

#table2 tr.id1 { 
  background-color: lightblue; 
} 
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

</style> 
</head>
<body>
  <table id="table1"> 
    <thead> 
      <tr> 
        <th>Sl. No</th> 
        <th>Customer Order id</th> 
        <th>Sales Org</th> 
        <th>Distribution Channel</th> 
        <th>Company Code</th> 
        <th>Order Creating Date</th> 
        <th>Order Amount</th> 
        <th>Order Currency</th> 
        <th>Customer Number</th> 
        <th>Amount in USD</th> 
      </tr> 
    </thead> 
    <tbody> 
      <tr> 
        <td>1</td> 
        <td>963432061</td> 
        <td>3449</td> 
        <td>Martinique</td> 
        <td>3220</td> 
        <td>01-01-2022</td> 
        <td>787.36</td> 
        <td>EUR</td> 
        <td>12311807</td> 
        <td>892.525</td> 
      </tr> 
      <tr> 
        <td>2</td> 
        <td>971991639</td> 
        <td>3238</td> 
        <td>Moldova</td> 
        <td>3260</td> 
        <td>01-01-2022</td> 
        <td>67493.46</td> 
        <td>EUR</td> 
        <td>12118758</td> 
        <td>76508.336</td> 
      </tr> 
      <tr> 
        <td>3</td> 
        <td>754349803</td> 
        <td>3911</td> 
        <td>United Arab Emirates</td> 
        <td>3290</td> 
        <td>01-01-2022</td> 
        <td>1405.54</td> 
        <td>EUR</td> 
        <td>1210499770</td> 
        <td>1593.273</td> 
      </tr> 
      <tr> 
        <td>4</td> 
        <td>930253442</td> 
        <td>2381</td> 
        <td>Greece</td> 
        <td>3290</td> 
        <td>01-01-2022</td> 
        <td>0</td> 
        <td>EUR</td> 
        <td>1210351400</td> 
        <td>0</td> 
      </tr> 
      <tr> 
        <td>5</td> 
        <td>819741436</td> 
        <td>3605</td> 
        <td>Argentina</td> 
        <td>3290</td> 
        <td>01-01-2022</td> 
        <td>1065.33</td> 
        <td>EUR</td> 
        <td>1210124309</td> 
        <td>1207.62</td> 
      </tr> 
      <tr> 
        <td>6</td> 
        <td>881355361</td> 
        <td>3645</td> 
        <td>Armenia</td> 
        <td>3470</td> 
        <td>02-01-2022</td> 
        <td>302.85</td> 
        <td>EUR</td> 
        <td>12311152</td> 
        <td>343.593</td> 
      </tr> 
    </tbody> 
  </table> 
  <br>
  <br>
  <img src="hrclogo.svg" class="img">
  <br>
  <table id="table2"> 
    <thead> 
      <tr class="id1"> 
        <th>SI No.</th> 
        <th>Customer Order ID</th>
        <th>Sales Org</th>
        <th>Distribution channel</th>
        <th>Company Code</th> 
        <th>Order Creation date</th>
        <th>order Currency</th>
        <th>Customer Number</th>
        <th>Amount in USD</th>
      </tr> 
    </thead> 
    <tbody> 
      <tr> 
        <td>1</td> 
        <td>963432061</td> 
        <td>3449</td> 
        <td>Martinique</td> 
        <td>3220</td>
        <td>01-01-2022</td> 
        <td>EUR</td> 
        <td>12311807</td> 
        <td>892.525050666667</td> 
      </tr> 
      
      <tr> 
        <td>2</td> 
        <td>971991639</td> 
        <td>3238</td> 
        <td>Moldova</td> 
        <td>3260</td>
        <td>01-01-2022</td> 
        <td>EUR</td> 
        <td>12118758</td> 
        <td>76508.336474</td> 
      </tr> 
      
      <tr> 
        <td>3</td> 
        <td>754349803</td> 
        <td>3911</td> 
        <td>United Arab Emirates</td> 
        <td>3290</td>
        <td>01-01-2022</td> 
        <td>EUR</td> 
        <td>1210499770</td> 
        <td>1593.27329266667</td> 
      </tr> 
      
      <tr> 
        <td>4</td> 
        <td>930253442</td> 
        <td>2381</td> 
        <td>Greece</td> 
        <td>3290</td>
        <td>01-01-2022</td> 
        <td>EUR</td> 
        <td>1210351400</td> 
        <td>0</td> 
      </tr> 
      
      <tr> 
        <td>5</td> 
        <td>819741436</td> 
        <td>3605</td> 
        <td>Argentina</td> 
        <td>3290</td>
        <td>01-01-2022</td> 
        <td>EUR</td> 
        <td>1210124309</td> 
        <td>1207.622577</td> 
      </tr> 
      
      <tr> 
        <td>6</td> 
        <td>881355361</td> 
        <td>3645</td> 
        <td>Armenia</td> 
        <td>3470</td>
        <td>02-01-2022</td> 
        <td>EUR</td> 
        <td>12311152</td> 
        <td>9508.17216133333</td> 
      </tr> 
      
      <tr> 
        <td>7</td> 
        <td>821659852</td> 
        <td>2470</td> 
        <td>United States of America</td> 
        <td>3220</td>
        <td>02-01-2022</td> 
        <td>EUR</td> 
        <td>1230021722</td> 
        <td>619.28502</td> 
      </tr> 
      
      <tr> 
        <td>8</td> 
        <td>957194828</td> 
        <td>3150</td> 
        <td>United States Minor Outlying Islands</td> 
        <td>3290</td>
        <td>02-01-2022</td> 
        <td>EUR</td> 
        <td>1210183107</td> 
        <td>619.28502</td> 
      </tr> 
      
      <tr> 
        <td>9</td> 
        <td>806322513</td> 
        <td>3396</td> 
        <td>Serbia</td> 
        <td>3290</td>
        <td>02-01-2022</td> 
        <td>EUR</td> 
        <td>1210499770</td> 
        <td>619.28502</td> 
      </tr> 
      
      <tr> 
        <td>10</td> 
        <td>922237131</td> 
        <td>2353</td> 
        <td>Turks and Caicos Islands</td> 
        <td>3290</td>
        <td>02-01-2022</td> 
        <td>EUR</td> 
        <td>1210499770</td> 
        <td>638.435942666667</td> 
      </tr> 
      
    </tbody> 
  </table>
</body>
</html>


