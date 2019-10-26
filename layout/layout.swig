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
    <title>{{ theme.title }}</title>
    <link rel="stylesheet" href="/css/bootstrap-cosmo.css">
    <style>
        * {
            font-size: 13px;
        }

        a {
            color: #231815;
            text-decoration: underline;
        }

        a:hover {
            color: #7F0019;
            text-decoration: underline;
        }

        .muji-nav {
            background: #7F0019 !important;
            line-height: 4px;
            font-size: 13px;
        }

        .navbar-brand {
            font-size: 14px;
            font-weight: bold;
            text-decoration: none;
        }

        @media (min-width: 910px) {
            .container {
                width: 910px;
            }
        }

        .footer-links {
            border-top: solid 1px #231815;
        }

        .footer-links a {
            margin-right: 1em;
        }

        .footer-info {
            border-top: solid 1px #E6E6E6;
        }

        .nav-link {
            text-decoration: none;
            font-weight: 600;
        }

        .nav-link:hover {
            opacity: 0.6;
        }
    </style>
    {#    <link rel="stylesheet" href="/css/highlight/{{ theme.code_style }}">#}
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

    <footer class="footer mt-5">
        <p class="footer-links pt-3 mt-3 mb-3">
            <a href="https://www.muji.com.cn">MUJI 中国官网</a>
            <a href="https://crowall.com">CroWall</a>
        </p>
        <p class="footer-info mb-3 pt-2">
            Copyright &copy; 2019 <a href="{{ theme.url }}">{{ theme.title }}</a>.
            <span style="display:inline-block;float:right;">
                Powered by <a href="https://hexo.io">Hexo</a> and <a href="https://github.com/lucups/hexo-theme-muji">hexo-theme-muji</a>.
            </span>
        </p>
    </footer>
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
