class CommentsController < ApplicationController
  before_action :load_commentable

  def index
    @comments = @commentable.comments
  end

  def new
  end

  private

    # def load_commentable
    #   resource, id = request.path.split('/')[1,2]
    #   @commentable = resource.singularize.classify.constantize.find(id)
    # end

    def load_commentable
      klass = [Article, Photo].detect { |c| params["#{c.name.underscore}_id"]}
      @commentable = klass.find(params["#{klass.name.underscore}_id"])
    end
end
