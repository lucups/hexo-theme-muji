<style>
    article img {
        max-width: 100% !important;
        display: block;
        margin: 0 auto;
    }
</style>

<div class="row pt-3">
    <div class="col-md-9 col-sm-12">
        <h1>{{ page.title }}</h1>
        <article>
            {{ page.content }}
        </article>
    </div>
    <div class="col-md-3 col-sm-12">
        {% include '_partial/sidebar.swig' %}
    </div>
</div>
