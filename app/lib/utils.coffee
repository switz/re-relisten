# Application-specific utilities
# ------------------------------

# Delegate to Chaplin’s utils module.
utils = Chaplin.utils.beget Chaplin.utils

_.extend utils,
  addZero: (num) ->
    return String("0" + num) if String(num).length < 2
    String num

# Prevent creating new properties and stuff.
Object.seal? utils

module.exports = utils
