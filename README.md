# Ember.js addon: Inplace edit

ember-inplace-edit is a small addon to add inplace editing capabilities to you views.

## Installation

Download `inplace_field_view.js.coffee` and require it in your project. This file contains a couple of Ember view which 
may be serperated in later version.

## Usage

**TextField**

    <div class="row description">
      {{view App.InplaceTextField contentBinding="title"}}
    </div>

`title` is an attribute in your currently used scope, which is usally a model.

**TextArea**

    <div class="row description">
      {{view App.InplaceTextArea contentBinding="title"}}
    </div>

`title` is an attribute in your currently used scope, which is usally a model.

Both versions are rendering the content for the given field and registering a click event on its surrounding div. The view will be replaced with an HTML input 
field or textarea for editing. After a field is loosing focus the changes will be stored and commited.

**Additional Options**

If a field content is empty and not in editing mode, a default text will be shown. You can customize this text by setting a value for attribute `emptyValue`

    <div class="row description">
      {{view App.InplaceTextArea contentBinding="title" emptyValue="click here to add some text"}}
    </div>

You may need to render the text with some customization (e.g. rendering with markdown helper). For these cases just pass a block to a view and make sure you are using a hash (#)

    <div class="row description">
      {{#view App.InplaceTextArea contentBinding="title"}}
        Render this custom text if not editing and not empty
        {{markdown title}}
      {{/view}}
    </div>

## Todos

1. make namespace configurable
2. add option to disable store.commit?!?!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'add feature xyz'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

