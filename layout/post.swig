<style>
    img {
        max-width: 100% !important;
    }
</style>

<h1>{{ page.title }}</h1>

<p class="lead">{{ date(page.date, 'YYYY-MM-DD') }}</p>

<ul>
    {% for _c in page.categories %}
        <li>{{ _c.name }}</li>
    {% endfor %}
</ul>

<ul>
    {% for _t in page.tags %}
        <li>{{ _t.name }}</li>
    {% endfor %}
</ul>

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
