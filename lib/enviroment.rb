## listing all dependencies for my project.

require "pry"
require "httparty" # for interacting with my api
require "json" ## parsing data from api to json

require_relative "./superhero/cli"
require_relative "./superhero/api"
require_relative "./superhero/hero"