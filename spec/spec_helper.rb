require 'rubygems'
#require 'simplecov'
#SimpleCov.start do
#	add_filter '/spec/'
#end

require 'cb'

Cb.configure do |config|
	config.use_json 	= true                    ########################################################
	config.dev_key  	= "WDhd88S735S3V2NWZKPD"  #"WDHH6P96RQD9FSDCZ0G7" # CB Ruby API key for unit tests
	config.time_out 	= 5					 	            # Register for your own key at http://api.careerbuilder.com/
	

end

require 'vcr'
require 'webmock'

VCR.configure do |c|
  c.cassette_library_dir     	= 'spec/cassettes'
  c.hook_into                	:webmock
  c.default_cassette_options 	= { :record => :new_episodes }
  c.configure_rspec_metadata!
end

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end


##########################################
##declaring the hash with all the 
##country code for education code
##########################################

# @country_code = ["US","UK","IN"]

# {'AH','BE','CA','CC','CE','CH','CN','CP','CS','CY','DE','DK','E1','ER','ES','EU','F1'
# 	,'FR','GC','GR','I1','IE','IN','IT','J1','JC','JS','LJ','M1','MY','NL','NO','PD','PI','PL','RM','RO','RX'
# 	,'S1','SE','SF','SG','T1','T2','UK','US','WH','WM','WR'}
