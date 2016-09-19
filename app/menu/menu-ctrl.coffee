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

        @setActiveLink()
        $scope.$on('$locationChangeSuccess', ()=>@setActiveLink())

        @toggleMenu()

        # hide the menu when anything not a child of #menu is clicked.
        document.addEventListener('click', (evt) =>
          @menuNode ||= document.querySelector('#menu')
          console.debug evt.target, @menuOpen, !@menuNode.contains(evt.target)
          if @menuOpen and !@menuNode.contains(evt.target)
            console.debug('docu click')
            @toggleMenu()
            $scope.$apply()
          )
        # document.addEventListener('click', ()=> console.debug('document click'))

      setActiveLink: () =>
        @activeLinks ||= {}
        @activeLinks[k] = false for k, v of @activeLinks
        page = $location.path().slice(1).split('/')[0]
        page = 'about' if page is ''
        @activeLinks[page] = true
        @currentLinkText = @pageTextMap[page]
        @toggleMenu() if @menuOpen

      toggleMenu: (evt) =>
        if @menuOpen?
          @menuOpen = !@menuOpen
        else
          @menuOpen = false
        console.debug 'toggle menu', @menuOpen


]
