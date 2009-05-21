= Test::Rails

* http://www.zenspider.com/ZSS/Products/ZenTest/
* http://rubyforge.org/projects/zentest/
* mailto:ryand-ruby@zenspider.com

Test::Rails was dropped from ZenTest for the 4.0 release, but there
are still a lot of tests that use it.  This is Dray Lacy's extraction of
Test::Rails from ZenTest, updated to work with Rails 2.3.2 (at least
partially).

== DESCRIPTION

Test::Rails helps you build industrial-strength Rails code.

== FEATURES

* Test your controllers and views in isolation from each other.
* Test helper methods in isolation from your controllers, including those that
  use routing.
* Test::Rails provides some helpful assertions for dealing with collections,
  like #assert_empty and #assert_includes, as well as negated versions
  (#deny_empty, #deny_includes, etc.)

== SYNOPSYS

  # Typical View Test
  class RouteViewTest < Test::Rails::ViewTestCase

    fixtures :users, :routes, :points, :photos

    def test_delete
      # Set up instance variables for template
      assigns[:loggedin_user] = users(:herbert)
      assigns[:route] = routes(:work)

      # render template for the delete action in RouteController
      render

      # assert that there's a form with an action of "/route/destroy"
      assert_form form_url, :post do
        # with a hidden id field
        assert_input :hidden, :id
        # And a submit button that says 'Delete!'
        assert_submit 'Delete!'
      end

      # And a link back to the route so you don't delete it
      assert_links_to "/route/show/#{routes(:work).id}", 'No, I do not!'
    end

  end

  # Typical Layout Test
  require 'test/test_helper'

  # Create a dummy controller for layout views. This lets the setup use the
  # right path with minimum fuss.
  class LayoutsController < ApplicationController; end

  class LayoutsViewTest < Test::Rails::ViewTestCase

    fixtures :users, :routes, :points, :photos

    def test_default
      # Template set-up
      @request.request_uri = '/foo'
      assigns[:action_title] = 'Hello & Goodbye'

      # Render an empty string with the 'application' layout.
      render :text => '', :layout => 'application'

      # Assert content just like a regular view test.
      assert_links_to '/', 'Home'
      assert_links_to '/user', 'Login'
      deny_links_to '/user/logout', 'Logout'
      assert_title 'Hello &amp; Goodbye'
      assert_h 1, 'Hello &amp; Goodbye'
    end

  end

== REQUIREMENTS

* Ruby 1.6+, JRuby 1.1.2+, or rubinius
* Test::Unit or miniunit
* Hoe
* rubygems
* Rails 2.3.2 (for older versions of Rails, use Test::Rails 1.0.0)

== INSTALL

Using Rubygems:

* sudo gem install omghax-test_rails -s http://gems.github.com

Using Rake:

* rake test
* sudo rake install_gem

== LICENSE

(The MIT License)

Copyright (c) 2001-2006 Ryan Davis, Eric Hodel, Zen Spider Software

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

