EmberComponents = window.EmberComponents = Ember.Namespace.create()

EmberComponents.InplaceField = Ember.View.extend
  tagName: 'div'

  classNames: ['inplace_field']
  classNameBindings: ['isEmpty:inplace_empty']

  isEditing: false

  isEmpty: (->
    return Ember.isEmpty(@get('content'))
  ).property('content')
  emptyValue: "Click to add content for this field"

  layout: Ember.computed( ->
    return Ember.Handlebars.compile([
      '{{#if view.isEditing}}',
      '  {{view view.inputField valueBinding="view.content"}}',
      '{{else}}',
      '  {{#if view.isEmpty}}',
      '    {{view.emptyValue}}',
      '  {{else}}',
      '    {{#if view.template}}',
      '      {{yield}}',
      '    {{else}}',
      '      {{view.content}}',
      '    {{/if}}',
      '  {{/if}}',
      '{{/if}}'
    ].join('\n'))
  )

  focusOut: ->
    @get('controller').get('store').commit()
    @set('isEditing', false)
  click: ->
    @set('isEditing', true)

EmberComponents.FocusSupport = Ember.Mixin.create
  didInsertElement: ->
    @$().focus()

EmberComponents.InplaceTextArea = EmberComponents.InplaceField.extend
  inputField: Ember.TextArea.extend(EmberComponents.FocusSupport)

EmberComponents.InplaceTextField = EmberComponents.InplaceField.extend
  type: 'text'
  inputField: Ember.TextField.extend(EmberComponents.FocusSupport)
