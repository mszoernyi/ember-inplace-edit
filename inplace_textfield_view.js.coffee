App.InplaceTextField = Ember.View.extend
  tagName: 'div'
  classNames: ['inplace_field']
  classNameBindings: ['isEmpty:inplace_empty']

  isEditing: false

  isEmpty: (->
    return Ember.isEmpty(@get('content'))
  ).property('content')

  template: Ember.computed( ->
    return Ember.Handlebars.compile([
      '{{#if view.isEditing}}',
      '{{view Ember.TextField valueBinding="view.content"}}',
      '{{else}}',
      '{{#if view.isEmpty}}',
      'Please click here to edit',
      '{{else}}',
      '{{view.content}}',
      '{{/if}}',
      '{{/if}}'
    ].join('\n'))
  )

  focusOut: ->
    @get('controller').get('store').commit()
    @set('isEditing', false)

  click: ->
    @set('isEditing', true)
