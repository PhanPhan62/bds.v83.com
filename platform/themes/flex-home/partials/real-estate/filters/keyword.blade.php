<div class="form-group">
    <label for="keyword" class="control-label">{{ __('Keyword') }}</label>
    <div class="input-has-icon">
        <input type="text" id="keyword" class="form-control" name="k" value="{{ BaseHelper::stringify(request()->input('k')) }}"
            placeholder="{{ __('Enter keyword...') }}">
        <!-- <i class="far fa-search"></i> -->
        <i class="fa fa-search"></i>
    </div>
</div>
