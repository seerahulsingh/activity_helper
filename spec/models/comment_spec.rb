require 'spec_helper'

	describe Comment do

		let(:user) { FactoryGirl.create(:user) }
		let(:activity) { FactoryGirl.create(:activity, user: user) }

		before do

			@comment=activity.comments.build(content:"hi! how are you?")
			@comment.user = user
		end

		subject { @comment }

		it { should respond_to(:content) }
		it { should respond_to(:user_id) }
		it { should respond_to(:activity_id) }
		it { should respond_to(:activity) }
		it { should respond_to(:user) }

		it { should be_valid }

		describe "when content is not present" do
    	before { @comment.content = nil }
    	it { should_not be_valid }
  	end

  	describe "when user_id is not present" do
    	before { @comment.user_id = nil }
    	it { should_not be_valid }
  	end

  	describe "when activity_id is not present" do
    	before { @comment.activity_id = nil }
    	it { should_not be_valid }
  	end
	end
