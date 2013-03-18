require 'spec_helper'

describe Movie do

  describe ".all_ratings" do

    it "returns all valid movie ratings" do
      Movie.all_ratings.should == ["G", "PG", "PG-13", "NC-17", "R"]
    end

  end

end