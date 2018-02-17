var link = document.querySelector('link[rel="import"]');
link.addEventListener('load', function(e) {
    var content = link.import;
    var ee = content.querySelector('chamoisNavBar');
    document.getElementById('chamoisNavBar').appendChild(ee.cloneNode(true));
});