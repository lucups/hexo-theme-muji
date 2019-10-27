<h1>{{ config.title }}</h1>
<img src="{{ theme.avatar }}" width="200px" height="200px" alt="">

<ul>
    {% for post in page.posts %}
        <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
