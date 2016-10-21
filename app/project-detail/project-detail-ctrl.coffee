angular.module('app').controller 'ProjectDetailCtrl',
  ['$routeParams', '$location', 'portfolioData', ($routeParams, $location, portfolioData) ->
      return new class ProjectDetailCtrl
        constructor: () ->
          @project = portfolioData.getProject($routeParams.projectId)
          if $routeParams.nodeTitle?
            $location.hash('anchor' + $routeParams.nodeTitle)
            $location.replace()



]
