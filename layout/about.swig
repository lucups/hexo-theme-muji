<h1 class="pt-3">{{ __('About') }}</h1>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body text-center">
                <img class="img-fluid m-3" src="{{ theme.avatar }}" width="64" alt="">
                <h5 class="card-title">
                    {{ theme.author }}
                </h5>
                <p class="card-text">
                    {{ theme.description }}
                </p>
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
                <p class="card-text">
                    微信扫一扫
                    <br>
                    订阅我的微信公众号
                </p>
            </div>
        </div>
    </div>
</div>
