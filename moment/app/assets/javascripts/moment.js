// Initialize Masonry
var container = document.querySelector('.masonry');
var msnry = new Masonry(container, {
  columnWidth: 270,
  gutter: 27,
  itemSelector: '.item',
  animate: true
});

imagesLoaded( container, function() {
  msnry.layout();
})