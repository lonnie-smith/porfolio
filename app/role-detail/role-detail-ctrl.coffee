angular.module('app').controller 'RoleDetailCtrl', ['$routeParams', '$location', 'portfolioData', ($routeParams, $location, portfolioData) ->
    return new class RoleDetailCtrl
      constructor: () ->
        @role = portfolioData.getRole($routeParams.roleId)
        # TODO: scroll down to relevant project
        # if $routeParams.projectTitle?


]
