class Pop < ActiveRecord::Base
  belongs_to :subPops
  belongs_to :prePops
  belongs_to :postPops
end
