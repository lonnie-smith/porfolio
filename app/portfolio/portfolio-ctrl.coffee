angular.module('app').controller 'PortfolioCtrl', ['portfolioData'
  (portfolioData) ->
    return new class PortfolioCtrl
      constructor: () ->
        @sortMode = 'project'
        @projects = portfolioData.projects
        @roles = portfolioData.roles

      chgSort: (sortMode) =>
        return if sortMode is @sortMode
        @sortMode = sortMode

]
