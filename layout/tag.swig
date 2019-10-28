{% if page.tag %}
    <h1 class="pt-3"><a href="{{ url_for('tags') }}">{{ __('Tags') }}</a> #{{ page.tag }}</h1>
{% else %}
    <h1 class="pt-3" s><a href="{{ url_for('tags') }}">{{ __('Tags') }}</a></h1>
    <ul>
        {% for tag in site.tags %}
            <li>
                <a href="{{ url_for('/tags/'+tag.name) }}">#{{ tag.name }}</a>
            </li>
        {% endfor %}
    </ul>
{% endif %}

<ul>
    {% for post in page.posts %}
        <li>
            <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
        </li>
    {% endfor %}
</ul>
