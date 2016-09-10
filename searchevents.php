<html>
<head><title>Events</title></head>
<body>
   <h1>Search Results</h1>
   <form action="events.html" method="get">
      <input type="submit" value="Back" />
   </form>
<?php
  	 $searchtype = filter_input(INPUT_POST, "searchtype");
      try {
            //connection to database add your db user name and password here
            $con = new PDO("mysql:host=localhost;dbname=events",
                               "donita", "donita");
            $con->setAttribute(PDO::ATTR_ERRMODE,
                                   PDO::ERRMODE_EXCEPTION);
            if ($searchtype == "all") {
            $query = "SELECT * FROM events";  
            }
            else if ($searchtype == "byfield") {
              $field = filter_input(INPUT_POST, "field");
              
                switch ($field) {
                    case "eventname":
                    	$name = filter_input(INPUT_POST, "name");
                   		$query = "SELECT * FROM events where event_name like '%" . $name . "%'";                                                     
                        break;
                    case "location":
                    	$location = filter_input(INPUT_POST, "location");
                    	$query = "SELECT * FROM events where event_address like '%" . $location . "%'";                                         
                        break;
                    case "month":
                    	$month = filter_input(INPUT_POST, "month");
                        if($month=="none"){
                            $query = "SELECT * FROM events";
                        }
                        else{
                            $query = "SELECT * FROM events where MONTH(event_date) = " . $month;
                        }	
                        //$monthname = date("F", mktime(0, 0, 0, $month, 10));
                        break;
		                case "charge":
                        if(filter_has_var(INPUT_POST, "free") && filter_has_var(INPUT_POST, "paid"))
                        {
                           $query = "SELECT * FROM events";
                        }
                        else if(filter_has_var(INPUT_POST, "free")){
                           $query = "SELECT * FROM events where event_free = 1";
                        }
                        else if(filter_has_var(INPUT_POST, "paid")){
                            $query = "SELECT * FROM events where event_free = 0";
                        }
                        break;
                    case "category":
                        $category = filter_input(INPUT_POST, "category");
                        if($category=="none"){
                            $query = "SELECT * FROM events";  
                        }
                        else{
                            $query = "SELECT * FROM events where event_category = '" . $category . "'";  
                        }                         
                        break;
                    default:
                        $query="SELECT * FROM events";
                }
            }
            
            else {                
                $event = filter_input(INPUT_POST, "name");
                $loc = filter_input(INPUT_POST, "location");
                $mon = filter_input(INPUT_POST, "month");
                $cat = filter_input(INPUT_POST, "category");
                $query = "SELECT * FROM events where event_name like '%" . $event . "%' and event_address like '%" . $loc . "%' and MONTH(event_date) = " . $mon . " and event_category = '" . $cat . "'";
                       if(filter_has_var(INPUT_POST, "free") && filter_has_var(INPUT_POST, "paid")){
                            $query = $query . "";
                        }
                        else if(filter_has_var(INPUT_POST, "free")){
                           $query = $query . " and event_free = 1";
                        }
                        else if(filter_has_var(INPUT_POST, "paid")){
                            $query = $query . " and event_free = 0";
                        }
            }
               //  displays query results in table    
           // echo $query;
                // Fetch the database field names.
                $result = $con->query($query);
                $row = $result->fetch(PDO::FETCH_ASSOC);       
                // Fetch the matching database table rows.
                $data = $con->query($query);
                $data->setFetchMode(PDO::FETCH_ASSOC);   
                if((is_array($row) || is_object($row))&&(is_array($data) || is_object($data))){
                print "<table border='1'>\n";
                // Construct the header row of the HTML table.
                print "            <tr>\n";    
                 foreach ($row as $field => $value) {
                    print "                <th>$field</th>\n";
                }
                print "            </tr>\n";         
                // Construct the HTML table row by row.
                foreach ($data as $row) {
                    print "            <tr>\n";
                    foreach ($row as $name => $value) {
                        print "                <td>$value</td>\n";
                    }        
                    print "            </tr>\n";
                }
                print "        </table>\n";
                 }
                  else{
                    echo 'Sorry your search did not match any events! Please try again';
                }
        }
        catch(PDOException $ex) {
            echo 'ERROR: '.$ex->getMessage(); 
        }  
?>
</body>
</html>
