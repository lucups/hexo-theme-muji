<style>
    article img {
        max-width: 100% !important;
        display: block;
        margin: 0 auto;
    }
</style>

<h1 class="pt-3">{{ page.title }}</h1>

<p>
    <span class="label mr-1">发布:</span>
    {{ date(page.date, 'YYYY-MM-DD') }}

    <span class="ml-2 mr-2">|</span>

    <span class="label mr-1">分类:</span>
    {% set categories = [] %}
    {% for idx, _c in page.categories %}
        {% set categories[idx] = '<a href="'+url_for('/categories/'+_c.name)+'">'+_c.name+'</a>' %}
    {% endfor %}
    {{ categories|join(',') }}

    <span class="ml-2 mr-2">|</span>

    <span class="label mr-1">标签:</span>
    {% for _t in page.tags %}
        <a href="{{ url_for('/tags/'+_t.name) }}" class="badge badge-secondary">{{ _t.name }}</a>
    {% endfor %}
</p>

<div class="row">
    <div class="col-9">
        <article>
            {{ page.content }}
        </article>
    </div>
    <div class="col-3">
        {% for tag in site.tags %}
            <ul>
                <li>{{ tag.name }}</li>
            </ul>
        {% endfor %}
    </div>
</div>
