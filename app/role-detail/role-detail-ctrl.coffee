angular.module('app').controller 'RoleDetailCtrl', ['$routeParams', '$location', 'portfolioData', ($routeParams, $location, portfolioData) ->
    return new class RoleDetailCtrl
      constructor: () ->
        @role = portfolioData.getRole($routeParams.roleId)
        if $routeParams.projectTitle?
          for project in @role.projects
            if $routeParams.projectTitle is project.title
              $location.hash('anchor' + project.title)
              $location.replace()
              break

]
