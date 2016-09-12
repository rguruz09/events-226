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
                               "raghu", "raghu");
            $con->setAttribute(PDO::ATTR_ERRMODE,
                                   PDO::ERRMODE_EXCEPTION);
            
            $query = "SELECT * FROM events WHERE ";
            if ($searchtype == "all") {
                $query .= "1";
            }                        
            else {       

                $event = filter_input(INPUT_POST, "name");
                $loc = filter_input(INPUT_POST, "location");
                $cat = filter_input(INPUT_POST, "category");

                
                if (isset($_POST['free'])) {
                    $free1 = $_POST['free'];
                }
                else{
                    $free1 = "";
                }
                if (isset($_POST['paid'])) {
                    $free2 = $_POST['paid'];
                }
                else{
                    $free2 = "";
                }

                if (strlen($event) > 0) {
                    $query .= "event_name LIKE '%$event%' AND ";
                }

                if (strlen($loc) > 0) {
                    $query .= "event_address LIKE '%$loc%' AND ";
                }

                if (strlen($cat) > 0) {
                    if($cat != "select"){
                        $query .= " event_category LIKE '%$cat%' AND ";    
                    }                    
                }

                if(strlen($free1) > 0 || strlen($free2) > 0){
                    
                    if(strlen($free1) > 0 && strlen($free2) > 0){
                        $query .= " event_free = 1 OR event_free = 0";
                    }
                    elseif (strlen($free1)){
                        $query .= " event_free = 1 AND ";
                    }
                    elseif (strlen($free2)){
                        $query .= " event_free = 0 AND ";
                    }                    
                }    

                $query .= "1" ;

            }

            //  displays query results in table    
            // Fetch the database field names.
            $result = $con->query($query);
            $row = $result->fetch(PDO::FETCH_ASSOC);       
            // Fetch the matching database table rows.
            $data = $con->query($query);
            $data->setFetchMode(PDO::FETCH_ASSOC);   
            if((is_array($row) || is_object($row))&&(is_array($data) || is_object($data)))
            {
                print "<table border='1'>\n";
                // Construct the header row of the HTML table.
                print "            <tr>\n";    
                 foreach ($row as $field => $value) {
                    print "                <th>$field</th>\n";
                }
                print "            </tr>\n";         
                // Construct the HTML table row by row.
                foreach ($data as $row) 
                {
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
