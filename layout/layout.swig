<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {% if theme.favicon %}
        <link rel="icon" href="{{ theme.favicon }}">
    {% endif %}
    <title>{{ config.title }}</title>
    <link rel="stylesheet" href="/css/bootstrap-cosmo.css">
    <style>
        .muji-nav {
            background: #7F0019 !important;
            line-height: 4px;
            font-size: 13px;
        }

        .navbar-brand {
            font-size: 14px;
            font-weight: bold;
        }

        @media (min-width: 910px) {
            .container {
                width: 910px;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-sm navbar-dark muji-nav mb-3">
    <div class="container">
        <a class="navbar-brand" href="{{ url_for('/') }}">{{ theme.title }}</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto mr-0">
                {% for menu, uri in theme.menu %}
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ url_for(uri) }}">{{ __(menu) }}</a>
                    </li>
                {% endfor %}
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    {{ body }}
</div>

<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script>
    var links = document.links;
    for (var i = 0, linksLength = links.length; i < linksLength; i++) {
        if (links[i].hostname !== window.location.hostname) {
            links[i].target = '_blank';
        }
    }
</script>
</body>
</html>
