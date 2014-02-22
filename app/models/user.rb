class User < ActiveRecord::Base
   public
         def app_params
                  params.require(:list).permit(:email, :name)
         end

   #-  attr_accessible :email, :name 
   has_many :microposts

end
