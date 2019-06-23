class Application
    
    def call(env)
        resp = Rack::Response.new
        
        if am?
            resp.write "Good Morning!" 
        else 
            resp.write "Good Afternoon!"
        end

        resp.finish
    end

    def current_time
        Time.now.hour
    end

    def am?
        current_time < 12
    end

    def pm?
        current_time >= 12
    end
end