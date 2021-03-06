# check_response will be used for error handling accross all scripts

def check_response(response, message, error_handling = :fatal_error, interactive_mode = false)
    if !response["ok"]
        STDERR.puts "Error: \"#{response["error"]}\" - " + message
        if error_handling == :fatal_error 
            exit 1
        end
    end    
end