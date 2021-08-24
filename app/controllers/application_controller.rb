class ApplicationController < ActionController::Base
    protect_from_forgery with null: :null_session
end