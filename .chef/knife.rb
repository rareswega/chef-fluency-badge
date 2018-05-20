# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "rares"
client_key               "#{current_dir}/rares.pem"
chef_server_url          "https://rareswega2.mylabserver.com/organizations/home"
cookbook_path            ["#{current_dir}/../cookbooks"]
