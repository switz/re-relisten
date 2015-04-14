# Application routes.
module.exports = (match) ->
  match '', 'home#index'
  match 'about', 'misc#about'
  match 'live', 'misc#live'
  match 'today', 'misc#today'
  match ':slug', 'home#artist'
  match ':slug/:year', 'home#year'
  match ':slug/:year/:month/:day', 'home#show'
  match ':slug/:year/:month/:day/:slug', 'home#song'
