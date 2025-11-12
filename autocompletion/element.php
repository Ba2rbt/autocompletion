<?php
require_once 'config.php';

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($id <= 0) {
    header('Location: index.php');
    exit;
}

$sql = "SELECT id, nom, type, description FROM pokemon WHERE id = ?";
$stmt = $connexion->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    header('Location: index.php');
    exit;
}

$pokemon = $result->fetch_assoc();
$stmt->close();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title><?php echo htmlspecialchars($pokemon['nom']); ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1><a href="index.php">Pokédex</a></h1>
        <input type="text" id="searchInput" placeholder="Rechercher...">
        <div id="suggestions"></div>
        
        <div class="detail">
            <h2><?php echo htmlspecialchars($pokemon['nom']); ?></h2>
            <p><strong>Type :</strong> <?php echo htmlspecialchars($pokemon['type']); ?></p>
            <p><strong>Description :</strong> <?php echo htmlspecialchars($pokemon['description']); ?></p>
            <br>
            <a href="index.php">Retour à l'accueil</a>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
