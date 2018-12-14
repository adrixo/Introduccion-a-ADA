with Text_IO;

-- Funcion recursiva:
-- Introducir dos numeros
-- Resuelve su maximo comun divisor
procedure Main is

   package Entero_IO is new Text_IO.Integer_IO(Integer);

   function euclides(number1 : Integer; number2 : Integer) return integer is
   begin
      if (number2 = 0)
      then
         return number1;
      else
         return euclides(number2, number1 mod number2);
      end if;
   end euclides;

   numero1 : Integer;
   numero2 : Integer;

   result : Integer;
begin
   Text_IO.Put("Enter first number: ");
   Entero_IO.Get(numero1);

   Text_IO.Put("Enter second number: ");
   Entero_IO.Get(numero2);

   if(numero2 > numero1)
   then
      result := euclides(numero2, numero1);
   else
      result := euclides(numero1, numero2);
   end if;

   Text_IO.Put("Result: ");
   Entero_IO.Put(result);

end Main;
