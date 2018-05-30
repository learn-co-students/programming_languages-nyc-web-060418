 def reformat_languages(languages)

new_hash = {}

languages.each do |symbol, program_language|
    program_language.each do |language, types|
      types.each do |key, value|
        if new_hash[language].nil?
          new_hash[language]={}
        end 
        if new_hash[language][:style].nil?
          new_hash[language][:style] = []
        end 
        new_hash[language][:style] << symbol
        if new_hash[language][key].nil?
          new_hash[language][key] = value
        end
      end
    end
  end
  new_hash
end