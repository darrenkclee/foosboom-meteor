// Generated by CoffeeScript 1.8.0
Template.teams.helpers({
  teams: function() {
    return Teams.find();
  },
  creating: function() {
    return Session.get('creating');
  }
});

Template.teams.events({
  "click .create": function(e, tpl) {
    e.preventDefault();
    return Session.set('creating', true);
  },
  "submit form.form-create": function(e, tpl) {
    var team;
    e.preventDefault();
    team = {
      name: tpl.$("input[name='name']").val()
    };
    if (team.name.length) {
      Teams.insert(team);
      return Session.set('creating', false);
    }
  },
  "click .cancel": function(e, tpl) {
    e.preventDefault();
    return Session.set('creating', false);
  }
});
