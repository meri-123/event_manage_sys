class CommentsController < ApplicationController
        def create
          @management= Management.find(params[:management_id])
          @comment = @management.comments.create(com_params)
          redirect_to management_path(@management)
        end

        def destroy
            @management = Management.find(params[:management_id])
            @comment = @management.comments.find(params[:id])
            @comment.destroy
            redirect_to management_path(@management), status: :see_other
          end
      
        private
          def com_params
            params.require(:comment).permit(:commenter, :body)
          end     
end
