module Api
    module V1
        class PlaylistController < ApplicationController
            def def index
                @playlists = Playlist.where(user_id: params[:user_id])
                render json: @playlists
            end
            def show
                @playlists = Playlist.find(params[:id])
                render json: @playlists
                
            end
            def create
                @playlists = Playlist.new(user_id: params[:user_id], playlist_params)

                @playlist.save
                render json: @playlists
            end
        end
    end
end

