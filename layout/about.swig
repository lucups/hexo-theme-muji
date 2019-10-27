<h1 class="pt-3">{{ __('About') }}</h1>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">
                    <img class="img-fluid" src="{{ theme.avatar }}" width="92" height="92px" alt="">
                    {{ config.author }}
                </h5>
                <p class="card-text">
                    <a href="{{ theme.github_url }}">GitHub</a>
                </p>
            </div>
        </div>
    </div>
</div>


<div class="row mt-3">
    <div class="col-12">
        <div class="card text-center">
            <div class="card-body">
                <img class="img-fluid" src="{{ theme.wechat_qr }}" width="120" height="120px" alt="">
                <h5 class="card-title">订阅我的微信公众号</h5>
                <p class="card-text"></p>
            </div>
        </div>
    </div>
</div>
