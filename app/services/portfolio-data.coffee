angular.module('app').factory 'portfolioData', [() ->

  roles = [
    {
      role: "Programmer"
      title: "Front-end Web Developer"
      workKind: "front-end development"
      shortBlurb: "I’m a front-end web developer with a focus on building feature-rich single page apps using <strong>Angular</strong> and <strong>Polymer</strong>."
      text: """
        <p>My bread-and-butter is single-page web applications; special areas of interest are <strong>Angular</strong> and <strong>Polymer</strong>, with a sideline in automated testing. I use <strong>Coffeescript</strong> a lot, because I love how  expressive and succinct it is. I use <strong>Sass</strong> quite a bit too, mostly in larger projects where variables, mixins, and functions are more useful. <strong>Git</strong>, <strong>Bower</strong>, and <strong>Grunt</strong> are parts of my toolchain I use daily.</p>
        <p>I’m no unicorn, but I am a well-rounded generalist—</p>
        <ul>
          <li>I have experience <a href="#/role-detail/Designer">designing products</a> and <a href="#/Product%20Manager">managing their development</a>.</li>
          <li>In days of yore, I used to write quite a bit of <strong>Python</strong>, and I once wrote a good-sized <strong>Rails</strong> app that never saw the light of day. In school, I did a bunch of projects in <strong>Java</strong> and <strong>C</strong>, and I wrote my very first web app in Visual Basic / SQL Server / ASP Classic. I can write a <strong>SQL</strong> query, design a database schema, and read a UML diagram.</li>
          <li>I can provision and secure a Linux virtual server, configure NGINX or Apache, set up cron jobs and open-source databases, and do other general <strong>sysadmin work</strong>.</li>
          <li>In my current job, I spend a lot of my time coordinating the work of developers at different companies who are building software that needs to interoperate. I have hard-won experience <strong>writing technical specs</strong>, <strong>designing APIs</strong>, <strong>defining scopes of work</strong>, <strong>troubleshooting</strong> Other People’s Code, and developing <strong>QA testing</strong> protocols.</li>
        </ul>
      """
    }
    {
      role: "Designer"
      title: "Designer"
      workKind: "design"
      thumbnail: null
      text: """
        - Comfortable with typography and layout, but work I'm proudest of was done in collaboration with a visual artist.
        - Strength as a designer comes with my facility with code: I can move quickly from design sketches to working prototypes -- if I need a quick functional prototype, I'll turn to CodePen instead of a prototyping tool, and in particular I try to avoid glossy Photoshop mock-ups.
        - hard-won experience in consensus-building; good at breaking down design decisions for non-technical stakeholders, walking them through various alternatives, and presenting a case for what I think is best for their needs. Good at talking to people and figuring out what it is they want/need; gathering and prioritizing requiements (we don't have in-house business analysts).
        - due to peculiarities of industry, user research is almost exclusively limited to usability testing: I don't have much experience with market research, personas, or many of the other accoutrements of UX design.
        - Projects are pretty unusual -- we have an extremely clear sense of what tasks a user needs to perform -- User’s experience limited to about an hour -- little tolerance for experimentation -- cross-section of the population; safest to assume that the only thing users have in common is their age; in particular, users have radically varying levels of technological literacy, and we have to assume that they may have little-to-no exposure to even fairly common UI elements.
      """
    }
    {
      role: "Product Manager"
      title: "Product Manager"
      workKind: "product management"
      thumbnail: null
      text: "foobar"
    }
    {
      role: "Content Developer"
      title: "Content Developer"
      workKind: "content development"
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
        HAL (HTML Assessment Library) is a specialized web application framework I built. It facilitates rapid development of assessment content while helping us provide a consistent, highly-polished look-and-feel across a range of products.
      """
      intro: """
        <p>My team has been working on computer-based assessments since 2010. As our work grew and diversified, we found ourselves struggling to create a visually and behaviorally consistent user interface across dozens of different products, and we often wound up re-inventing and re-implementing similar interactions.</p>
        <p>I designed and built a series of reusable web components that includes both well-tested UI widgets for the most frequently occurring user interactions and a set of modules that handle data processing and event logging in the background.</p>
        <p>Together, these components form the “HTML Assessment Library” (HAL), a custom application development framework which has <strong>cut development time by about 80%</strong>, created a unique and consistent look-and-feel across products that use the framework, and yet still has enough flexibility and configurability to allow us to create new, ad-hoc designs when we need to.</p>
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
      technologies: "Angular"
      shortBlurb: """
        I designed and built this site to give our book club a better way to sort and filter our ever-growing list of cultural recommendations as well as keeping track of montly meetings. This is an ongoing exericse in creating a dynamic, data-backed site with the absolute bare minimum in terms of back-end.
      """
      intro: """
      <p>Our book club swaps “cultural recommendations” every month—books, movies, restaurants, and other stuff we like. This is a great way to discover new things—but who can remember what was recommended yesterday, let alone a couple of months later when you’re looking for a new TV show to watch.</p>

      <p>So I designed this website to provide sortable lists of cultural recommendations, and to provide information about books for upcoming meetings. The site is updated by editing a couple of Google spreadsheets, which saves the hassle of authentication or building a tedious CRUD interface.</p>

      <p>See the live site at <a href="http://latchkeybook.club" target="_blank">latchkeybook.club</a>, or check out the code on <a href="https://github.com/lonnie-smith/latchkey-book-club" target="_blank">GitHub</a>.
      """
      nodes: [
        {
          title: "Site Design"
          role: roleIdx["Designer"]
          workKind: "Design"
          templateUrl: "content-html/latchkey-design.html"
        }
        {
          title: "Coding"
          role: roleIdx["Programmer"]
          workKind: "front-end development"
          templateUrl: "content-html/latchkey-coding.html"
        }
      ]
    }


    {
      title: "eReader"
      date: "2014"
      thumbnail: "img/ereader-thumb.png"
      technologies: "jQuery, RequireJS"
      shortBlurb: "I worked on the early phases of product design, then wrote production code for this specialized ebook-like reading application that runs inside our browser-based assessment platform."
      intro: """
        <p>Our task was to create an ebook-style reading app inside a larger web application. Students would use the app to read a “passage”—a text a few pages long—before answering reading comprehension questions.</p>

        <p>I worked on the eReader’s initial design in 2014, and wrote production code in 2015. I’m the lead developer for the eReader, so I’m responsible for maintenance and meeting new feature requests as part of this product’s ongoing development.</p>
      """
      nodes: [
        {
          title: "Interface design"
          role: roleIdx["Designer"]
          workKind: "design"
          templateUrl: "content-html/ereader-design.html"
        }

        {
          title: "Coding"
          role: roleIdx["Programmer"]
          workKind: "front-end development"
          templateUrl: "content-html/ereader-coding.html"
        }
      ]
    }

    {
      title: "Client Review Sites"
      date: "2013"
      thumbnail: "img/erp-thumb.png"
      technologies: "Angular"
      shortBlurb: "We needed a way to present our client with test questions and their associated metadata for review. Earlier attempts at building a database-backed web service foundered on the rocks of legacy systems integration, so I built a lightweight solution that generates static websites from user-supplied configuration: no database required."
      intro: """
        <p>An important part of working with our client is circulating “review packages”—binders of printed test questions—to expert committees for review. For computer-based questions, the intended equivalent of these packages was a massive, enterprise-grade question tracking system.</p>
        <p>With deadlines looming, and the Enterprise Solution still in the planning phase, I had about three weeks to put something together that would get the job done.</p>
        <p>The solution I came up with was a static site generator: package authors create static config files which are served alongside a client-side Angular app that displays the package content and allows reviewers to sort, filter, and page through the package.</p>
        <p>This is a small subset of the features intended for the Enterprise Solution, but it was on time and worked well enough that it became a permanent solution instead of a temporary stopgap.</p>
      """
      nodes: [
        {
          title: "Site design"
          role: roleIdx["Designer"]
          workKind: "design"
          templateUrl: "content-html/review-sites-design.html"
        }
        {
          title: "Coding"
          role: roleIdx["Programmer"]
          workKind: "front-end development"
          templateUrl: "content-html/review-sites-coding.html"
        }
      ]
    }

    # {
    #   title: "Scenario-based Assessment Modules"
    #   date: "2010-present"
    #   thumbnail: "img/sbt-thumb.png"
    #   shortBlurb: """
    #     We develop 30-minute immersive online activities in which K-12 students demonstrate real-world skills by tackling realistic problems.
    #   """
    #   technologies: "Polymer"
    #   intro: """
    #     <p>We develop scenario-based tasks on behalf of the U.S. Department of Education for the National Assessment of Educational Progress.</p>

    #     <p>There are two basic goals motivating our work on scenario-based modules. First, we want to be able to directly measure <em>complex, real-world skills</em> in a way that simply isn’t possible with traditional standardized test forms. Second, we also aim to <em>improve student engagement</em> through activities that are more fun and authentic than filling in a typical standardized test form.</p>

    #     <p>The final products are diverse in terms of content and interface designs, but most of our modules are 30-minute character- or storyline-driven experiences in which students, for example, demonstrate their ability to apply the scientific method by working on a science project, show their critical reading skills by researching a community issue, or use mathematical modeling skills to find the optimal solution to a practical problem.</p>

    #     <p>Over the last 6 or 7 years, I’ve filled a lot of different product development roles. As our team has grown, I’ve taken on progressively more specialized roles; currently, I provide technical leadership [LINK] for the project and write the software [LINK] for about a third of the content currently in production.</p>
    #   """
    #   nodes: [
    #     {
    #       title: "Content Development"
    #       role: roleIdx["Content Developer"]
    #       img: ""
    #       text: """
    #         TEL -- 2010 - 2012.

    #         - start by soliciting ideas for a new module from the team, then choosing the best concepts and putting together a short 2-page concept write-up.
    #         - From there, we'd write up a storyboard for the module. This was very much a group effort; usually I'd work with 1 or 2 other content developers and we'd trade off writing an editing duties in an interative process.
    #         - my responsibility to shepherd this through a complex review processes involving panels of subject-matter experts, our client, and a couple of other stakeholder groups. My job was to solicit and address stakeholder concerns, making sure the content met the client's expectations.
    #       """
    #     }
    #     {
    #       title: "Product Management"
    #       role: roleIdx["Product Manager"]
    #       img: null
    #       text: """
    #         I led a team consisting of 8 content developers, 3 cognitive psychologists, 2 UI designers, and 7 software development subcontractors.
    #       """
    #     }
    #     {
    #       title: "Front-end Design"
    #       role: roleIdx["Designer"]
    #       img: ""
    #       text: """
    #         Our design process was a collaboration between in-house UI designers, and the artists and developers we hired as software development subcontractors.

    #         We tried several approaches before landing on PowerPoint storyboards as a reasonable trade-off between being easy for non-technical staff and stakeholders to read and edit, and providing a clear enough representation for our software subcontractors.

    #         We’d usually start working out the interface design mid-way into the content development process, finding ways to gin up ...

    #         - navigation schemes
    #         - some modules heavy on 3D animated illustrations, which we'd have to work out separately.
    #         - Controls for simulations


    #       """
    #     }

    #     {
    #       title: "Software design and implementation"
    #       role: roleIdx["Programmer"]
    #       img: null
    #       text: """
    #         - Using Polymer libraries, reduced SBT development cost by 80%
    #         - built platform tools (maybe goes w/ technical lead?)
    #         - Set up QA process
    #         - Guidance on platform transition
    #         - Write functional specifications for API, user interface
    #         - Write data schema/requirements
    #         - Train/mentor new programming staff.
    #         - from WP: "dictate technical standards, including coding standards, tools, or platforms"--design methodology for the code"
    #         -
    #       """
    #     }

    #   ]
    # }


  ]

  projectIdx = {}
  (projectIdx[p.title] = p) for p in projects

  for role in roles
    role.projects = []
    for project in projects
      for node in project.nodes
        if node.role is role
          role.projects.push(project)
          break

  return {
    projects: projects
    roles: roles
    getProject: (projectTitle) ->
      return projectIdx[projectTitle]
    getRole: (roleTitle) ->
      return roleIdx[roleTitle]

  }

]
