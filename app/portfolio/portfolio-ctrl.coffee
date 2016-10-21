angular.module('app').controller 'PortfolioCtrl', ['$location', '$routeParams', 'portfolioData'
  ($location, $routeParams, portfolioData) ->
    return new class PortfolioCtrl
      constructor: () ->
        unless $routeParams.sortType in ['projects', 'roles']
          $location.path "/portfolio/projects"
          $location.replace()
          return
        @sortMode = 'project'
        @projects = portfolioData.projects
        @roles = portfolioData.roles
        @sortMode = $routeParams.sortType

      gotoProject: (projectTitle) ->
        $location.url "/project-detail/#{projectTitle}"

]
