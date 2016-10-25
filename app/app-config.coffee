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
  }

  $routeProvider.when '/portfolio', {
    templateUrl: 'portfolio/portfolio.html',
    controller: 'PortfolioCtrl'
    controllerAs: 'ctrl'
  }

  $routeProvider.when '/project-detail/:projectId/:nodeTitle?', {
    templateUrl: 'project-detail/project-detail.html',
    controller: 'ProjectDetailCtrl'
    controllerAs: 'ctrl'
  }

  $routeProvider.when '/role-detail/:roleId/:projectTitle?', {
    templateUrl: 'role-detail/role-detail.html',
    controller: 'RoleDetailCtrl'
    controllerAs: 'ctrl'
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

angular.module('app').run ['$window', '$rootScope', '$location', ($window, $rootScope, $location) ->
  if $window.ga?
    $window.ga('create', 'UA-86339108-1', 'auto')
    $rootScope.$on '$locationChangeSuccess', () ->
      $window.ga('send', 'pageView', $location.path())
]