class Micropost < ActiveRecord::Base
#-  attr_accessible :content, :user_id
   public
      def app_params
         params.require(:list).permit(:content, :user_id)
      end
   belongs_to :user


   validates :content, :length => { :maximum => 140 }

end
