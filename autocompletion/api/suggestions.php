<?php
require_once '../config.php';

header('Content-Type: application/json');

$search = isset($_GET['q']) ? $_GET['q'] : '';

if (empty($search)) {
    echo json_encode(['exact' => [], 'partial' => []]);
    exit;
}

$search_exact = $search . '%';
$search_partial = '%' . $search . '%';

$sql_exact = "SELECT id, nom, type FROM pokemon WHERE nom LIKE ?";
$stmt_exact = $connexion->prepare($sql_exact);
$stmt_exact->bind_param("s", $search_exact);
$stmt_exact->execute();
$result_exact = $stmt_exact->get_result();

$exact_matches = [];
while ($row = $result_exact->fetch_assoc()) {
    $exact_matches[] = $row;
}
$stmt_exact->close();

$sql_partial = "SELECT id, nom, type FROM pokemon WHERE nom LIKE ? AND nom NOT LIKE ?";
$stmt_partial = $connexion->prepare($sql_partial);
$stmt_partial->bind_param("ss", $search_partial, $search_exact);
$stmt_partial->execute();
$result_partial = $stmt_partial->get_result();

$partial_matches = [];
while ($row = $result_partial->fetch_assoc()) {
    $partial_matches[] = $row;
}
$stmt_partial->close();

echo json_encode([
    'exact' => $exact_matches,
    'partial' => $partial_matches
]);
?>

