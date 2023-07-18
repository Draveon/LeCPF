<? session_start(); 

include("connect_p.php"); 
$serveur=1;

$sql="SELECT * FROM joueurs_batiments_id";
$result = mysql_query($sql);

echo "Pour le serveur :".$serveur."<br>";

for($i=0; $i<mysql_num_rows($result); $i++)
{

$data = mysql_fetch_array($result);

$nom_heros = $data['nom'];
$Tour1 = $data['1'];
$Tour2 = $data['2'];
$Tour3 = $data['3'];
$Tour4 = $data['4'];
$Tour5 = $data['5'];

if($Tour5 != "0")
{ 
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     	echo "le joueur : ".$nom_heros." est en infraction <br>";
     }
}
else
{
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                	
            }
         }
     }
}
}
include("connect_b.php"); 
$serveur=2;

$sql="SELECT * FROM joueurs_batiments_id";
$result = mysql_query($sql);

echo "Pour le serveur :".$serveur."<br>";

for($i=0; $i<mysql_num_rows($result); $i++)
{
	
$data = mysql_fetch_array($result);

$nom_heros = $data['nom'];
$Tour1 = $data['1'];
$Tour2 = $data['2'];
$Tour3 = $data['3'];
$Tour4 = $data['4'];
$Tour5 = $data['5'];

if($Tour5 != "0")
{ 
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     	echo "le joueur : ".$nom_heros." est en infraction <br>";
     }
}
else
{
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                	
            }
         }
     }
}
}
include("connect_a.php"); 
$serveur=3;

$sql="SELECT * FROM joueurs_batiments_id";
$result = mysql_query($sql);

echo "Pour le serveur :".$serveur."<br>";

for($i=0; $i<mysql_num_rows($result); $i++)
{
$data = mysql_fetch_array($result);

$nom_heros = $data['nom'];
$Tour1 = $data['1'];
$Tour2 = $data['2'];
$Tour3 = $data['3'];
$Tour4 = $data['4'];
$Tour5 = $data['5'];

if($Tour5 != "0")
{ 
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     	echo "le joueur : ".$nom_heros." est en infraction <br>";
     }
}
else
{
	if($Tour4 != "0")
    {
    	if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            echo "le joueur : ".$nom_heros." est en infraction <br>";
         }
     }
     else
     {
     if($Tour3 != "0")
        {
        	if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                echo "le joueur : ".$nom_heros." est en infraction <br>";
            }
         }
         else
         {
            if($Tour2 != "0")
            {
            	if($Tour1 != "0")
                {
                	
                }
                else
                {
                	echo "le joueur : ".$nom_heros." est en infraction <br>";
                }
            }
            else
            {
                	
            }
         }
     }
}
}
?>