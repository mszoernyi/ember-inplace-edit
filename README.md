# Ember.js addon: Inplace edit

ember-inplace-edit is a small addon to add inplace editing capabilities to you views.

## Installation

Download `inplace_textfield_view.js.coffee` and require it in your project.

## Usage

    <div class="row description">
      {{view App.InplaceTextField contentBinding="title"}}
    </div>

`title` is an attribute in your currently used scope, which is usally a model.

## Todos

1. add textarea
2. auto focus after switching to edit mode
3. make namespace configurable

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'add feature xyz'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

