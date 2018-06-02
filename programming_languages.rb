require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |language, lang_data|
      unless new_hash.include?(language)
        new_hash[language] = lang_data
        new_hash[language][:style] = []
      end
      new_hash[language][:style] << style
    end
  end
  new_hash
end
