# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $('form#new_user').bind 'ajax:success', (e, data, status, xhr) ->
#   if data.success
#     console.log('success!')
#   else
#     console.log('failure!')

$(document).ajaxSuccess (e, data, status, xhr) ->
  if xhr.registration_success
    $('#new_user').hide()
    $('#sign-up-header').after ->
      """
      <p class="sign-up-message">Welcome! You have signed up successfully. Sign in to get started!</p>
      """
  else if xhr.registration_success == false
    for message in xhr.data
      do (message) ->
        $('body').prepend("""
          <p>#{message}</p>
        """)
  else if xhr.session_success
    console.log 'Success!'
    window.location = 'http://localhost:3000/count'
  else if xhr.session_success == false
    $('body').prepend("""
      <p>#{xhr.error}</p>
    """)

