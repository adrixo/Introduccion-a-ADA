package body Monitor is

   protected body contadorCompartido is

      function lectura return Integer is
      begin
         return contador;
      end lectura;

      procedure incrementar is
      begin
         contador := contador + 1;
      end incrementar;

   end contadorCompartido;

end Monitor;
