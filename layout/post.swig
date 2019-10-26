<h1>{{ page.title }}</h1>

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
