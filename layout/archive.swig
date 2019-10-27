<h1>{{ __('Archives') }}</h1>

{#<ul>#}
{#    {% for post in site.posts %}#}
{#        <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>#}
{#    {% endfor %}#}
{#</ul>#}



<ul>
    {% for post in page.posts %}
        <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>


