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
});