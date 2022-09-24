var sjs = SimpleJekyllSearch({
    searchInput: document.getElementById('search'),
    resultsContainer: document.getElementById('search-result'),
    json: '/search.json',
    searchResultTemplate: '<div class="col"><div class="card h-100"><img src="/assets/images/{titleid}.png" alt="" height="32px" width="32px"><div class="card-body"><h5 class="card-title">{name}</h5><p class="card-text truncate">{description}</p><p><small>Last Updated: {update_time}</small></p></div><div class="card-footer"><small class="text-muted">Version: {version}</small></div></div></div>'
});

document.querySelector('#search').addEventListener('keyup', function () {
    var keyword = this.value.toLowerCase();

    sjs.search(keyword);

    if (keyword.length > 0) {
        document.querySelector('#search-result').style.display = '';
    } else {
        document.querySelector('#search-result').style.display = 'none';
    }
});