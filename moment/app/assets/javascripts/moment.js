// Initialize Masonry
var container = document.querySelector('.masonry');
var msnry = new Masonry(container, {
  columnWidth: 300,
  gutter: 10,
  isOriginLeft: false,
  itemSelector: '.item'
})