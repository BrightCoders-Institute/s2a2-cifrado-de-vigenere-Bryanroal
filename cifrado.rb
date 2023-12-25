class ProgCifrador
  puts 'Mensaje original'
  original1 = gets

  puts 'Mensaje clave'
  clave = gets

  def inicio(original1, clave)
    @original1 = original1
    @clave = clave
  end

  def original1_a_numeros
    @original1.upcase.chars.map { |c| c.ord - 'A'.ord }
  end

  def clave_a_numeros(longitud)
    @clave.upcase.chars.cycle.take(longitud).map { |c| c.ord - 'A'.ord }
  end

  puts @original1 && @clave
end
