local utils = require("utils")
local config = require("config")
local keys = require("keys")
local colorschemes = require("colorschemes")

require("startup")

config = utils.merge_all(config, keys, colorschemes)

return config
