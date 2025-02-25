<div class="search-box">
    <div class="screen-darken"></div>
    <div class="search-box-content">
        <div class="d-md-none bg-primary p-2">
            <span class="text-white">{{ __('Filter') }}</span>
            <span class="float-right toggle-filter-offcanvas text-white">
                <i class="far fa-times-circle"></i>
            </span>
        </div>
        <div class="search-box-items">
            <div class="row ml-md-0 mr-md-0">
                <div @class(['px-1', 'col-xl-3 col-lg-2 col-md-4' => is_plugin_active('location'), 'col-xl-5 col-lg-4 col-md-8' => ! is_plugin_active('location')])>
                    {!! Theme::partial('real-estate.filters.keyword') !!}
                </div>

                @if (is_plugin_active('location'))
                    <div class="col-lg-2 col-md-4 px-1">
                        {!! Theme::partial('real-estate.filters.city') !!}
                    </div>
                @endif
                <div class="col-lg-2 col-md-4 px-1">
                    {!! Theme::partial('real-estate.filters.choices', ['type' => $type, 'categories' => $categories, 'labelDefault' => __('Type, category...'), 'extraChoices' => $extraChoices ?? null]) !!}
                </div>
                @if ($type == 'property')
                    <div class="col-lg-2 col-md-4 px-1 mb-2">
                        <label for="select-type" class="control-label">{{ __('Price range') }}</label>
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuPrice" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <span>{{ __('All prices') }}</span>
                            </button>
                            <div class="dropdown-menu" style="min-width: 20em;" aria-labelledby="dropdownMenuPrice">
                                <div class="dropdown-item">
                                    @php
                                        $calc = [
                                            [
                                                'number' => 1000000000,
                                                'label' => '__value__ ' . __('billion')
                                            ],
                                            [
                                                'number' => 1000000,
                                                'label' => '__value__ ' . __('million')
                                            ],
                                            [
                                                'number' => 1000,
                                                'label' => '__value__ ' . __('thousand')
                                            ],
                                            [
                                                'number' => 0,
                                                'label' => '__value__'
                                            ],
                                        ];
                                        $symbol = '';
                                        $currency = get_application_currency();
                                        if ($currency) {
                                            $symbol = ' (' . $currency->symbol . ')';
                                        }
                                    @endphp
                                    <div class="form-group min-max-input" data-calc="{{ json_encode($calc, true) }}" data-all="{{ __('All prices') }}">
                                        <div class="row">
                                            <div class="col-5 pr-1">
                                                <label for="min_price" class="control-label">{{ __('Price from') . $symbol }}</label>
                                                <input type="number" name="min_price" class="form-control min-input" id="min_price"
                                                       value="{{ BaseHelper::stringify(request()->input('min_price')) }}" placeholder="{{ __('From') }}" min="0" step="1">
                                                <span class="position-absolute min-label d-none"></span>
                                            </div>
                                            <div class="col-5 px-1">
                                                <label for="max_price" class="control-label">{{ __('Price to') . $symbol }}</label>
                                                <input type="number" name="max_price" class="form-control max-input" id="max_price"
                                                       value="{{ BaseHelper::stringify(request()->input('max_price')) }}" placeholder="{{ __('To') }}" min="0" step="1">
                                                <span class="position-absolute max-label d-none"></span>
                                            </div>
                                            <div class="col-2 px-0 btn-min-max" style="align-self: flex-end">
                                                <button class="btn btn-primary">{{ __('OK') }}</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 px-1 mb-2">
                        <label for="select-type" class="control-label">{{ __('Square range') }}</label>
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuSquare" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <span>{{ __('All squares') }}</span>
                            </button>
                            <div class="dropdown-menu" style="min-width: 20em;" aria-labelledby="dropdownMenuSquare">
                                <div class="dropdown-item">
                                    {!! Theme::partial('real-estate.filters.square') !!}
                                </div>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="col-lg-2 col-md-4 px-1">
                        {!! Theme::partial('real-estate.filters.floor') !!}
                    </div>
                    <div class="col-lg-2 col-md-4 px-1">
                        <label for="select-type" class="control-label">{{ __('Flat range') }}</label>
                        <div class="dropdown mb-2">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuFlat" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <span>{{ __('All squares') }}</span>
                            </button>
                            <div class="dropdown-menu" style="min-width: 20em;" aria-labelledby="dropdownMenuFlat">
                                <div class="dropdown-item">
                                    {!! Theme::partial('real-estate.filters.flat') !!}
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
                <div class="col-lg-2 col-xl-1 col-md-2 px-1 button-search-wrapper" style="align-self: flex-end;">
                    <div class="btn-group text-center w-100 ">
                        <button type="submit" class="btn btn-primary btn-full">{{ __('Search') }}</button>
                        <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="reset">{{ __('Reset filters') }}</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
