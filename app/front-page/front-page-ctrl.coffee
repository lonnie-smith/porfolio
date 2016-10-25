angular.module('app').controller('FrontPageCtrl',
  ['$location', ($location) ->
    return new class FrontPageCtrl
      constructor: () ->
        if $location.path().indexOf('/contact') is 0
          $location.hash('contact')
          $location.replace()

])
