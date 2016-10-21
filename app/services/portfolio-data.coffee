angular.module('app').factory 'portfolioData', [() ->

  roles = [
    {
      role: "Programmer"
      workKind: "front-end development"
      thumbnail: null
      text: "foobar"
    }
    {
      role: "Designer"
      workKind: "design"
      thumbnail: null
      text: "foobar"
    }
    {
      role: "Content Developer"
      workKind: "content development"
      thumbnail: null
      text: "foobar"
    }
    {
      role: "Product Manager"
      workKind: "product management"
      thumbnail: null
      text: "foobar"
    }
  ]

  roleIdx = {}
  (roleIdx[r.role] = r) for r in roles

  projects = [
    {
      title: "Web Component Application Framework"
      date: "2014-present"
      thumbnail: "img/hal-thumb.png"
      technologies: "Polymer"
      shortBlurb: """
        HAL (HTML Assessment Library) is a custom web application framework I made. It uses web components to shorten development time and helps us provide a consistent, highly-polished look-and-feel across a range of products.
      """
      intro: """
        <p>My team has been working on computer-based assessments since 2010. As our work grew and diversified, we found ourselves struggling to create a visually and behaviorally consistent user interface across dozens of different products, and we often wound up re-inventing and re-implementing similar interactions.</p>
        <p>This is a sweet spot for Web Components. I designed and built a series of components that includes both well-tested UI widgets for the most frequently occurring user interactions, and a set of modules that handle data processing and event logging in the background.</p>
        <p>Together, these components form a custom application development framework which has <strong>cut development time by about 80%</strong>, created a unique and consistent look-and-feel across products that use the framework, and yet still has enough flexibility and configurability to allow us to create new, ad-hoc designs when we need to.</p>
      """
      nodes: [
        {
          title: "Interface Design"
          role: roleIdx["Designer"]
          templateUrl: "content-html/components-designer.html"
        }

        {
          title: "Software Design"
          role: roleIdx["Programmer"]
          templateUrl: "content-html/components-software-design.html"
        }

        {
          title: "Coding"
          role: roleIdx["Programmer"]
          templateUrl: "content-html/components-coding.html"
        }

      ]
    }
    {
      title: "Latchkey Book Club"
      date: "2016"
      thumbnail: "img/latchkey-thumb.png"
      technologies: "Angular.js"
      shortBlurb: """
        I designed and built this site to give our book club a better way to keep up with our ever-growing list of cultural recommendations. This is an ongoing exericse in creating a dynamic, data-backed site with the absolute bare minimum in terms of back-end.
      """
      intro: """
      <p>Our book club swaps “cultural recommendations” every month—books, movies, restaurants, and other stuff we like. This is a great way to discover new things—but who can remember what was recommended yesterday, let alone a couple of months later when you’re looking for a new TV show to watch.</p>

      <p>So I designed this website to provide sortable lists of cultural recommendations, and to provide information about books for upcoming meetings. The site is updated by editing a couple of Google spreadsheets, which saves the hassle of authentication or building a tedious CRUD interface.</p>

      <p>See the live site at <a href="http://latchkeybook.club" target="_blank">latchkeybook.club</a>, or check out the code on <a href="https://github.com/lonnie-smith/latchkey-book-club" target="_blank>GitHub</a>.
      """
      nodes: [
        {
          title: "Design"
          role: roleIdx["Designer"]
          workKind: "Design"
          img: null
          text: """
            <p>The content and interactions are pretty simple for this site, so a <em>mobile-first responsive design</em> made total sense. I love the roccoco, slightly stuffy flourishes in 18<sup>th</sup>-century book design, so I took the title page/frontispiece book layout as the starting point for the visual design.</p>

            <p>For a smaller project like this, I don’t really bother with wireframes—just a little sketching to help me figure out how I want things to fit together, and then jump straight to coding.</p>
          """
        }
        {
          title: "Code"
          role: roleIdx["Programmer"]
          img: null
          text: """
            <p>This is a straightforward Angular 1.5 site with a couple of different routes. I try to follow John Papa’s magnificent <a href="https://github.com/johnpapa/angular-styleguide/blob/master/a1/README.md" target="_blank">Angular Style Guide</a> pretty closely.</p>
            <p>The data management techniques are interesting: I wrote an Angular service that pulls data from a Google spreadsheet, and another which queries the Google Books API to provide book data and book cover thumbnails. When I have a spare weekend, I’d like to move this functionality out of the browser and into a Node script which pre-packages the data in static JSON files so the app doesn’t have to run these queries every time it loads.</p>
            <p>Like most of my projects, the Latchkey site uses <a href="http://coffeescript.org/" target="_blank">CoffeeScript</a> and <a href="http://sass-lang.com/" target="_blank">SASS</a>—partly because I just like whitespace delimited languages, but mostly because I find SASS variables and CoffeeScript’s looping and object syntax so useful that they’re worth the inconvenience.</p>
            <p>You can check out the code on <a href="https://github.com/lonnie-smith/latchkey-book-club" target="_blank">GitHub</a>.
          """
        }
      ]
    }

    {
      title: "Scenario-based Assessment Modules"
      date: "2010-present"
      thumbnail: "img/sbt-thumb.png"
      shortBlurb: """
        We develop 30-minute immersive online activities in which K-12 students demonstrate real-world skills by tackling realistic problems.
      """
      technologies: "Unity3D"
      intro: """
        <p>We develop scenario-based tasks on behalf of the U.S. Department of Education for the National Assessment of Educational Progress.</p>

        <p>There are two basic goals motivating our work on scenario-based modules. First, we want to be able to directly measure <em>complex, real-world skills</em> in a way that simply isn’t possible with traditional standardized test forms. Second, we also aim to <em>improve student engagement</em> through activities that are more fun and authentic than filling in a typical standardized test form.</p>

        <p>The final products are diverse in terms of content and interface designs, but most of our modules are 30-minute character- or storyline-driven experiences in which students, for example, demonstrate their ability to apply the scientific method by working on a science project, show their critical reading skills by researching a community issue, or use mathematical modeling skills to find the optimal solution to a practical problem.</p>

        <p>Over the last 6 or 7 years, I’ve filled a lot of different product development roles. As our team has grown, I’ve taken on progressively more specialized roles; currently, I provide technical leadership [LINK] for the project and write the software [LINK] for about a third of the content currently in production.</p>
      """
      nodes: [
        {
          title: "Content Development"
          role: roleIdx["Content Developer"]
          img: ""
          text: """
            TEL -- 2010 - 2012.

            - start by soliciting ideas for a new module from the team, then choosing the best concepts and putting together a short 2-page concept write-up.
            - From there, we'd write up a storyboard for the module. This was very much a group effort; usually I'd work with 1 or 2 other content developers and we'd trade off writing an editing duties in an interative process.
            - my responsibility to shepherd this through a complex review processes involving panels of subject-matter experts, our client, and a couple of other stakeholder groups. My job was to solicit and address stakeholder concerns, making sure the content met the client's expectations.
          """
        }
        {
          title: "Product Management"
          role: roleIdx["Product Manager"]
          img: null
          text: """
            I led a team consisting of 8 content developers, 3 cognitive psychologists, 2 UI designers, and 7 software development subcontractors.
          """
        }
        {
          title: "Front-end Design"
          role: roleIdx["Designer"]
          img: ""
          text: """
            Our design process was a collaboration between in-house UI designers, and the artists and developers we hired as software development subcontractors.

            We tried several approaches before landing on PowerPoint storyboards as a reasonable trade-off between being easy for non-technical staff and stakeholders to read and edit, and providing a clear enough representation for our software subcontractors.

            We’d usually start working out the interface design mid-way into the content development process, finding ways to gin up ...

            - navigation schemes
            - some modules heavy on 3D animated illustrations, which we'd have to work out separately.
            - Controls for simulations


          """
        }

        {
          title: "Software design and implementation"
          role: roleIdx["Programmer"]
          img: null
          text: """
            - Using Polymer libraries, reduced SBT development cost by 80%
            - built platform tools (maybe goes w/ technical lead?)
            - Set up QA process
            - Guidance on platform transition
            - Write functional specifications for API, user interface
            - Write data schema/requirements
            - Train/mentor new programming staff.
            - from WP: "dictate technical standards, including coding standards, tools, or platforms"--design methodology for the code"
            -
          """
        }

      ]
    }

    {
      title: "eReader"
      date: "2014"
      thumbnail: "img/ereader-thumb.png"
      technologies: "jQuery"
      shortBlurb: "We needed to present print magazine articles, web pages, poems, and other reading test content inside a browser-based assessment platform—while preserving as much of the original content’s unique character and layout as possible. I worked on the early phases of product design, then wrote the production code."
      intro: "foobar"
      nodes: [
        {
          title: "Interface designer"
          role: roleIdx["Designer"]
          img: null
          text: "foobar"
        }

        {
          title: "Software design and implementation"
          role: roleIdx["Programmer"]
          img: null
          text: """
           - Since passage layouts are so idiosyncratic—literally, no two are alike—we couldn’t really build a CMS or authoring system. Instead, we lay out each passage by hand as an HTML page.
           - To provide page-based navigation and other common functionality like dialog boxes, popovers, and interactions with question content, I wrote a series of JavaScript modules (AMD/RequireJS).
           - Passage authors mark up their HTML with special class names to identify key features—say, the pages in a magazine article or the content that should appear in a popover. The correct modules are loaded based on the presence of elements in the DOM with these class names, and each module uses jQuery to manipulate the DOM and append user controls.
           - I documented and implemented a simple JavaScript API that facilitates interoperation between the passage and its host environment. This allows, for example, users to navigate to the portion of a passage that is relevant to a particular question at the press of a button.
          """
        }
      ]
    }

    {
      title: "Client Review Package Sites"
      date: "2013"
      thumbnail: "img/erp-thumb.png"
      technologies: "Angular.js"
      shortBlurb: "We needed a way to bring “packages” of computer-based test content to client reviews—but had no time or budget to develop a database-backed service to support it. The solution was a pair of Angular.js applications I built: one generates a static data file from user-imported content and configuration metadata; the other displays the package, letting reviewers browse, sort, and filter the content stored in the data file."
      intro: "foobar"
      nodes: [
        {
          title: "foobar"
          role: roleIdx["Designer"]
          img: null
          text: "foobar"
        }
        {
          title: "foobar"
          role: roleIdx["Programmer"]
          img: null
          text: "foobar"
        }
      ]
    }
  ]

  projectIdx = {}
  (projectIdx[p.title] = p) for p in projects



  return {
    projects: projects
    roles: roles
    getProject: (projectTitle) ->
      return projectIdx[projectTitle]
    getRole: (roleTitle) ->
      return roleIdx[roleTitle]

  }

]
