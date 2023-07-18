<?php
session_start();

if (!isset($_SESSION['connection'])) {
    $_SESSION['connection'] = 0;
}

include 'start.php';

$menu = ($_SESSION['connection'] == 1) ? 'menu.php' : (($_SESSION['account_connection'] == 1) ? 'account_menu.php' : 'index_menu.php');
include $menu;
include 'administration/connect.php';
?>

<!-- Formulaire de connexion -->
<h2>Connexion</h2>
<form method="POST" action="connect_player.php">
    <input type="hidden" name="token" value="<?php echo $_SESSION['token']; ?>">
    <label for="login">Login:</label>
    <input type="text" id="login" name="login" required><br>
    <label for="password">Mot de passe:</label>
    <input type="password" id="password" name="password" required><br>
    <button type="submit">Se connecter</button>
	<a href="inscription.php">S'inscrire</a>
</form>


<?php
$newsLimit = ($_GET['news'] ?? '') === 'all' ? '' : ' LIMIT 3';
$n = 0;
$index = 0;
$query = "SELECT title, content, author, display_date, id FROM news WHERE id = :id ORDER BY display_date DESC $newsLimit";
$stmt = $conn->prepare($query);
$stmt->bindValue(':id', $index, PDO::PARAM_INT);
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);


foreach ($result as $data) {
    $title = $data['title'];
    $content = $data['content'];
    $author = $data['author'];
    $displayDate = $data['display_date'];
    $id = $data['id'];

    $displayDate = microtime($displayDate);

    if ($title !== '') {
        $title .= '<br>';
    }

    $content = str_replace('<br>', ' ', $content);
    $content = substr(strip_tags($content), 0, 170);
    $content = substr($content, 0, strrpos($content, ' '));


    $n++;
    ?>
    <div class="newsContainer">
        <div class="newsTitle">
            <h4>
				<a href="#" data-toggle="modal" data-target="#newsModal-<?= $id ?>">
					<?= $title ?>
				</a>
			</h4>
        </div>
				<!-- The News Modal -->
		<div class="modal" id="newsModal-<?= $id ?>">
			<div class="modal-dialog">
				<div class="modal-content">
				
					<!-- Modal Header -->
					<div class="modal-header">
					<h4 class="modal-title"><?= $title ?></h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<?= $content ?>
					</div>
					
					<!-- Modal footer -->
					<div class="modal-footer">
					Posted by <?= $author ?>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
					
				</div>
			</div>
		</div>
    </div>
    <?php
}


// include_once 'partnerships_include.php';
include_once 'end.php';
?>
</div>
</div>
</body>
</html>