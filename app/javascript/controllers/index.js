// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import GeolocationController from "./geolocation_controller"
application.register("geolocation", GeolocationController)

import MapController from "./map_controller"
application.register("map", MapController)

import SearchController from "./search_controller"
application.register("search", SearchController)

import ToggleController from "./toggle_controller"
application.register("toggle", ToggleController)
