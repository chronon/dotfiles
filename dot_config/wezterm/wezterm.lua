local utils = require('utils')
local config = require('config')
local colorschemes = require('colorschemes')

require('startup')

config = utils.merge(config, colorschemes)

return config
