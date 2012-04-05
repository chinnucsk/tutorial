<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Zotonic Tutorial Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Application for poll administration">
    <meta name="author" content="Jeff Bell">

    <!-- Le styles -->
    {% lib 
        "/bootstrap/css/bootstrap.css" 
        "/bootstrap/css/bootstrap-responsive.css" 
    %}
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="{% url home %}">Zotonic Tutorial Blog</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="{% url home %}">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
            <p class="navbar-text pull-right">Logged in as <a href="#">username</a></p>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container-fluid">
    <div class="row-fluid">
        {% block left_panel %}
        <div class="span1">
        &nbsp;
        </div>
        {% endblock %}
        <div class="span8">
        <div class="hero-unit">
        <h1>Learn You Some Zotonic!</h1>
        </div>
        <hr>
        {% block right_content %}
        {% endblock %}
        </div>
        <div class="span3">
        <div class="well sidebar-nav">
        {% block sidebar %}
        {% endblock %}
        </div><!-- well -->
        </div><!-- span -->
        {% block footer %} 
        {% endblock %}
    </div><!--"container-fluid"-->
    


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
{% lib 
    "bootstrap/js/jquery.js"
    "/bootstrap/js/bootstrap-transition.js"
    "/bootstrap/js/bootstrap-alert.js"
    "/bootstrap/js/bootstrap-modal.js"
    "/bootstrap/js/bootstrap-dropdown.js"
    "/bootstrap/js/bootstrap-scrollspy.js"
    "/bootstrap/js/bootstrap-tab.js"
    "/bootstrap/js/bootstrap-tooltip.js"
    "/bootstrap/js/bootstrap-popover.js"
    "/bootstrap/js/bootstrap-button.js"
    "/bootstrap/js/bootstrap-collapse.js"
    "/bootstrap/js/bootstrap-carousel.js"
    "/bootstrap/js/bootstrap-typeahead.js"
%}
{% lib
    "js/apps/zotonic-1.0.js"
    "js/apps/z.widgetmanager.js"
    "js/modules/livevalidation-1.3.js"
%}

{% block _js_include_extra %}{% endblock %}

<script type="text/javascript">
    $(function()
    {
        $.widgetManager();
    });
</script>

{% script %}
{% stream %}

  </body>
</html>

