require 'rails_helper'

RSpec.describe "Get Album", type: :request do
  describe "GET /api/v1/albums/:id" do
    let(:album) {
      # set up an album to get
      context "with valid album" do
        describe "GET spec/requests/api/v1/albums/get_album_spec.rb" do
          before do
            artist.albums.create!(name: "Cool Album")
            artist.albums.create!(name: "Lame Album")
          end
    
          it "vaild name" do
            expect(:name).to !nil?
            album = { name: !nil?, title: nil, body: nil }
          end

        end
      end
    }

    it "gets the album" do
      get api_v1_album_path(album)
      json_body = JSON.parse(response.body).deep_symbolize_keys

      # write an expectation about the response status code
      # write an expecation about the response json_body
    end
  end
end
