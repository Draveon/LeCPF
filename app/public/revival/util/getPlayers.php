<?php
echo "LALALAL";echo "LALALAL";

try {
$sth = $dbh->prepare("SELECT name FROM players");
$sth->execute();

$result = $sth->fetchAll();
var_dump($result);
} catch(PDOException $e) {
          echo $result . "<br>" . $e->getMessage();
        }
?>