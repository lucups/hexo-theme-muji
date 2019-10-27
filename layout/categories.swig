{% if page.tag %}
    <h1><a href="{{ url_for('categories') }}">{{ __('Categories') }}</a> #{{ page.category }}</h1>
{% else %}
    <h1><a href="{{ url_for('categories') }}">{{ __('Categories') }}</a></h1>
{% endif %}

<ul>
    {% for category in site.categories %}
        <li>
            <a href="{{ url_for('/categories/'+category.name) }}">{{ category.name }}</a>
            <ul>
                {% for post in category.posts %}
                    <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
                {% endfor %}
            </ul>
        </li>
    {% endfor %}
</ul>

