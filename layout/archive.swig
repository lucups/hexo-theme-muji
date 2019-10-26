<h1>Hello, this is archive page!</h1>
<ul>
    {% for post in site.posts %}
        <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
