<!DOCTYPE html>
<html class="" lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<link href="https://assets.gitlab-static.net" rel="dns-prefetch">
<link crossorigin="" href="https://assets.gitlab-static.net" rel="preconnnect">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content=".config/i3/battery_warning.sh · master · gheorghe / dotfiles" property="og:title">
<meta content="My dotfiles. ArchLinux FTW!" property="og:description">
<meta content="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://gitlab.com/gun1x/dotfiles/blob/master/.config/i3/battery_warning.sh" property="og:url">
<meta content="summary" property="twitter:card">
<meta content=".config/i3/battery_warning.sh · master · gheorghe / dotfiles" property="twitter:title">
<meta content="My dotfiles. ArchLinux FTW!" property="twitter:description">
<meta content="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>.config/i3/battery_warning.sh · master · gheorghe / dotfiles · GitLab</title>
<meta content="My dotfiles. ArchLinux FTW!" name="description">
<link rel="shortcut icon" type="image/png" href="https://gitlab.com/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" id="favicon" data-original-href="https://gitlab.com/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" />
<link rel="stylesheet" media="all" href="https://assets.gitlab-static.net/assets/application-0353aa5e37cc69c4f5a1b03307f06eb50873ac823ade8ed661be043dbb0d13ce.css" />
<link rel="stylesheet" media="print" href="https://assets.gitlab-static.net/assets/print-c8ff536271f8974b8a9a5f75c0ca25d2b8c1dceb4cff3c01d1603862a0bdcbfc.css" />



<script>
//<![CDATA[
window.gon={};gon.api_version="v4";gon.default_avatar_url="https://assets.gitlab-static.net/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.asset_host="https://assets.gitlab-static.net";gon.webpack_public_path="https://assets.gitlab-static.net/assets/webpack/";gon.relative_url_root="";gon.shortcuts_path="/help/shortcuts";gon.user_color_scheme="white";gon.sentry_dsn="https://526a2f38a53d44e3a8e69bfa001d1e8b@sentry.gitlab.net/15";gon.gitlab_url="https://gitlab.com";gon.revision="002a282";gon.gitlab_logo="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png";gon.sprite_icons="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg";gon.sprite_file_icons="https://gitlab.com/assets/file_icons-7262fc6897e02f1ceaf8de43dc33afa5e4f9a2067f4f68ef77dcc87946575e9e.svg";gon.emoji_sprites_css_path="https://assets.gitlab-static.net/assets/emoji_sprites-289eccffb1183c188b630297431be837765d9ff4aed6130cf738586fb307c170.css";gon.test_env=false;gon.suggested_label_colors=["#0033CC","#428BCA","#44AD8E","#A8D695","#5CB85C","#69D100","#004E00","#34495E","#7F8C8D","#A295D6","#5843AD","#8E44AD","#FFECDB","#AD4363","#D10069","#CC0033","#FF0000","#D9534F","#D1D100","#F0AD4E","#AD8D43"];gon.first_day_of_week=0;
//]]>
</script>

<script src="https://assets.gitlab-static.net/assets/webpack/runtime.420f310b.bundle.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/main.f0f3d4d1.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/raven.aebaf673.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons~pages.groups~pages.groups.activity~pages.groups.analytics.show~pages.groups.billings~pages.g~246e99b8.7e507115.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons~pages.groups.epics.index~pages.groups.epics.show~pages.groups.milestones.edit~pages.groups.m~14875979.4c859c97.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/pages.projects.blob.show.01e9e494.chunk.js" defer="defer"></script>

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="LaRwNW6vMerDitR/179iP8XQPGLb3eYpDohuN0vd54lanKvDoAnHUEfFnoduQz22lMKq53DWiDMFWpfmOBIGGg==" />
<meta content="origin-when-cross-origin" name="referrer">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#474D57" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="https://assets.gitlab-static.net/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<meta content="https://assets.gitlab-static.net/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">



<script>
  ;(function(p,l,o,w,i,n,g){if(!p[i]){p.GlobalSnowplowNamespace=p.GlobalSnowplowNamespace||[];
  p.GlobalSnowplowNamespace.push(i);p[i]=function(){(p[i].q=p[i].q||[]).push(arguments)
  };p[i].q=p[i].q||[];n=l.createElement(o);g=l.getElementsByTagName(o)[0];n.async=1;
  n.src=w;g.parentNode.insertBefore(n,g)}}(window,document,"script","https://assets.gitlab-static.net/assets/snowplow/sp-e10fd598642f1a4dd3e9e0e026f6a1ffa3c31b8a40efd92db3f92d32873baed6.js","snowplow"));
  
  window.snowplow('newTracker', 'cf', 'snowplow.trx.gitlab.net', {
    appId: 'gitlab',
    cookieDomain: '.gitlab.com',
    userFingerprint: false,
    respectDoNotTrack: true,
    forceSecureTracker: true,
    post: true,
    contexts: {
        webPage: true,
    },
    stateStorageStrategy: "localStorage"
  });
  
  window.snowplow('enableActivityTracking', 30, 30);
  window.snowplow('trackPageView');
</script>

</head>

<body class="ui-indigo  gl-browser-generic gl-platform-other" data-find-file="/gun1x/dotfiles/find_file/master" data-group="" data-page="projects:blob:show" data-project="dotfiles">

<script>
  gl = window.gl || {};
  gl.client = {"isGeneric":true,"isOther":true};
</script>



<header class="navbar navbar-gitlab qa-navbar navbar-expand-sm js-navbar">
<a class="sr-only gl-accessibility" href="#content-body" tabindex="1">Skip to content</a>
<div class="container-fluid">
<div class="header-content">
<div class="title-container">
<h1 class="title">
<a title="Dashboard" id="logo" href="/"><svg width="24" height="24" class="tanuki-logo" viewBox="0 0 36 36">
  <path class="tanuki-shape tanuki-left-ear" fill="#e24329" d="M2 14l9.38 9v-9l-4-12.28c-.205-.632-1.176-.632-1.38 0z"/>
  <path class="tanuki-shape tanuki-right-ear" fill="#e24329" d="M34 14l-9.38 9v-9l4-12.28c.205-.632 1.176-.632 1.38 0z"/>
  <path class="tanuki-shape tanuki-nose" fill="#e24329" d="M18,34.38 3,14 33,14 Z"/>
  <path class="tanuki-shape tanuki-left-eye" fill="#fc6d26" d="M18,34.38 11.38,14 2,14 6,25Z"/>
  <path class="tanuki-shape tanuki-right-eye" fill="#fc6d26" d="M18,34.38 24.62,14 34,14 30,25Z"/>
  <path class="tanuki-shape tanuki-left-cheek" fill="#fca326" d="M2 14L.1 20.16c-.18.565 0 1.2.5 1.56l17.42 12.66z"/>
  <path class="tanuki-shape tanuki-right-cheek" fill="#fca326" d="M34 14l1.9 6.16c.18.565 0 1.2-.5 1.56L18 34.38z"/>
</svg>

<span class="logo-text d-none d-lg-block prepend-left-8">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 617 169"><path d="M315.26 2.97h-21.8l.1 162.5h88.3v-20.1h-66.5l-.1-142.4M465.89 136.95c-5.5 5.7-14.6 11.4-27 11.4-16.6 0-23.3-8.2-23.3-18.9 0-16.1 11.2-23.8 35-23.8 4.5 0 11.7.5 15.4 1.2v30.1h-.1m-22.6-98.5c-17.6 0-33.8 6.2-46.4 16.7l7.7 13.4c8.9-5.2 19.8-10.4 35.5-10.4 17.9 0 25.8 9.2 25.8 24.6v7.9c-3.5-.7-10.7-1.2-15.1-1.2-38.2 0-57.6 13.4-57.6 41.4 0 25.1 15.4 37.7 38.7 37.7 15.7 0 30.8-7.2 36-18.9l4 15.9h15.4v-83.2c-.1-26.3-11.5-43.9-44-43.9M557.63 149.1c-8.2 0-15.4-1-20.8-3.5V70.5c7.4-6.2 16.6-10.7 28.3-10.7 21.1 0 29.2 14.9 29.2 39 0 34.2-13.1 50.3-36.7 50.3m9.2-110.6c-19.5 0-30 13.3-30 13.3v-21l-.1-27.8h-21.3l.1 158.5c10.7 4.5 25.3 6.9 41.2 6.9 40.7 0 60.3-26 60.3-70.9-.1-35.5-18.2-59-50.2-59M77.9 20.6c19.3 0 31.8 6.4 39.9 12.9l9.4-16.3C114.5 6 97.3 0 78.9 0 32.5 0 0 28.3 0 85.4c0 59.8 35.1 83.1 75.2 83.1 20.1 0 37.2-4.7 48.4-9.4l-.5-63.9V75.1H63.6v20.1h38l.5 48.5c-5 2.5-13.6 4.5-25.3 4.5-32.2 0-53.8-20.3-53.8-63-.1-43.5 22.2-64.6 54.9-64.6M231.43 2.95h-21.3l.1 27.3v94.3c0 26.3 11.4 43.9 43.9 43.9 4.5 0 8.9-.4 13.1-1.2v-19.1c-3.1.5-6.4.7-9.9.7-17.9 0-25.8-9.2-25.8-24.6v-65h35.7v-17.8h-35.7l-.1-38.5M155.96 165.47h21.3v-124h-21.3v124M155.96 24.37h21.3V3.07h-21.3v21.3"/></svg>

</span>
</a></h1>
<ul class="list-unstyled navbar-sub-nav">
<li class="home"><a title="Projects" class="dashboard-shortcuts-projects" href="/explore">Projects
</a></li><li class=""><a title="Groups" class="dashboard-shortcuts-groups" href="/explore/groups">Groups
</a></li><li class=""><a title="Snippets" class="dashboard-shortcuts-snippets" href="/explore/snippets">Snippets
</a></li><li>
<a title="About GitLab CE" href="/help">Help</a>
</li>
</ul>

</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="nav-item d-none d-sm-none d-md-block m-auto">
<div class="search search-form" data-track-event="activate_form_input" data-track-label="navbar_search">
<form class="form-inline" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><div class="search-input-container">
<div class="search-input-wrap">
<div class="dropdown" data-url="/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search or jump to…" class="search-input dropdown-menu-toggle no-outline js-search-dashboard-options" spellcheck="false" tabindex="1" autocomplete="off" data-issues-path="/dashboard/issues" data-mr-path="/dashboard/merge_requests" aria-label="Search or jump to…" />
<button class="hidden js-dropdown-search-toggle" data-toggle="dropdown" type="button"></button>
<div class="dropdown-menu dropdown-select">
<div class="dropdown-content"><ul>
<li class="dropdown-menu-empty-item">
<a>
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
<svg class="s16 search-icon"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#search"></use></svg>
<svg class="s16 clear-icon js-clear-input"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#close"></use></svg>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" class="js-search-group-options" />
<input type="hidden" name="project_id" id="search_project_id" value="6893241" class="js-search-project-options" data-project-path="dotfiles" data-name="dotfiles" data-issues-path="/gun1x/dotfiles/issues" data-mr-path="/gun1x/dotfiles/merge_requests" data-issues-disabled="false" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<input type="hidden" name="repository_ref" id="repository_ref" value="master" />

<div class="search-autocomplete-opts hide" data-autocomplete-path="/search/autocomplete" data-autocomplete-project-id="6893241" data-autocomplete-project-ref="master"></div>
</form></div>

</li>
<li class="nav-item d-inline-block d-sm-none d-md-none">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/search?project_id=6893241"><svg class="s16"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#search"></use></svg>
</a></li>
<li class="nav-item header-help dropdown">
<a class="header-help-dropdown-toggle" data-toggle="dropdown" href="/help"><svg class="s16"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#question"></use></svg>
<svg class="caret-down"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#angle-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li>
<a href="/help">Help</a>
</li>
<li class="divider"></li>
<li>
<a href="https://about.gitlab.com/submit-feedback">Submit feedback</a>
</li>
<li>
<a target="_blank" class="text-nowrap" href="https://about.gitlab.com/contributing">Contribute to GitLab
</a></li>


</ul>

</div>
</li>
<li class="nav-item">
<div>
<a class="btn btn-sign-in" href="/users/sign_in?redirect_to_referer=yes">Sign in / Register</a>
</div>
</li>
</ul>
</div>
<button class="navbar-toggler d-block d-sm-none" type="button">
<span class="sr-only">Toggle navigation</span>
<svg class="s12 more-icon js-navbar-toggle-right"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#ellipsis_h"></use></svg>
<svg class="s12 close-icon js-navbar-toggle-left"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#close"></use></svg>
</button>
</div>
</div>
</header>

<div class="layout-page page-with-contextual-sidebar">
<div class="nav-sidebar">
<div class="nav-sidebar-inner-scroll">
<div class="context-header">
<a title="dotfiles" href="/gun1x/dotfiles"><div class="avatar-container s40 project-avatar">
<div class="avatar s40 avatar-tile identicon bg6">D</div>
</div>
<div class="sidebar-context-title">
dotfiles
</div>
</a></div>
<ul class="sidebar-top-level-items">
<li class="home"><a class="shortcuts-project" href="/gun1x/dotfiles"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#home"></use></svg>
</div>
<span class="nav-item-name">
Project
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles"><strong class="fly-out-top-item-name">
Project
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Project details" class="shortcuts-project" href="/gun1x/dotfiles"><span>Details</span>
</a></li><li class=""><a title="Activity" class="shortcuts-project-activity qa-activity-link" href="/gun1x/dotfiles/activity"><span>Activity</span>
</a></li><li class=""><a title="Releases" class="shortcuts-project-releases" href="/gun1x/dotfiles/releases"><span>Releases</span>
</a></li>
<li class=""><a title="Cycle Analytics" class="shortcuts-project-cycle-analytics" href="/gun1x/dotfiles/cycle_analytics"><span>Cycle Analytics</span>
</a></li></ul>
</li><li class="active"><a class="shortcuts-tree qa-project-menu-repo" href="/gun1x/dotfiles/tree/master"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#doc-text"></use></svg>
</div>
<span class="nav-item-name">
Repository
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item active"><a href="/gun1x/dotfiles/tree/master"><strong class="fly-out-top-item-name">
Repository
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class="active"><a href="/gun1x/dotfiles/tree/master">Files
</a></li><li class=""><a href="/gun1x/dotfiles/commits/master">Commits
</a></li><li class=""><a class="qa-branches-link" href="/gun1x/dotfiles/branches">Branches
</a></li><li class=""><a href="/gun1x/dotfiles/tags">Tags
</a></li><li class=""><a href="/gun1x/dotfiles/graphs/master">Contributors
</a></li><li class=""><a href="/gun1x/dotfiles/network/master">Graph
</a></li><li class=""><a href="/gun1x/dotfiles/compare?from=master&amp;to=master">Compare
</a></li><li class=""><a href="/gun1x/dotfiles/graphs/master/charts">Charts
</a></li><li class=""><a href="/gun1x/dotfiles/path_locks">Locked Files
</a></li>
</ul>
</li><li class=""><a class="shortcuts-issues qa-issues-item" href="/gun1x/dotfiles/issues"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#issues"></use></svg>
</div>
<span class="nav-item-name">
Issues
</span>
<span class="badge badge-pill count issue_counter">
0
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/issues"><strong class="fly-out-top-item-name">
Issues
</strong>
<span class="badge badge-pill count issue_counter fly-out-badge">
0
</span>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Issues" href="/gun1x/dotfiles/issues"><span>
List
</span>
</a></li><li class=""><a title="Boards" href="/gun1x/dotfiles/boards"><span>
Boards
</span>
</a></li><li class=""><a title="Labels" class="qa-labels-link" href="/gun1x/dotfiles/labels"><span>
Labels
</span>
</a></li><li class=""><a title="Service Desk" href="/gun1x/dotfiles/issues/service_desk">Service Desk
</a></li>
<li class=""><a title="Milestones" class="qa-milestones-link" href="/gun1x/dotfiles/milestones"><span>
Milestones
</span>
</a></li></ul>
</li><li class=""><a class="shortcuts-merge_requests qa-merge-requests-link" href="/gun1x/dotfiles/merge_requests"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#git-merge"></use></svg>
</div>
<span class="nav-item-name">
Merge Requests
</span>
<span class="badge badge-pill count merge_counter js-merge-counter">
0
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/merge_requests"><strong class="fly-out-top-item-name">
Merge Requests
</strong>
<span class="badge badge-pill count merge_counter js-merge-counter fly-out-badge">
0
</span>
</a></li></ul>
</li><li class=""><a class="shortcuts-pipelines qa-link-pipelines" href="/gun1x/dotfiles/pipelines"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#rocket"></use></svg>
</div>
<span class="nav-item-name">
CI / CD
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/pipelines"><strong class="fly-out-top-item-name">
CI / CD
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Pipelines" class="shortcuts-pipelines" href="/gun1x/dotfiles/pipelines"><span>
Pipelines
</span>
</a></li><li class=""><a title="Jobs" class="shortcuts-builds" href="/gun1x/dotfiles/-/jobs"><span>
Jobs
</span>
</a></li><li class=""><a title="Schedules" class="shortcuts-builds" href="/gun1x/dotfiles/pipeline_schedules"><span>
Schedules
</span>
</a></li><li class=""><a title="Charts" class="shortcuts-pipelines-charts" href="/gun1x/dotfiles/pipelines/charts"><span>
Charts
</span>
</a></li></ul>
</li><li class=""><a class="shortcuts-container-registry" href="/gun1x/dotfiles/container_registry"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#disk"></use></svg>
</div>
<span class="nav-item-name">
Registry
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/container_registry"><strong class="fly-out-top-item-name">
Registry
</strong>
</a></li></ul>
</li><li class=""><a class="shortcuts-wiki qa-wiki-link" href="/gun1x/dotfiles/wikis/home"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#book"></use></svg>
</div>
<span class="nav-item-name">
Wiki
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/wikis/home"><strong class="fly-out-top-item-name">
Wiki
</strong>
</a></li></ul>
</li><li class=""><a class="shortcuts-snippets" href="/gun1x/dotfiles/snippets"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#snippet"></use></svg>
</div>
<span class="nav-item-name">
Snippets
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/snippets"><strong class="fly-out-top-item-name">
Snippets
</strong>
</a></li></ul>
</li><li class=""><a title="Members" class="shortcuts-tree" href="/gun1x/dotfiles/settings/members"><div class="nav-icon-container">
<svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#users"></use></svg>
</div>
<span class="nav-item-name">
Members
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/gun1x/dotfiles/project_members"><strong class="fly-out-top-item-name">
Members
</strong>
</a></li></ul>
</li><a class="toggle-sidebar-button js-toggle-sidebar" role="button" title="Toggle sidebar" type="button">
<svg class="icon-angle-double-left"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#angle-double-left"></use></svg>
<svg class="icon-angle-double-right"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#angle-double-right"></use></svg>
<span class="collapse-text">Collapse sidebar</span>
</a>
<button name="button" type="button" class="close-nav-button"><svg class="s16"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#close"></use></svg>
<span class="collapse-text">Close sidebar</span>
</button>
<li class="hidden">
<a title="Activity" class="shortcuts-project-activity" href="/gun1x/dotfiles/activity"><span>
Activity
</span>
</a></li>
<li class="hidden">
<a title="Network" class="shortcuts-network" href="/gun1x/dotfiles/network/master">Graph
</a></li>
<li class="hidden">
<a title="Charts" class="shortcuts-repository-charts" href="/gun1x/dotfiles/graphs/master/charts">Charts
</a></li>
<li class="hidden">
<a class="shortcuts-new-issue" href="/gun1x/dotfiles/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a title="Jobs" class="shortcuts-builds" href="/gun1x/dotfiles/-/jobs">Jobs
</a></li>
<li class="hidden">
<a title="Commits" class="shortcuts-commits" href="/gun1x/dotfiles/commits/master">Commits
</a></li>
<li class="hidden">
<a title="Issue Boards" class="shortcuts-issue-boards" href="/gun1x/dotfiles/boards">Issue Boards</a>
</li>
</ul>
</div>
</div>

<div class="content-wrapper">

<div class="mobile-overlay"></div>
<div class="alert-wrapper">






<nav class="breadcrumbs container-fluid container-limited" role="navigation">
<div class="breadcrumbs-container">
<button name="button" type="button" class="toggle-mobile-nav"><span class="sr-only">Open sidebar</span>
<i aria-hidden="true" data-hidden="true" class="fa fa-bars"></i>
</button><div class="breadcrumbs-links js-title-container">
<ul class="list-unstyled breadcrumbs-list js-breadcrumbs-list">
<li><a href="/gun1x">gheorghe</a><svg class="s8 breadcrumbs-list-angle"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#angle-right"></use></svg></li> <li><a href="/gun1x/dotfiles"><span class="breadcrumb-item-text js-breadcrumb-item-text">dotfiles</span></a><svg class="s8 breadcrumbs-list-angle"><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#angle-right"></use></svg></li>

<li>
<h2 class="breadcrumbs-sub-title"><a href="/gun1x/dotfiles/blob/master/.config/i3/battery_warning.sh">Repository</a></h2>
</li>
</ul>
</div>

</div>
</nav>

<div class="flash-container flash-container-page">
</div>

<div class="d-flex"></div>
</div>
<div class=" ">
<div class="content" id="content-body">
<div class="js-signature-container" data-signatures-path="/gun1x/dotfiles/commits/b66213a36dd81a1a383fc66c12d8e25fcdfe2bb2/signatures"></div>
<div class="container-fluid container-limited">

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/gun1x/dotfiles/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value=".config/i3/battery_warning.sh" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown qa-branches-select" type="button" data-toggle="dropdown" data-selected="master" data-ref="master" data-refs-url="/gun1x/dotfiles/refs?sort=updated_desc" data-field-name="ref" data-submit-form-on-click="true" data-visit="true"><span class="dropdown-toggle-text ">master</span><i aria-hidden="true" data-hidden="true" class="fa fa-chevron-down"></i></button>
<div class="dropdown-menu dropdown-menu-paging dropdown-menu-selectable git-revision-dropdown qa-branches-dropdown">
<div class="dropdown-page-one">
<div class="dropdown-title"><span>Switch branch/tag</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i aria-hidden="true" data-hidden="true" class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Search branches and tags" autocomplete="off" /><i aria-hidden="true" data-hidden="true" class="fa fa-search dropdown-input-search"></i><i aria-hidden="true" data-hidden="true" role="button" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/gun1x/dotfiles/tree/master">dotfiles
</a></li>
<li class="breadcrumb-item">
<a href="/gun1x/dotfiles/tree/master/.config">.config</a>
</li>
<li class="breadcrumb-item">
<a href="/gun1x/dotfiles/tree/master/.config/i3">i3</a>
</li>
<li class="breadcrumb-item">
<a href="/gun1x/dotfiles/blob/master/.config/i3/battery_warning.sh"><strong>battery_warning.sh</strong>
</a></li>
</ul>
</div>
<div class="tree-controls">
<a class="btn shortcuts-find-file" rel="nofollow" href="/gun1x/dotfiles/find_file/master"><i aria-hidden="true" data-hidden="true" class="fa fa-search"></i>
<span>Find file</span>
</a>
<div class="btn-group" role="group"><a class="btn js-blob-blame-link" href="/gun1x/dotfiles/blame/master/.config/i3/battery_warning.sh">Blame</a><a class="btn" href="/gun1x/dotfiles/commits/master/.config/i3/battery_warning.sh">History</a><a class="btn js-data-file-blob-permalink-url" href="/gun1x/dotfiles/blob/97733774caff2038a8957e1dc8ded32d6f265d7a/.config/i3/battery_warning.sh">Permalink</a></div>
</div>
</div>

<div class="info-well d-none d-sm-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-b66213a3">
<div class="avatar-cell d-none d-sm-block">
<a href="/gun1x"><img alt="gheorghe&#39;s avatar" src="/uploads/-/system/user/avatar/2417705/avatar.png?width=36" class="avatar s36 d-none d-sm-inline" title="gheorghe" /></a>
</div>
<div class="commit-detail flex-list">
<div class="commit-content qa-commit-content">
<a class="commit-row-message item-title" href="/gun1x/dotfiles/commit/b66213a36dd81a1a383fc66c12d8e25fcdfe2bb2">woops syntax fail</a>
<span class="commit-row-message d-block d-sm-none">
&middot;
b66213a3
</span>
<div class="committer">
<a class="commit-author-link js-user-link" data-user-id="2417705" href="/gun1x">gheorghe</a> authored <time class="js-timeago" title="Oct 19, 2018 10:36pm" datetime="2018-10-19T22:36:53Z" data-toggle="tooltip" data-placement="bottom" data-container="body">Oct 19, 2018</time>
</div>
</div>
<div class="commit-actions flex-row d-none d-sm-flex">

<div class="js-commit-pipeline-status" data-endpoint="/gun1x/dotfiles/commit/b66213a36dd81a1a383fc66c12d8e25fcdfe2bb2/pipelines?ref=master"></div>
<div class="commit-sha-group">
<div class="label label-monospace">
b66213a3
</div>
<button class="btn btn btn-default" data-toggle="tooltip" data-placement="bottom" data-container="body" data-title="Copy commit SHA to clipboard" data-class="btn btn-default" data-clipboard-text="b66213a36dd81a1a383fc66c12d8e25fcdfe2bb2" type="button" title="Copy commit SHA to clipboard" aria-label="Copy commit SHA to clipboard"><svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#duplicate"></use></svg></button>

</div>
</div>
</div>
</li>

</ul>
</div>


</div>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="js-file-title file-title-flex-parent">
<div class="file-header-content">
<i aria-hidden="true" data-hidden="true" class="fa fa-file-text-o fa-fw"></i>
<strong class="file-title-name">
battery_warning.sh
</strong>
<button class="btn btn-clipboard btn-transparent prepend-left-5" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn-clipboard btn-transparent prepend-left-5" data-title="Copy file path to clipboard" data-clipboard-text="{&quot;text&quot;:&quot;.config/i3/battery_warning.sh&quot;,&quot;gfm&quot;:&quot;`.config/i3/battery_warning.sh`&quot;}" type="button" title="Copy file path to clipboard" aria-label="Copy file path to clipboard"><svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#duplicate"></use></svg></button>
<small>
463 Bytes
</small>
</div>

<div class="file-actions">

<div class="btn-group" role="group"><button class="btn btn btn-sm js-copy-blob-source-btn" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn btn-sm js-copy-blob-source-btn" data-title="Copy source to clipboard" data-clipboard-target=".blob-content[data-blob-id=&#39;9ff183d66296715168806cb66176e52ea64ed20d&#39;]" type="button" title="Copy source to clipboard" aria-label="Copy source to clipboard"><svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#duplicate"></use></svg></button><a class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" title="Open raw" data-container="body" href="/gun1x/dotfiles/raw/master/.config/i3/battery_warning.sh"><i aria-hidden="true" data-hidden="true" class="fa fa-file-code-o"></i></a><a download=".config/i3/battery_warning.sh" class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" title="Download" data-container="body" href="/gun1x/dotfiles/raw/master/.config/i3/battery_warning.sh?inline=false"><svg><use xlink:href="https://gitlab.com/assets/icons-24aaa921aa9e411162e6913688816c79861d0de4bee876cf6fc4c794be34ee91.svg#download"></use></svg></a></div>
<div class="btn-group" role="group">
<a class="btn js-edit-blob  btn-sm" href="/gun1x/dotfiles/edit/master/.config/i3/battery_warning.sh">Edit</a><a class="btn btn-default btn-sm" href="/-/ide/project/gun1x/dotfiles/edit/master/-/.config/i3/battery_warning.sh">Web IDE</a></div>
</div>
</div>

<script id="js-file-lock" type="application/json">
{"path":".config/i3/battery_warning.sh","toggle_path":"/gun1x/dotfiles/path_locks/toggle"}
</script>


<div class="blob-viewer" data-type="simple" data-url="/gun1x/dotfiles/blob/master/.config/i3/battery_warning.sh?format=json&amp;viewer=simple">
<div class="text-center prepend-top-default append-bottom-default">
<i aria-hidden="true" aria-label="Loading content…" class="fa fa-spinner fa-spin fa-2x"></i>
</div>

</div>


</article>
</div>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<h3 class="page-title">Replace battery_warning.sh</h3>
<button aria-label="Close" class="close" data-dismiss="modal" type="button">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form" data-method="put" action="/gun1x/dotfiles/update/master/.config/i3/battery_warning.sh" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="x8ZCeVBD1iIxaDNBBZh9pZWLomQsGvyW7xcO9LU0nCiw/pmPnuUgmLUnebm8ZCIsxJk04YcRkozkxfclxvt9uw==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Attach a file by drag &amp; drop or <a class="markdown-selector" href="#">click to upload</a>
</p>
</div>
</div>
<br>
<div class="dropzone-alerts alert alert-danger data" style="display:none"></div>
<div class="form-group row commit_message-group">
<label class="col-form-label col-sm-2" for="commit_message-2c9c2fd976f7d788c284141958206282">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-2c9c2fd976f7d788c284141958206282" class="form-control js-commit-message" placeholder="Replace battery_warning.sh" required="required" rows="3">
Replace battery_warning.sh</textarea>
</div>
</div>
</div>

<input type="hidden" name="branch_name" id="branch_name" />
<input type="hidden" name="create_merge_request" id="create_merge_request" value="1" />
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="button" class="btn btn-success btn-upload-file" id="submit-all"><i aria-hidden="true" data-hidden="true" class="fa fa-spin fa-spinner js-loading-icon hidden"></i>
Replace file
</button><a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
<div class="inline prepend-left-10">
A new branch will be created in your fork and a new merge request will be started.
</div>

</div>
</form></div>
</div>
</div>
</div>

</div>
</div>

</div>
</div>
</div>
</div>



</body>
</html>

