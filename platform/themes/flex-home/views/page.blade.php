@php
  Theme::set('page', $page);

  $showBreadcrumb = $page->getMetaData('breadcrumb', 'yes');
@endphp

@if (in_array($page->template, ['default', 'full-width']))
    @if ($showBreadcrumb === 'yes')
        <div class="bgheadproject hidden-xs" style="background: url('{{ theme_option('breadcrumb_background') ? RvMedia::url(theme_option('breadcrumb_background')) : Theme::asset()->url('images/banner-du-an.jpg') }}')">
            <div class="description">
                <div class="container-fluid w90">
                    <h1 class="text-center">{{ $page->name }}</h1>
                    {!! Theme::partial('breadcrumb') !!}
                </div>
            </div>
        </div>
    @endif
    <div class="@if ($page->template != 'full-width') container @endif padtop50">
        <div class="row">
            <div class="col-sm-12">
                <div class="scontent">
                    {!! apply_filters('before_single_content_detail', null, $page) !!}

                    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, Html::tag('div', BaseHelper::clean($page->content), ['class' => 'ck-content'])->toHtml(), $page) !!}

                    {!! apply_filters('after_single_content_detail', null, $page) !!}
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
@else
{!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, Html::tag('div', BaseHelper::clean($page->content), ['class' => 'ck-content'])->toHtml(),
$page) !!}
@endif
