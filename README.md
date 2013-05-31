# DraperSimpleForm

When getting association input for [SimpleForms](https://github.com/plataformatec/simple_form)
it doesn't apply decorators from [Draper](https://github.com/drapergem/draper),
this solves that problem.

## Installation

Add this line to your application's Gemfile:

    gem 'draper_simple_form', require: "draper/simple_form"

And then execute:

    $ bundle

## Usage

Now whenever you do:

```erb
<%= simple_form_for @user do |f| %>
  <%= f.association :personas %>
  <%= f.button :submit %>
<% end %>
```

The association object should be decorated

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
