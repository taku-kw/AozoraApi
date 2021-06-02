module Api
  module V1
    class ApiController < ApplicationController

      def get_by_title
        if params['title'].nil? then
          render json: []
        else
          params['limit'].nil? || (params['limit'] =~ /^[1-9][0-9]*$/).nil? ? limit = 3 : limit = params['limit']
          params['offset'].nil? || (params['offset'] =~ /^[1-9][0-9]*$/).nil? ? offset = 0 : offset = params['offset']
          record = Bookshelf.where('title like ?', '%' + params['title'] + '%').limit(limit).offset(offset)
          render :json => record
        end
      end

      def get_by_author
        if params['author'].nil? then
          render json: []
        else
          params['limit'].nil? || (params['limit'] =~ /^[1-9][0-9]*$/).nil? ? limit = 3 : limit = params['limit']
          params['offset'].nil? || (params['offset'] =~ /^[1-9][0-9]*$/).nil? ? offset = 0 : offset = params['offset']
          record = Bookshelf.where('author like ?', '%' + params['author'] + '%').limit(limit).offset(offset)
          render :json => record
        end
      end

      def get_by_class_number
        if params['class_number'].nil? then
          render json: []
        else
          params['limit'].nil? || (params['limit'] =~ /^[1-9][0-9]*$/).nil? ? limit = 3 : limit = params['limit']
          params['offset'].nil? || (params['offset'] =~ /^[1-9][0-9]*$/).nil? ? offset = 0 : offset = params['offset']
          record = Bookshelf.where('class_number like ?', '% ' + params['class_number'] + '%').limit(limit).offset(offset)
          render :json => record
        end
      end
      
    end
  end
end