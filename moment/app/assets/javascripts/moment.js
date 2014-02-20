jQuery(function($) {
  // Initialize Masonry
  var container = document.querySelector('.masonry');
  var msnry = new Masonry(container, {
    columnWidth: 270,
    gutter: 30,
    itemSelector: '.item',
    animate: true
  });
  // Lazyload images
  $('img.lazy').lazyload({
    effect: 'fadeIn',
    load: function() {
      imagesLoaded( container, function() {
        msnry.layout();
      });
    }
  });
  
  var source = new EventSource('/streams');
  source.addEventListener('hello.world', function(response) {
    var json = JSON.parse(response.data);
    console.log(json.name);
  });
});