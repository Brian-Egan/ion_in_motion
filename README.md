# Ion In Motion

## This gem is currently not production ready! I'll update soon.

This gem is a thin wrapper which makes it easy to use the wonderful IonIcons in a RubyMotion project. 

Browse the available IonIcons [here](http://ionicons.com/)

The gem relies on the [IonIcons CocoaPod](https://github.com/sweetmandm/ionicons-iOS).

## Usage  

Use **Ion in Motion** to quickly return a UILabel, UIImage, UIButton or UIFont.

**UILabel**
Use `Ion.label` to create UILabels. The icon name is required, and it takes `size` and `color` as optional parameters. The default is for a 18 pt font and black text

    label = Ion.label(:your_icon_name) #Returns UILabel
    label = Ion.label(:you_icon_name, size: 24) #Returns UILabel with icon and 24pt text.
    label = Ion.label(:your_icon_name, size: 24, color: "green") #You get the gist.
        # The color argument accepts a string or a UIColor


**UIImage**
Use `Ion.image` to quickly create a UIImage. The icon name is required, and `color` is an optional argument. Default is for a black 512x512 image. These are being created from 512x512 PNGs.

    image = Ion.image(:your_icon_name, color: :orange.uicolor) #Returns UIImage
    image = Ion.image(:your_icon_name, color: "green")
    image = Ion.image(:your_icon_name)


**UIButton**
Use `Ion.button` to create UIButtons. The icon name is required, and optional arguments are `font_size`, `background_color`, `text_color`, `height` and `width`. The defaults are 18pt font, white background, black text and 50x50.

    button = Ion.button(:your_icon_name) #Returns UIButton
    button = Ion.button(:you_icon_name, height: 50, width: 100, text_color: :green.uicolor, background_color: "orange") # Returns a very ugly UIButton

The button's accessibility label is automatically set to a stringified version of the icon name with any 'Android/iOS' prefix removed. i.e. A button with icon `:android_alarm_clock` will have the accessibility label `alarm clock`.


**UIFont**
Returns a UIFont instance. I'm not sure what use this is outside of `image` and `label` methods, but you can use it separately too. It takes a `size` parameter, but defaults to 18pt without it.
    font = Ion.font(size)

####Icon Names
I've shortened the names of the icons used by the IonIcons Cocoapod to make them a little easier to use. None are prefixed by `ion_`. You can browse the list in [lib/icon_codes.md](https://github.com/Brian-Egan/ion_in_motion/blob/master/lib/ion/icon_codes.md).

To visually browse IonIcons, check out their [homepage](http://ionicons.com/), to translate those names simply replace dashes (-) with underscores (_) and remove the `ion` prefix. i.e. `ion-chevron-right` would be `chevron_right`. It's simpler and cleaner this way.

---
### Installation
Easy-peasy.
    1. Add `gem 'ion_in_motion', :git => 'git://github.com/Brian-Egan/ion_in_motion.git'` to your project's Gemfile.
    3. Run `bundle install`. 
    4. Enjoy!