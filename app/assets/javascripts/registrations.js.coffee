# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $('form#new_user').bind 'ajax:success', (e, data, status, xhr) ->
#   if data.success
#     console.log('success!')
#   else
#     console.log('failure!')

$(document).ajaxSuccess (e, data, status, xhr) ->
  if xhr.success
    $('#new_user').hide()
    $('#sign-up-header').after ->
      """
      <p class="sign-up-message">Welcome! You have signed up successfully. Sign in below to get started!</p>
      """
  else
    console.log 'failure!'