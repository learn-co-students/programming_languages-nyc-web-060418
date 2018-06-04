require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    value.each do |language, properties|
      if new_hash[language] == nil
        new_hash[language] = properties
        new_hash[language][:style] = [key]
      else
        new_hash[language][:style] << key
      end
    end
  end  
  new_hash
end
