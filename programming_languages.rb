require "pry"
def reformat_languages(languages)
  new_hash = { } #build a new hash
  languages.each do |style, data| #style: oo, functional. data: hash
    data.each do |language_name, description| #lang_name: ruby, etc. describe: hash
       #set lang_name to be the key on top level
       #the value will be the hash(type=>...)
       if new_hash[language_name] == nil
          new_hash[language_name] = description
          #set style key empty so we can add the style later
          new_hash[language_name][:style] = []
        end
        #add style to new_hash
        #if the same lang_name, it will go straight here and add style
        new_hash[language_name][:style] << style
    end
  end
  new_hash
end
