// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery


//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(function(){
  $(".parent").on('click', function(){
    let element = $(this).next()
    element.toggle()
  })
})


$(function(){
  $(".openpost").on('click', function(){
    let element = $(this).next()
    element.toggle()
  })
})


$(function(){
  $(".arrowbtn").on('click', function(){
    $('html, body').animate(
      { scrollTop: $('body').get(0).scrollHeight}
      )
  })
})


$(function(){
  $(".open").on('click', function(){
    let element = $(this).next()
    element.toggle()
  })
})


$(function(){
  $(window).scroll(function(){
    const wHeight = $(window).height()
    const scrollAmount = $(window).scrollTop()
    $(".scrollanime").each(function(){
      const targetPosition = $(this).offset().top
      if(scrollAmount > targetPosition - wHeight + 40){
        $(this).addClass("fadeInUp")
      }
    })
  })
})
