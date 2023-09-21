class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    #Długość od 6 do 24 znaków
    return false if @password.length <6 || @password.length > 24
    #Co najmniej jedna wielka litera (A-Z)
    return false unless @password.match(/[A-Z]/)
    #Co najmniej jedna mała litera (a-z)
    return false unless @password.match(/[a-z]/)
    #Co najmniej jedna cyfra (0-9)
    return false unless @password.match(/\d/)
    #Co najmniej jeden znak specjalny (! @ # $ % & * + = : ; ? < >)
    return false unless @password.match(/[!@#\$%&*+=:;?<>]/)
    #Maksymalnie 2 powtarzające się symbole w ciągu
    return false if @password.match(/(.)\1{2,}/)

    true
  end
end
