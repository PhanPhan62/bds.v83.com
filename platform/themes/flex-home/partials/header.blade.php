<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <style>
        :root {
            --primary-color: {{ theme_option('primary_color', '#1d5f6f') }};
            --primary-color-rgb: {{ BaseHelper::hexToRgba(theme_option('primary_color', '#1d5f6f'), 0.8) }};
            --primary-color-hover: {{ theme_option('primary_color_hover', '#063a5d') }};
        }
    </style>

    {!! Theme::header() !!}
</head>
<body {!! Theme::bodyAttributes() !!}>
{!! apply_filters(THEME_FRONT_BODY, null) !!}
<div id="alert-container"></div>
<div class="bravo_topbar d-none d-sm-block">
    <div class="container-fluid w90">
        <div class="row">
            <div class="col-12">
                <div class="content">
                    <div class="topbar-left">
                        @php
                            $hasSocialLinks = false;
                            $announcements = apply_filters('announcement_display_html', null);
                            $canRenderAnnouncements = is_plugin_active('announcement') && $announcements && \ArchiElite\Announcement\Models\Announcement::query()->exists();
                        @endphp

                        @if($canRenderAnnouncements)
                            {!! $announcements !!}
                        @else
                            @if ($socialLinks = json_decode(theme_option('social_links'), true))
                                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
                                <div class="top-socials">
                                    @foreach($socialLinks as $socialLink)
                                        @if (count($socialLink) == 3 && isset($socialLink[1]['value']) && isset($socialLink[2]['value']))
                                            @php $hasSocialLinks = true; @endphp
                                            <a href="{{ $socialLink[2]['value'] }}"
                                               title="{{ $socialLink[0]['value'] }}" target="_blank">
                                                <i class="{{ $socialLink[1]['value'] }}"></i>
                                            </a>
                                        @endif
                                    @endforeach
                                </div>
                                @if ($hasSocialLinks && theme_option('email'))
                                    <span class="line"></span>
                                @endif
                            @endif
                            @if ($email = theme_option('email'))
                                <a href="mailto:{{ $email }}" dir="ltr">{{ $email }}</a>
                            @endif
                        @endif
                    </div>
                    <div class="topbar-right">
                        @if (is_plugin_active('real-estate'))
                            @if (RealEstateHelper::isEnabledWishlist())
                                <ul class="topbar-items">
                                    <li><a href="{{ route('public.wishlist') }}"><i class="fas fa-heart"></i>&nbsp;{{ __('Wishlist') }}(<span class="wishlist-count">0</span>)</a></li>
                                </ul>
                            @endif

                            @php $currencies = get_all_currencies(); @endphp
                            @if (count($currencies) > 1)
                                <div class="language currency-switcher">
                                    <div class="language-switcher-wrapper">
                                        <div class="dropdown d-inline-block">
                                            <button class="btn btn-secondary dropdown-toggle btn-select-language" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                {{ get_application_currency()->title }}
                                            </button>
                                            <ul class="dropdown-menu language_bar_chooser">
                                                @foreach ($currencies as $currency)
                                                    <li>
                                                        <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id() == $currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endif
                        {!! Theme::partial('language-switcher') !!}
                        @if (is_plugin_active('real-estate') && RealEstateHelper::isLoginEnabled())
                            <ul class="topbar-items">
                                @if (auth('account')->check())
                                    <li class="login-item"><a href="{{ route('public.account.dashboard') }}" rel="nofollow"><i class="fas fa-user"></i>&nbsp;<span>{{ auth('account')->user()->name }}</span></a></li>
                                    <li class="login-item"><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fas fa-sign-out-alt"></i>&nbsp;{{ __('Logout') }}</a></li>
                                @else
                                    <li class="login-item">
                                        <a href="{{ route('public.account.login') }}"><i class="fas fa-sign-in-alt"></i>&nbsp;{{ __('Login') }}</a>
                                    </li>
                                @endif
                            </ul>
                            @if (auth('account')->check())
                                <form id="logout-form" action="{{ route('public.account.logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            @endif
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<header class="topmenu bg-light" @if (theme_option('enable_sticky_header', 'yes') == 'yes') id="header-waypoint" @endif>
    <div class="main-header">
        <div class="container-fluid w90">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        @if ($logo = theme_option('logo'))
                            <a class="navbar-brand" href="{{ route('public.index') }}">
                                <img src="{{ RvMedia::getImageUrl($logo) }}"
                                     class="logo" height="40" alt="{{ theme_option('site_title') }}">
                            </a>
                        @endif
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="fas fa-bars"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-end animation" id="navbarSupportedContent">
                            <div class="main-menu-darken"></div>
                            <div class="main-menu-content">
                                <div class="d-lg-none bg-primary p-2">
                                    <span class="text-white">{{ __('Menu') }}</span>
                                    <span class="float-right toggle-main-menu-offcanvas text-white">
                                        <i class="far fa-times-circle"></i>
                                    </span>
                                </div>
                                <div class="main-menu-nav d-lg-flex">
                                    {!!
                                        Menu::renderMenuLocation('main-menu', [
                                            'options' => ['class' => 'navbar-nav justify-content-end menu menu--mobile'],
                                            'view'    => 'main-menu',
                                        ])
                                    !!}
                                    @if (is_plugin_active('real-estate') && RealEstateHelper::isLoginEnabled())
                                        <a class="btn btn-primary add-property" href="{{ route('public.account.properties.index') }}">
                                            <i class="fas fa-plus-circle"></i> {{ __('Add Property') }}
                                        </a>
                                    @endif

                                    <div class="d-sm-none">
                                        <div>
                                            @if (is_plugin_active('real-estate'))
                                                @if (RealEstateHelper::isEnabledWishlist())
                                                    <ul class="topbar-items d-block">
                                                        <li class="login-item">
                                                            <a href="{{ route('public.wishlist') }}"><i class="fas fa-heart"></i> {{ __('Wishlist') }}(<span class="wishlist-count">0</span>)</a>
                                                        </li>
                                                    </ul>
                                                @endif

                                                @if (count($currencies) > 1)
                                                    <div class="language">
                                                        <div class="language-switcher-wrapper">
                                                            <div class="d-inline-block language-label">
                                                                {{ __('Currencies') }}:
                                                            </div>
                                                            <div class="dropdown d-inline-block">
                                                                <button class="btn btn-secondary dropdown-toggle btn-select-language" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                    {{ get_application_currency()->title }}
                                                                </button>
                                                                <ul class="dropdown-menu language_bar_chooser">
                                                                    @foreach ($currencies as $currency)
                                                                        <li>
                                                                            <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id() == $currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                            @endif
                                            {!! Theme::partial('language-switcher') !!}
                                            @if (is_plugin_active('real-estate') && RealEstateHelper::isLoginEnabled())
                                                <ul class="topbar-items d-block">
                                                    @if (auth('account')->check())
                                                        <li class="login-item"><a href="{{ route('public.account.dashboard') }}" rel="nofollow"><i class="fas fa-user"></i> <span>{{ auth('account')->user()->name }}</span></a></li>
                                                        <li class="login-item"><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fas fa-sign-out-alt"></i> {{ __('Logout') }}</a></li>
                                                    @else
                                                        <li class="login-item">
                                                            <a href="{{ route('public.account.login') }}"><i class="fas fa-sign-in-alt"></i>  {{ __('Login') }}</a>
                                                        </li>
                                                    @endif
                                                </ul>
                                                @if (is_plugin_active('real-estate') && auth('account')->check())
                                                    <form id="logout-form" action="{{ route('public.account.logout') }}" method="POST" style="display: none;">
                                                        @csrf
                                                    </form>
                                                @endif
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
