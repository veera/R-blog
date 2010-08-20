class AddUserTypeToUsers < ActiveRecord::Migration
    def self.up
      add_column :users, :user_type, :integer
      load_data
    end

    def self.down
      remove_column :users, :user_type
    end
  
    def self.load_data
      User.create(:name => 'admin', :email => 'admin@example.com', :hashed_password => '05ab2c0f72761bb3bb11cf33678d17138a3f9153',:salt => '-6129560480.904960706626966', :created_at => '2010-08-09 04:29:12', :updated_at => '2010-08-09 04:29:12', :user_type => 1)

      User.create(:name => 'tester', :email => 'tester@example.com', :hashed_password => 'd8004d8a17057aacdb04893f4173ef1d0dfef187',:salt => '-6124561380.454421507747693', :created_at => '2010-08-09 04:29:12', :updated_at => '2010-08-09 04:29:12')
    end
  end
