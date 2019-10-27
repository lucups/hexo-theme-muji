<h1>{{ __('Categories') }}</h1>

<ul>
    {% for category in site.categories %}
        <li>
            {{ category.name }}
            <ul>
                {% for post in category.posts %}
                    <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
                {% endfor %}
            </ul>
        </li>
    {% endfor %}
</ul>

