# Ion In Motion

This gem is a thin wrapped which makes it easy to use the wonderful IonIcons in a RubyMotion project. 

You can browse the available IonIcons [here](http://ionicons.com/)

The gem relies completely on the [IonIcons CocoaPod](https://github.com/sweetmandm/ionicons-iOS).

---
## Usage  

You can use **Ion in Motion** to quickly return a UILabel or UIImage.

**UILabel**
Use `Ion.label` to create UILabels. The icon name is required, and it takes `size` and `color` as optional parameters. The default is for a 18 pt font and black text

    label = Ion.label(:your_icon_name) #Returns UILabel
    label = Ion.label(:you_icon_name, size: 24) #Returns UILabel with icon and 24pt text.
    label = Ion.label(:your_icon_name, size: 24, color: "green") #You get the gist.
        # The color argument accepts a string or a UIColor


**UIImage**
Use `Ion.image` to quickly create a UIImage. The icon name is required, and `size` and `color` are optional arguments. Default is for a black 124x124 image. These are being created from the font, so it scales very nicely.

    image = Ion.image(:your_icon_name, size: 50, color: :orange.uicolor) #Returns UIImage
    image = Ion.image(:your_icon_name, color: "green")
    image = Ion.image(:your_icon_name)

**UIFont**
Returns a UIFont instance. I'm not sure what use this is outside of `image` and `label` methods, but you can use it separately too. It takes a `size` parameter, but defaults to 18pt without it.
    font = Ion.font(size)

####Icon Names
I've shortened the names of the icons used by the IonIcons Cocoapod to make them a little easier to use. Non are prefixed by `ion_`. You can browse the list [here]().

To visually browse IonIcons, check out their [homepage](http://ionicons.com/), to translate those names simply replace dashes (-) with underscores (_) and remove the `ion` prefix. i.e. `ion-chevron-right` would be `chevron_right`. It's simpler and cleaner this way.

---
### Installation
Easy peasy.
    1. Add `gem 'ion_in_motion', :git => 'git://github.com/Brian-Egan/ion_in_motion.git'` to your project's Gemfile.
    2. Add `require 'Ion'` to your Rakefile.
    3. Run `bundle install`. 
    4. Enjoy!