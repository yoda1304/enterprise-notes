This is a sample project built in Ruby on Rails (with a SQL database and a little bit of JavaScript to handle buttonless entry for search) for my Enterprise Web Development class. It models a group note-taking application, where users are able to add notes which are associated with classes, each with appropriate CRUD operations implemented.  It also features a search, pulling up records with matching titles or descriptions, or users with matching names. Additionally, search results are sorted to highlight results from notes or users in the same courses as the current user.

The main point of the app is to showcase implementations of three design patterns which are valuable in a social web application: Authentication, Immediate Immersion, and Gamification.

-It features basic Authentication and Authorization, with users being able to sign up and log in, with some features only available to logged in users. This lets the app both secure each user's data, and uses sessions to provide additional value through personalization.

-Immediate Immersion allows the user to have a taste of the value the app can provide them before requiring them to sign up, so as not to bounce users unnecessarily before they ever even join the system. To do this, the app shows on the home page the last five notes posted to an un-logged-in user, with links to see more content. However, if they click any of the links, they will be prompted to sign up to proceed.

-Gamification helps get users to do things that are valuable to both them and the developer, but don't have any sort of immediate gratification associated with them. Adding game elements to an app is a cheap way to incentivize long term benefits. In the app, each user has a set of badges that track their progress when doing certain tasks (logging in, adding courses to their profile), and give them new badges when they complete certain milestones.

In order to run the app, you'll need Rails 6.0.3 and Ruby 2.5.1. by running 
>bundle install
you'll get the gems you need to run, then 
>rails db:migrate
to initialize the database, then run a server to see it go. As a side note, as the application is meant as a proof of concept for web dev design patterns, the frontend design is very, very barebones. Additionally, the database implementation of badges is janky, and in a real environment I would have badges in their own table, with a join table between users and badges to kill the many-to-many and allow flexible editing of current badges.
