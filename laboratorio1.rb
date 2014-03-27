
module Laboratorio1

	def Laboratorio1.palindromo?(cadena)
	  cadena2 = cadena.reverse
		longitud = cadena.length
		longitud.times do |k|		
			if(cadena2[k]== cadena[k])
      else
        return false
			end
    end
		return true
	end

	def Laboratorio1.cuenta_palabras(cadena)
		 split = cadena.split(/\W/)
     tabla = Hash.new
     numero=0;
     (split.length).times do |k|
      numero =0
      (split.length).times do |w|
        if(split[k]!=split[w])
        else
          numero = numero +1
        end
      end
      tabla[split[k]] = numero
    end
    return tabla
	end

	
	def Laboratorio1.hanoi(numero,origen,destino,media)
		if(numero==1)
			print "#{origen}-->#{destino}\n"
		else
			hanoi(numero-1,origen,media,destino)
			print "#{origen}-->#{destino}\n"
			hanoi(numero-1,media,destino,origen)

		end
	end

	def Laboratorio1.sort(array,orden)
	if(orden)
    (array.length-1).times do |i|
      ( array.length- i- 1).times do |d|
         if (array[d] > array[d+1]) 
          swap       = array[d]
          array[d]   = array[d+1]
          array[d+1] = swap
        end
      end
    end
  else 
  (array.length-1).times do |i|
      ( array.length- i- 1).times do |d|
         if (array[d] < array[d+1]) 
          swap       = array[d]
          array[d]   = array[d+1]
          array[d+1] = swap
        end
      end
    end
  end
    	return array	
	end


	def Laboratorio1.char_count(cadena,c)
		contador = 0;
		(cadena.length).times do |i|
			if(cadena[i]==c)
				contador +=1
			end
		end
		return contador
	end

	def Laboratorio1.atoi(cadena)
	  return cadena.to_i
  end	

end







