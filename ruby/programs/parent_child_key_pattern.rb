
require 'rubygems'
require 'bundler/setup'
require 'byebug'
require 'rspec'
Bundler.require(:default)

# Lets say we have a hash in form given below


#  users = {
#      name: "suraj",
#      address: {
#          personal: {
#              city: "Delhi",
#              landmark: "kamal hotel"
#          },
#          office: {
#              city: "Noida",
#              area: {
#                 landmark: "santan mandir"
#              }

#          }
#      }
#  }



# Now we have to convert above hash into format given below


#  {
#     users_name: "suraj",
#     users_name_address_personal_city: "Delhi",
#     users_name_address_personal_landmark: "kamal hotel",
#     users_name_address_office_city: "Noida",
#     users_name_address_office_area_landmark: "Noida",
#  }

#  we need to make a key which includes both parent i.e users and then its child like name






users = {
     name: "suraj",
     address: {
         personal: {
             city: "Delhi",
             landmark: "kamal hotel"
         },
         office: {
             city: "Noida",
             area: {
                landmark: "santan mandir"
             }

         }
     }
    }


def convert_into_required_format(users, parent_key, final_object = {})
    users.keys.each do |key|
        if users[key].is_a?(Hash)
            #if the value of key is hash than we will call method again with users[:key] as new users object
            # and now parent_key becomes "users_#{key}" (only for first iteration)
            # parent_key + "_" + key.to_s
            convert_into_required_format(users[key], parent_key + "_" + key.to_s, final_object)
        else
            final_object[parent_key + "_" + key.to_s] = users[key]
            ap final_object
        end
    end

    return final_object
end

convert_into_required_format(users, "users", {})


describe "This is kind of creating bread crumbs" do

    input_data = {
        name: "suraj",
        address: {
            personal: {
                city: "Delhi",
                landmark: "kamal hotel"
            },
            office: {
                city: "Noida",
                area: {
                   landmark: "santan mandir"
                }
   
            }
        }
       }

    expected_data = { 
                      "users_name"=>"suraj",
                      "users_address_personal_city"=>"Delhi",
                      "users_address_personal_landmark"=>"kamal hotel",
                      "users_address_office_city"=>"Noida",
                      "users_address_office_area_landmark"=>"santan mandir"
                    }

    it "Should return data as expected data" do
      expect(convert_into_required_format(input_data, "users", {})).to eq expected_data
    end

end
