var searchInput = document.getElementById('searchInput');
var suggestionsContainer = document.getElementById('suggestions');

searchInput.addEventListener('input', function(e) {
    var query = e.target.value;
    
    if (query.length === 0) {
        suggestionsContainer.innerHTML = '';
        return;
    }

    fetch('api/suggestions.php?q=' + encodeURIComponent(query))
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            afficherSuggestions(data.exact, data.partial);
        });
});

function afficherSuggestions(exact, partial) {
    suggestionsContainer.innerHTML = '';
    
    if (exact.length === 0 && partial.length === 0) {
        return;
    }

    exact.forEach(function(pokemon) {
        var a = document.createElement('a');
        a.href = 'element.php?id=' + pokemon.id;
        a.innerHTML = pokemon.nom + ' (' + pokemon.type + ')';
        suggestionsContainer.appendChild(a);
    });

    if (partial.length > 0) {
        var sep = document.createElement('div');
        sep.innerHTML = '--- Autres résultats ---';
        suggestionsContainer.appendChild(sep);
        
        partial.forEach(function(pokemon) {
            var a = document.createElement('a');
            a.href = 'element.php?id=' + pokemon.id;
            a.innerHTML = pokemon.nom + ' (' + pokemon.type + ')';
            suggestionsContainer.appendChild(a);
        });
    }
}

searchInput.addEventListener('keypress', function(e) {
    if (e.key === 'Enter') {
        window.location.href = 'recherche.php?search=' + encodeURIComponent(searchInput.value);
    }
});

