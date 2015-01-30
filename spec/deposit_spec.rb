describe "Deposits" do
  it "should create" do
    ATM::Deposit.create.should == true
  end
end
