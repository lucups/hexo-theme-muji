<div class="pt-3">
    <div class="jumbotron text-center">
        <h1 class="display-5">{{ theme.slogan }}</h1>
    </div>
</div>

<div class="row">
    <div class="col-md-6 col-12">
        <h2>{{ __('recent_posts') }}</h2>
        <ul>
            {% for post in page.posts %}
                <li>{{ date(post.date, 'YYYY-MM-DD') }} <a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
            {% endfor %}
            <li><a href="{{ url_for('/archives') }}">{{ __('view_more') }}</a></li>
        </ul>
    </div>
    <div class="col-md-6 col-12">
        <h2>{{ __('Categories') }}</h2>
        {% set categories = [] %}
        {% for idx, _c in site.categories %}
            {% set categories[idx] = '<a href="'+url_for('/categories/'+_c.name)+'">'+_c.name+'</a>' %}
        {% endfor %}
        {{ categories|join(' / ') }}

        <h2 class="mt-4">{{ __('Tags') }}</h2>
        {% set tags = [] %}
        {% for idx, _c in site.tags %}
            {% set tags[idx] = '<a href="'+url_for('/tags/'+_c.name)+'">#'+_c.name+'</a>' %}
        {% endfor %}
        {{ tags|join(' · ') }}
    </div>
</div>
