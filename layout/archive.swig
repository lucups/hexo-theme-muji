<h1 class="pt-3">{{ __('Archives') }}</h1>

{% set years = {} %}
{% for post in site.posts %}
    {% set year = post.date.year() %}
    {% if years[year] %}
        {% set len = years[year]|length %}
        {% set years[year][len] = post %}
    {% else %}
        {% set years[year] = [post] %}
    {% endif %}
{% endfor %}

{% set years_asc = years|reverse %}
<ul>
    {% for year in years_asc %}
        <li>{{ year }}
            <ul>
                {% for post in years[year] %}
                    <li>{{ date(post.date, 'MM-DD') }} <a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
                {% endfor %}
            </ul>
        </li>
    {% endfor %}
</ul>
