// Initialize Masonry
var container = document.querySelector('.masonry');
var msnry = new Masonry(container, {
  columnWidth: 250,
  gutter: 10,
  itemSelector: '.item'
})