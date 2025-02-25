@php
    Theme::asset()
        ->usePath()
        ->add('leaflet-css', 'libraries/leaflet/leaflet.css');
    Theme::asset()
        ->container('footer')
        ->usePath()
        ->add('leaflet-js', 'libraries/leaflet/leaflet.js');
    Theme::asset()
        ->usePath()
        ->add('magnific-css', 'libraries/magnific/magnific-popup.css');
    Theme::asset()
        ->container('footer')
        ->usePath()
        ->add('magnific-js', 'libraries/magnific/jquery.magnific-popup.min.js');
@endphp
<main class="detailproject">
    @include(Theme::getThemeNamespace() . '::views.real-estate.includes.slider', ['object' => $project])

    <div class="container-fluid bgmenupro">
        <div
            class="container-fluid w90 padtop30"
            style="padding: 15px 0;"
        >
            <div class="col-12">
                <h1
                    class="title"
                    style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0;"
                >{!! BaseHelper::clean($project->name) !!}</h1>
                @if (RealEstateHelper::isEnabledReview())
                    <p style="margin-bottom: 5px;">@include(Theme::getThemeNamespace('views.real-estate.partials.review-star'), [
                        'avgStar' => $project->reviews_avg_star,
                        'count' => $project->reviews_count,
                    ])</p>
                @endif
                <p class="addresshouse">
                    @if ($address = $project->short_address)
                        <span
                            class="d-inline-block"
                            style="margin-right: 10px"
                        >
                            <i class="fas fa-map-marker-alt"></i> {{ $address }}
                        </span>
                    @endif
                    @if (setting('real_estate_display_views_count_in_detail_page', 0) == 1)
                        <span
                            class="d-inline-block"
                            style="margin-right: 10px"
                        ><i class="fa fa-eye"></i> {{ number_format($project->views) }} {{ __('views') }}</span>
                    @endif
                    <span class="d-inline-block"><i class="fa fa-calendar-alt"></i>
                        {{ $project->created_at->translatedFormat('M d, Y') }}</span>
                </p>
                <div class="d-none">
                    {!! Theme::partial('breadcrumb') !!}
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid w90 padtop30 single-post">
        {!! apply_filters('ads_render', null, 'project_detail_before') !!}

        <section class="general">
            <div class="row">
                <div class="col-md-8">
                    {!! apply_filters('before_single_content_detail', null, $project) !!}

                    <div class="head">{{ __('Overview') }}</div>
                    <span class="line_title"></span>
                    <div class="row">
                        <div class="col-sm-6 lineheight220">
                            @if ($lastUpdated = $project->getMetaData('last_updated', true))
                                <div><span>{{ __('Last Updated') }}:&nbsp;</span> <strong>{{ rescue(fn () => Carbon\Carbon::parse($lastUpdated)->translatedFormat('M d, Y')) }}</strong></div>
                            @endif
                            @if($project->unique_id)
                                <div><span>{{ __('Project ID') }}:&nbsp;</span> <strong>{{ $project->unique_id }}</strong></div>
                            @endif
                            <div><span>{{ __('Status') }}:&nbsp;</span> {!! BaseHelper::clean($project->status_html) !!}</div>
                            @if ($project->categories->isNotEmpty())
                                <div><span>{{ __('Category') }}:&nbsp;</span>
                                    <strong>
                                        @foreach ($project->categories as $category)
                                            {{ $category->name }}
                                            @if (!$loop->last)
                                                ,&nbsp;
                                            @endif
                                        @endforeach
                                    </strong>
                                </div>
                            @endif
                            @if ($project->investor->name)
                                <div><span>{{ __('Investor') }}:&nbsp;</span> <b>{{ $project->investor->name }}</b></div>
                            @endif
                            @if ($project->price_from || $project->price_to)
                                <div>
                                    <span>{{ __('Price') }}:&nbsp;</span>
                                    <b>{{ $project->formatted_price }}</b>
                                </div>
                            @endif
                        </div>
                        <div class="col-sm-6 lineheight220">
                            @if ($project->number_block)
                                <div><span>{{ __('Number of blocks') }}:&nbsp;</span>
                                    <b>{{ number_format($project->number_block) }}</b></div>
                            @endif
                            @if ($project->number_floor)
                                <div><span>{{ __('Number of floors') }}:&nbsp;</span>
                                    <b>{{ number_format($project->number_floor) }}</b></div>
                            @endif
                            @if ($project->number_flat)
                                <div><span>{{ __('Number of flats') }}:&nbsp;</span>
                                    <b>{{ number_format($project->number_flat) }}</b></div>
                            @endif
                        </div>
                        @foreach ($project->customFields as $customField)
                            <div class="col-sm-6 lineheight220">
                                <div><span>{!! BaseHelper::clean($customField->name) !!}:&nbsp;</span> <strong>{!! BaseHelper::clean($customField->value) !!}</strong>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <div class="head">{{ __('Description') }}</div>
                    @if ($project->content)
                        <div class="ck-content">
                            {!! BaseHelper::clean($project->content) !!}
                        </div>
                    @endif
                    @if ($project->features->count())
                        <br>
                        <div class="head">{{ __('Features') }}</div>
                        <div class="row">
                            @php $project->features->loadMissing('metadata'); @endphp
                            @foreach ($project->features as $feature)
                                <div class="col-sm-4">
                                    @if ($feature->getMetaData('icon_image', true))
                                        <p><i><img
                                                    src="{{ RvMedia::getImageUrl($feature->getMetaData('icon_image', true)) }}"
                                                    alt="{{ $feature->name }}"
                                                    style="vertical-align: top; margin-top: 3px;"
                                                    width="18"
                                                    height="18"
                                                ></i> {{ $feature->name }}</p>
                                    @else
                                        <p><i
                                                class="@if ($feature->icon) {{ $feature->icon }} @else fas fa-check @endif text-orange text0i"></i>
                                            {{ $feature->name }}</p>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    @endif
                    <br>
                    @if ($project->facilities->isNotEmpty())
                        <div class="row">
                            <div class="col-sm-12">
                                <h5 class="headifhouse">{{ __('Distance key between facilities') }}</h5>
                                <div class="row">
                                    @php $project->facilities->loadMissing('metadata'); @endphp
                                    @foreach ($project->facilities as $facility)
                                        <div class="col-sm-4">
                                            @if ($facility->getMetaData('icon_image', true))
                                                <p><i><img
                                                            src="{{ RvMedia::getImageUrl($facility->getMetaData('icon_image', true)) }}"
                                                            alt="{{ $facility->name }}"
                                                            style="vertical-align: top; margin-top: 3px;"
                                                            width="18"
                                                            height="18"
                                                        ></i> {{ $facility->name }} - {{ $facility->pivot->distance }}
                                                </p>
                                            @else
                                                <p><i
                                                        class="@if ($facility->icon) {{ $facility->icon }} @else fas fa-check @endif text-orange text0i"></i>
                                                    {{ $facility->name }} - {{ $facility->pivot->distance }}</p>
                                            @endif
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    @endif
                    <br>
                    @if ($project->latitude && $project->longitude)
                        {!! Theme::partial('real-estate.elements.traffic-map-modal', ['location' => $project->location]) !!}

                        <div class="d-none d-print-block">
                            <a
                                class="text-decoration-none"
                                href="https://maps.google.com/?ll={{ $project->latitude }},{{ $project->longitude }}"
                            >
                                {{ $project->location ?: $address }}
                            </a>
                        </div>
                    @else
                        {!! Theme::partial('real-estate.elements.gmap-canvas', ['location' => $project->location]) !!}

                        <div class="d-none d-print-block">
                            <a
                                class="text-decoration-none"
                                href="https://www.google.com/maps/search/{{ urlencode($project->location) }}"
                            >
                                {{ $project->location ?: $address }}
                            </a>
                        </div>
                    @endif

                    <br>

                    @if ($project->video_url)
                        {!! Theme::partial('real-estate.elements.video', ['object' => $project, 'title' => __('Project video')]) !!}
                    @endif

                    {!! apply_filters('after_single_content_detail', null, $project) !!}

                    <br>
                    {!! Theme::partial('share', ['title' => __('Share this project'), 'description' => $project->description]) !!}
                    <div class="clearfix"></div>
                    {!! apply_filters(
                        BASE_FILTER_PUBLIC_COMMENT_AREA,
                        theme_option('facebook_comment_enabled_in_project', 'yes') == 'yes' ? Theme::partial('comments') : null,
                    ) !!}
                    <br>
                    @if (RealEstateHelper::isEnabledReview())
                        @include(Theme::getThemeNamespace('views.real-estate.partials.reviews'), [
                            'model' => $project,
                        ])
                    @endif
                </div>
                <div class="col-md-4 padtop10">
                    {!! apply_filters('ads_render', null, 'project_detail_sidebar_before') !!}

                    {!! apply_filters('project_right_details_info', null, $project) !!}

                    <div class="boxright p-3">
                        {!! Theme::partial('consult-form', ['type' => 'project', 'data' => $project]) !!}
                    </div>

                    {!! apply_filters('ads_render', null, 'project_detail_sidebar_after') !!}
                </div>
            </div>

            <div class="projecthome mb-2">
                @php
                    $propertiesForSale = app(\Botble\RealEstate\Repositories\Interfaces\PropertyInterface::class)->getPropertiesByConditions(
                        [
                            're_properties.project_id' => $project->id,
                            're_properties.type' => \Botble\RealEstate\Enums\PropertyTypeEnum::SALE,
                        ],
                        8,
                        \Botble\RealEstate\Facades\RealEstateHelper::getPropertyRelationsQuery(),
                    );
                @endphp

                @if ($propertiesForSale->isNotEmpty())
                    <h3 class="headifhouse">{{ __('Properties For Sale') }}</h3>
                    <div class="row rowm10">
                        @foreach ($propertiesForSale as $propertyForSale)
                            <div class="col-sm-6 col-lg-4 col-xl-3 colm10">
                                {!! Theme::partial('real-estate.properties.item', ['property' => $propertyForSale]) !!}
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>

            <div class="projecthome mb-2">
                @php
                    $propertiesForRent = app(\Botble\RealEstate\Repositories\Interfaces\PropertyInterface::class)->getPropertiesByConditions(
                        [
                            're_properties.project_id' => $project->id,
                            're_properties.type' => \Botble\RealEstate\Enums\PropertyTypeEnum::RENT,
                        ],
                        theme_option('number_of_related_projects', 8),
                        \Botble\RealEstate\Facades\RealEstateHelper::getPropertyRelationsQuery(),
                    );
                @endphp

                @if ($propertiesForRent->isNotEmpty())
                    <h3 class="headifhouse">{{ __('Properties For Rent') }}</h3>
                    <div class="row rowm10">
                        @foreach ($propertiesForRent as $propertyForRent)
                            <div class="col-sm-6 col-lg-4 col-xl-3 colm10">
                                {!! Theme::partial('real-estate.properties.item', ['property' => $propertyForRent]) !!}
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
        </section>

        {!! apply_filters('ads_render', null, 'project_detail_after') !!}
    </div>
</main>

<script id="traffic-popup-map-template" type="text/x-custom-template">
    {!! Theme::partial('real-estate.projects.map', ['project' => $project]) !!}
</script>
