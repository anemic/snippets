# relation examples 

# different foreign key 
has_many :friendships, :class_name => 'Friend', :foreign_key => :user_id

# destroy dependents 
has_many :user_preferences, :dependent => :destroy
 
# 
belongs_to :ip_address, :counter_cache => true

# has_and_belongs_to_many
# in migration
def self.up
  create_table 'categories_products', :id => false do |t|
    t.column :category_id, :integer
    t.column :product_id, :integer
  end
end

# models/product.rb
has_and_belongs_to_many :categories

# models/category.rb
has_and_belongs_to_many :products

# has_many :through
# models/categorization.rb
belongs_to :product
belongs_to :category

# models/product.rb
has_many :categorizations
has_many :categories, :through => :categorizations

# models/category.rb
has_many :categorizations
has_many :products, :through => :categorizations