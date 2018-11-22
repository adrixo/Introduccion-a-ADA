with Text_IO;

-- Ejercicio6
-- Crea una variable String y almacenar un valor.
-- Convertir el valor introducido a real y multiplicar por 2.
procedure Main is
   inputString : String(1..4);
   convertedValue : Float;
   package Float_IO is new Text_IO.Float_IO(Float);
begin
   Text_IO.Put("Introduce el string a ser convertido: ");
   Text_IO.Get(inputString);

   convertedValue := Float'Value(inputString);
   convertedValue := convertedValue*2.0;

   Float_IO.Put(convertedValue);
end Main;
