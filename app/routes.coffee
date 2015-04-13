# Application routes.
module.exports = (match) ->
  match '', 'home#index'
  match ':slug', 'home#artist'
  match ':slug/:year', 'home#year'
  match ':slug/:year/:month/:day', 'home#show'
