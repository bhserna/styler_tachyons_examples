# Styler gem and Tachyons components

A [middleman static site](https://middlemanapp.com) with a list of examples from the list of [Tachyons
components](https://tachyons.io/components), showing you how you can use the
[styler
gem](https://bhserna.com/styler-a-tool-to-compose-css-classes-with-ruby.html)
to define the styles composing the tachyons css classes.

## How to add a new example?

You need to add a new template on `source/example_templates/`.

On that directory, each directory is an `example_category` and each file inside
is considered an `example`.

For example the files `source/example_templates/navs/_basic.html.erb` will be
shown on the index page as:

```
- Navs
  - [Basic](examples/navs/basic) 
```

And will build a page with:

- The example title
- The example preview
- The example code
