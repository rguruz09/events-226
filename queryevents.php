<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  </head>

  <body>
    <h1>Query Results</h1>
    
    <p>
        <?php
            $ename = filter_input(INPUT_GET, "eve_name");
            $edesc  = filter_input(INPUT_GET, "eve_desc");
            $esdate = filter_input(INPUT_GET, "eve_name");
            $eedate = filter_input(INPUT_GET, "eve_name");
            $efree = filter_input(INPUT_GET, "eve_name");
            $ecat  = filter_input(INPUT_GET, "eve_desc");
            $eaddr = filter_input(INPUT_GET, "eve_name");
            // $edesc  = filter_input(INPUT_GET, "eve_desc");
            
            try {
                // Connect to the database.
                $con = new PDO("mysql:host=localhost;dbname=events",                               
                               "raghu", "raghu");
                $con->setAttribute(PDO::ATTR_ERRMODE,
                                   PDO::ERRMODE_EXCEPTION);

                $query = "SELECT event_name, event_description,  event_date, event_category, event_address, event_free, event_status  FROM events WHERE";

                 
                if (strlen($ename) > 0) {
                    $query .= "event_name LIKE '%$ename%' AND";
                }
                if(strlen($edesc) > 0){
                    $query .= "event_description LIKE '%$edesc%' AND"; 
                }
                if(strlen($esdate) > 0 and strlen($eedate) > 0 ){
                    $query .= "event_date  BETWEEN  '$esdate' AND '$eedate' AND"; 
                }
                if (strlen($eaddr) > 0) {
                    $query .= "event_address LIKE '%$eaddr%' AND";
                }
                if (strlen($ecat) > 0) {
                    $query .= "event_category IN '$ecat' AND";
                }

                $data = $con->query($query);
                $data->setFetchMode(PDO::FETCH_ASSOC);


                print "<table border='1'>\n";
                $result = $con->query($query);
                $row = $result->fetch(PDO::FETCH_ASSOC);
                print "            <tr>\n";
                foreach ($row as $field => $value) {
                    print "                <th>$field</th>\n";
                }
                print "            </tr>\n";

                foreach ($data as $row) {
                    print "            <tr>\n";
                    
                    foreach ($row as $name => $value) {
                        print "                <td>$value</td>\n";
                    }
                    
                    print "            </tr>\n";
                }
                
                print "</table>\n";                
              

            }
            catch(PDOException $ex) {
                echo 'ERROR: '.$ex->getMessage();
            }        
        ?>
    </p>
</body>

</html>




