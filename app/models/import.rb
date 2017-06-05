class Import
    
    def self.add_people
        file = File.read('lib/assets/data.json')
        result = JSON.parse(file)

        result.each do |p|
            np = Person.new
            np.first_name = p["first_name"]
            np.last_name = p["last_name"]
            np.email = p["email"]
            np.btc_address = p["btc_address"]
            np.ip_address = p["ip_address"]
            np.save
        end
        puts
        puts 'Done.'
    end
    
end
