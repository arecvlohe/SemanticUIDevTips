$(document).ready ->

  console.log('Hello World!')

  $('button').click ->
    $('.ui.basic.modal')
      .modal('show')

  $('.menu .item')
    .click ->
      $(this).addClass 'active'
      $(this).siblings().removeClass 'active'

  return
