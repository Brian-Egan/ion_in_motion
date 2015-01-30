describe "Ion Methods" do

  describe "Checking Fonts" do
    it "no size specified" do
      Ion.font.class.should == UICTFont
    end

    it "size 18" do
      Ion.font(24).class.should == UICTFont
    end
  end

  describe "Creates a label" do
    it "should be a label" do
      Ion.label(:alert_circled, size: 16).class.should == UILabel
    end
  end

  describe "Created a button" do
    it "should be a button (name only)" do
      Ion.button(:alert_circled).class.should == UIButton
    end

    it "should be 75px tall" do
      Ion.button(:alert_circled, height: 75).height.should == 75
    end

    it "should be 100 px wide" do
      Ion.button(:alert_circled, width: 100).width.should == 100
    end

     it "should be 50 px tall" do
      Ion.button(:alert_circled).width.should == 50
    end

     it "should be 50 px wide" do
      Ion.button(:alert_circled).width.should == 50
    end

    it "should be have an accessibility label" do
      Ion.button(:alert_circled).accessibilityLabel.should == "alert circled"
    end

    it "accessibility label should be formatted properly" do
      Ion.button(:android_arrow_dropdown).accessibilityLabel.should == "arrow dropdown"
    end


    it "should be have a white background" do
      Ion.button(:alert_circled).backgroundColor.should == :white.uicolor
    end

    it "should be have a green background" do
      Ion.button(:alert_circled, background_color: "green").backgroundColor.should == :green.uicolor
    end

    it "should have black text" do
      Ion.button(:alert_circled).titleColor.should == :black.uicolor
    end

    it "should have orange text" do
      Ion.button(:alert_circled, text_color: "orange").titleColor.should == :orange.uicolor
    end

     it "should have purple text" do
      Ion.button(:alert_circled, title_color: :purple.uicolor).titleColor.should == :purple.uicolor
    end

  end


  describe "Creating an image" do
    it "should be an image (Only name specific)" do
      Ion.image(:alert_circled).class.should == UIImage
    end
    it "should be an image (Name and Size)" do
      Ion.image(:alert_circled, size: 50).class.should == UIImage
    end
    it "should be an image (Name, Size, Color specified)" do
      Ion.image(:alert_circled, size: 50, color: :green.uicolor).class.should == UIImage
    end
  end



end
