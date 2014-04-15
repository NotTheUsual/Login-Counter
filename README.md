# Login Counter

This was the test for the weekend of Week 9 of Makers Academy. It was meant to test our abilities with Rails and AJAX. The app lets you login, where it'll tell you how many times you've logged in. To quote the spec, "Not terribly useful but good for practice".

## Spec

It will have the following functionality:
- The homepage will explain what the app does and have login and sign up forms
- The sign up form will be submitted via ajax using jQuery
- If the sign up is successful, it'll show the corresponding message (as part of the page)
- If the sign up is not successful (empty username or password, duplicate username), it will show a message as well
- The user should be able to log in after it has signed up. A successful login will redirect to another page that will show the count of how many times the user has logged in
- An unsuccessful login will show an error message without reloading the page
- This page will have a log out button or link. If the user clicks it, it will show a message saying goodbye
- If a user is already logged in, the home page should automatically redirect to the logged in page

Implementation:
- Please have acceptance tests for the app. Write them first
- Deploy to heroku. Make sure it works there (you'll need to add necessary add ons)
- Validate your HTML with http://validator.w3.org/. Try to fix the errors it may show
- Validate your CSS with http://jigsaw.w3.org/css-validator/. Try to fix the errors it may show
- Validate your JS with http://www.jslint.com/. Try to fix the errors it may show
- Finally, make your app look good. It's just a couple of pages with the most basic functionality. Make an attempt at web design but don't overcomplicate it

And I'm pretty sure the app does all of this now (we still haven't received any feedback...). There's a slight issue wit HTML validation (the two forms share an ID) but I ran out of time to change it, and everything else is in order.