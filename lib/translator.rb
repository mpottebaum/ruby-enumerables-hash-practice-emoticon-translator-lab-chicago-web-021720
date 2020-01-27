# require modules here
require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  emoticons.each_pair do |meaning, e_array|
    new_hash[:get_meaning][e_array[1]] = meaning
  end
  
  emoticons.each_pair do |meaning, e_array|
    new_hash[:get_emoticon][e_array[0]] = e_array[1]
  end
  
  new_hash
end

emoticons = load_library("lib/emoticons.yml")
pp emoticons

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end