<div class="pt-3">
    <div class="jumbotron">
        <h1 class="display-4">{{ theme.slogan }}</h1>
        {#        <p class="lead">{{ theme.slogan }}</p>#}
        {#        <hr class="my-4">#}
        {#        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>#}
        {#        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>#}
    </div>
</div>

<div class="row">
    <div class="col-md-6 col-12">
        <h2>{{ __('recent_posts') }}</h2>
        <ul>
            {% for post in page.posts %}
                <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
            {% endfor %}
        </ul>
    </div>
    <div class="col-md-6 col-12">
    </div>
</div>
