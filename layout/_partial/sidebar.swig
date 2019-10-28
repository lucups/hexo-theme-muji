<h4>{{ __('Categories') }}</h4>
<ul>
    {% for category in site.categories %}
        <li>
            <a href="{{ url_for('/categories/'+category.name) }}">{{ category.name }}</a>
        </li>
    {% endfor %}
</ul>

<h4>{{ __('Tags') }}</h4>
<ul>
    {% for tag in site.tags %}
        <li>
            <a href="{{ url_for('/tags/'+tag.name) }}">#{{ tag.name }}</a>
        </li>
    {% endfor %}
</ul>
