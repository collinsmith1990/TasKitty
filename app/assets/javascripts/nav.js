$(document).ready(function() {
  $(".drop-menu").addClass("hidden");
  //Drop-downs
  $(".drop-down-btn").mouseenter(function() {
    var self = $(this)
    self.addClass("active");
    self.removeClass("inactive");
    self.children().removeClass("caret-down");
    self.children().addClass("caret-up");
    self.next().slideDown(100);
    $(".drop-down").mouseleave(function() {
      self.removeClass("active");
      self.addClass("inactive");
      self.children().removeClass("caret-up");
      self.children().addClass("caret-down");
      self.next().slideUp(100);
    });
  }); 
});
