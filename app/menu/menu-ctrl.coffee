angular.module('app').controller 'MenuCtrl', [
  '$location', '$scope', '$document', ($location, $scope, $document) ->
    return new class MenuCtrl
      constructor: () ->
        @pageTextMap = {
          about: 'About Me'
          portfolio: 'Portfolio'
          resume: 'Resume'
          contact: 'Contact'
        }

        @routePageMap = {
          'about': 'about'
          'portfolio': 'portfolio'
          'project-detail': 'portfolio'
          'role-detail': 'portfolio'
          'resume': 'resume'
          'contact': 'contact'
        }

        @setActiveLink()
        $scope.$on('$locationChangeSuccess', ()=>@setActiveLink())

        @toggleMenu()

        # hide the menu when anything not a child of #menu is clicked.
        document.addEventListener('click', (evt) =>
          @menuNode ||= document.querySelector('#menu')
          if @menuOpen and !@menuNode.contains(evt.target)
            @toggleMenu()
            $scope.$apply()
          )

      setActiveLink: () =>
        @activeLinks ||= {}
        @activeLinks[k] = false for k, v of @activeLinks
        route = $location.path().slice(1).split('/')[0]
        if route is ''
          page = 'about'
        else
          page = @routePageMap[route]
        @activeLinks[page] = true
        @currentLinkText = @pageTextMap[page]
        @toggleMenu() if @menuOpen

      toggleMenu: (evt) =>
        if @menuOpen?
          @menuOpen = !@menuOpen
        else
          @menuOpen = false


]
