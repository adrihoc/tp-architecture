<?php require "includes/header.php";?>
<title>Products</title>
<div id="main">
<?php

try
{
	$bdd = new PDO(
		'mysql:host=localhost;dbname=produits;charset=utf8',
		'root',
		'',
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
	);
}

catch (Exception $e)
{
	die($e->getMessage());
}

if ((isset($_POST["name"]))&&(isset($_POST["produit"])))
{
	$req = $bdd->prepare("INSERT INTO produit(ID, name, type, classe, price) VALUES (NULL, :name, :type, :classe, :price)");
	$req->execute(array(
		"name" => $_POST["name"],
		"type" => $_POST["type"],
		"classe" => $_POST["classe"]
	));
}

require "classProduit.php";	
$req = $bdd->prepare("SELECT * FROM Produit");
$req->execute();

while ($donnees = $req->fetch())
{
	$produit = new Produit($donnees["name"], $donnees["type"], $donnees["classe"], $donnees['price']);

	echo "<div class='produit'>
			<div class='name'>{$produit->name()}</div>
			<a href=\"{$produit->name()}.php\"><li class=\"onglet\"></li>
			<img src=\"Images/{$produit->type()}/{$produit->name()}.png\" width=\"100em\"/></a></br>
			Price : \${$produit->price()}
		</div>";
}
$req->closeCursor();

?>
</div>
<?php require "includes/footer.php";?>