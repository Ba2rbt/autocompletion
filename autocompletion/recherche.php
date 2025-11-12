<?php
require_once 'config.php';

$search = isset($_GET['search']) ? $_GET['search'] : '';

if (empty($search)) {
    header('Location: index.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultats</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1><a href="index.php">Pokédex</a></h1>
        <input type="text" id="searchInput" placeholder="Rechercher..." value="<?php echo htmlspecialchars($search); ?>">
        <div id="suggestions"></div>
        
        <h2>Résultats pour : <?php echo htmlspecialchars($search); ?></h2>
        
        <div class="results">
            <?php
                $search_param = '%' . $connexion->real_escape_string($search) . '%';
                $sql = "SELECT id, nom, type FROM pokemon WHERE nom LIKE ?";
                $stmt = $connexion->prepare($sql);
                $stmt->bind_param("s", $search_param);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo '<a href="element.php?id=' . $row['id'] . '">';
                        echo htmlspecialchars($row['nom']) . ' - ' . htmlspecialchars($row['type']);
                        echo '</a>';
                    }
                } else {
                    echo '<p>Aucun résultat</p>';
                }

                $stmt->close();
            ?>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
