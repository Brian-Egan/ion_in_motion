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
