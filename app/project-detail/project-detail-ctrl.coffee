angular.module('app').controller 'ProjectDetailCtrl',
  ['$routeParams', '$location', 'portfolioData', ($routeParams, $location, portfolioData) ->
      return new class ProjectDetailCtrl
        constructor: () ->
          @project = portfolioData.getProject($routeParams.projectId)
          if $routeParams.nodeTitle?
            for node in @project.nodes
              if $routeParams.nodeTitle in [node.title, node.role.role]
                $location.hash('anchor' + node.title)
                $location.replace()
                break


]
