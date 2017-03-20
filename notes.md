Off the bat, this is weird to start with:

```ruby
class Customer
  attr_accessor :first_name, :last_name

  def initialize(name)
    @name = name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
```

Are we entering the name as a string and then parsing it out? Given that they are attr_accessor for first and last, it feels like we should save only (name) or (first and last)

Got this error when trying to run the console:

```
Sorry, you can't use byebug without Readline. To solve this, you need to
    rebuild Ruby with Readline support. If using Ubuntu, try `sudo apt-get
    install libreadline-dev` and then reinstall your Ruby.
```

Had to add `gem 'rb-readline'` to get it to work. 

The `add_review` method on customer should have some inputs

Having this line in the Restaurants class is a bit weird: `self.name=(name)` I don't think `name` needs `()` around it. 