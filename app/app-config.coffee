angular.module('app').config ['$routeProvider', ($routeProvider) ->

  # Configure routes
  $routeProvider.when '/', {
    templateUrl: 'front-page/front-page.html',
    controller: 'FrontPageCtrl'
    controllerAs: 'ctrl'
  }

  $routeProvider.when '/portfolio/:sortType', {
    templateUrl: 'portfolio/portfolio.html',
    controller: 'PortfolioCtrl'
    controllerAs: 'ctrl'
    resolve: {
      projectStore: projectStoreRouteResolver
      roleStore: roleStoreRouteResolver
    }
  }

  $routeProvider.when '/portfolio', {
    templateUrl: 'portfolio/portfolio.html',
    controller: 'PortfolioCtrl'
    controllerAs: 'ctrl'
    resolve: {
      projectStore: projectStoreRouteResolver
      roleStore: roleStoreRouteResolver
    }
  }

  $routeProvider.when '/project-detail/:projectId/:nodeTitle?', {
    templateUrl: 'project-detail/project-detail.html',
    controller: 'ProjectDetailCtrl'
    controllerAs: 'ctrl'
    resolve: {
      projectStore: projectStoreRouteResolver
      roleStore: roleStoreRouteResolver
    }
  }

  $routeProvider.when '/role-detail/:roleId/:projectTitle?', {
    templateUrl: 'role-detail/role-detail.html',
    controller: 'RoleDetailCtrl'
    controllerAs: 'ctrl'
    resolve: {
      projectStore: projectStoreRouteResolver
      roleStore: roleStoreRouteResolver
    }
  }

  $routeProvider.when '/resume', {
    templateUrl: 'resume/resume.html',
    controller: 'ResumeCtrl'
    controllerAs: 'ctrl'
  }

  $routeProvider.when '/contact', {
    templateUrl: 'front-page/front-page.html',
    controller: 'FrontPageCtrl'
    controllerAs: 'ctrl'
  }

  $routeProvider.otherwise {redirectTo: '/'}

]

# Route resolve promises
projectStoreRouteResolver = (projectStore) ->
  return projectStore.load()
projectStoreRouteResolver.$inject = ['projectStore']

roleStoreRouteResolver = (roleStore) ->
  return roleStore.load()
roleStoreRouteResolver.$inject = ['roleStore']
