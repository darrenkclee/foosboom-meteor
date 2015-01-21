# server/publications.coffee

Meteor.publish 'games', -> Games.find()
