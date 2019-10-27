{% if page.tag %}
    <h1><a href="{{ url_for('tags') }}">{{ __('Tags') }}</a> #{{ page.tag }}</h1>
{% else %}
    <h1><a href="{{ url_for('tags') }}">{{ __('Tags') }}</a></h1>
{% endif %}

<ul>
    {% for tag in site.tags %}
        <li>
            <a href="{{ url_for('/tags/'+tag.name) }}">#{{ tag.name }}</a>
            {#            <ul>#}
            {#                {% for post in tag.posts %}#}
            {#                    <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>#}
            {#                {% endfor %}#}
            {#            </ul>#}
        </li>
    {% endfor %}
</ul>

<ul>
    {% for post in page.posts %}
        <li>
            <a href="{{ url_for(post.path) }}">#{{ post.title }}</a>
        </li>
    {% endfor %}
</ul>
