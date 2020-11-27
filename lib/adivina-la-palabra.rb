class AdivinaLaPalabra
  
    def ocultar_palabra(palabra)
        @palabraAAdivinar = palabra.downcase
        @palabraOculta = "*" *palabra.size
        return @palabraOculta
    end 

    def destaparLetra (letra)
        letra = letra.downcase
        (0..@palabraAAdivinar.size).each do |index|
            if(@palabraAAdivinar[index] == letra)
                @palabraOculta[index] = letra
            end
        end
        return @palabraOculta
    end
end