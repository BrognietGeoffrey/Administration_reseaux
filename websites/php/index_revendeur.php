<?php
    $db = mysqli_connect('localhost','root','','logopedia')
    or die('Error connecting to MySQL server.');
?>

<html>

<head>
</head>

<body>
    <h1>Bienvenue sur le site B2B (revendeurs)</h1>
 
    <?php
        $query = "SELECT * FROM mots";
        mysqli_query($db, $query) or die('Error querying database.');
        $result = mysqli_query($db, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['mot_id'] . ' : ' . $row['mot'] . ' ; ' . $row['distracteur'] . ' <br />';
        }
    ?>

</body>

</html>