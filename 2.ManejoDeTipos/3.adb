with Text_IO;

-- Traducir un numero romano introducido por consola
-- se utilizara un array de registros con dos campos
-- ( caracter romano - entero )
-- MCMXC = 1990
-- MMVIII = 2008
-- MDCLXVI = 1666
procedure Main is
   --type T_Romano is (I,V,X,L,C,D,M);
   --type T_Romano_Minus is (i,v,x,l,c,d,m);
   --type T_RomanoValue is array(1..7) of Integer;

   package Entero_IO is new Text_IO.Integer_IO(Integer);

   type T_Equivalencia is
      record
         numRomano : Character;--T_Romano;
         numRomanoMinus : Character;--T_Romano_Minus;
         valor : Integer; --T_RomanoValue := (1,5,10,50,100,500,1000);
      end record;

   type Diccionario is array(1..7) of T_Equivalencia;
   type ArrayDatos is array(Positive range <>) of Integer;

   diccionarioRomano : Diccionario;
   inputString : String(1..10);
   strinLen : Integer;

   --function igualito(Left  : in String; Right : in T_Romano) return Boolean is
   --begin
   --   return Left = T_Romano'Image (Right);
   --end igualito;

   --procedure convertir(numeroRomano: in Character)  is
   --begin
   --   equivalencia.numRomano := T_Romano'First;
   --   loop
   --end convertir;

begin
   diccionarioRomano(1).numRomanoMinus := 'i';
   diccionarioRomano(1).numRomano := 'I';
   diccionarioRomano(1).valor := 1;

   diccionarioRomano(2).numRomanoMinus := 'v';
   diccionarioRomano(2).numRomano := 'V';
   diccionarioRomano(2).valor := 5;

   diccionarioRomano(3).numRomanoMinus := 'x';
   diccionarioRomano(3).numRomano := 'X';
   diccionarioRomano(3).valor := 10;

   diccionarioRomano(4).numRomanoMinus := 'l';
   diccionarioRomano(4).numRomano := 'L';
   diccionarioRomano(4).valor := 50;

   diccionarioRomano(5).numRomanoMinus := 'c';
   diccionarioRomano(5).numRomano := 'C';
   diccionarioRomano(5).valor := 100;

   diccionarioRomano(6).numRomanoMinus := 'd';
   diccionarioRomano(6).numRomano := 'D';
   diccionarioRomano(6).valor := 500;

   diccionarioRomano(7).numRomanoMinus := 'm';
   diccionarioRomano(7).numRomano := 'M';
   diccionarioRomano(7).valor := 1000;

   Text_IO.Put("Romano: ");
   Text_IO.Get_Line(inputString, strinLen);

   declare
      elementosConvertidos : ArrayDatos(1..strinLen);
      conversion : Integer;
   begin
      --Convertimos los valores
      for i in 1..strinLen loop
         for j in 1..7 loop
            if ((diccionarioRomano(j).numRomanoMinus = inputString(j))
               or (diccionarioRomano(j).numRomano = inputString(j)))
            then
               elementosConvertidos(i) := diccionarioRomano(j).valor;
            end if;
         end loop;
      end loop;

      conversion := elementosConvertidos(1);

      --convertimos
      for i in 2..strinLen loop
         Entero_IO.Put(elementosConvertidos(i));
         if(elementosConvertidos(i) > elementosConvertidos(i-1)) then
            conversion := conversion - elementosConvertidos(i-1);
            conversion := conversion + (elementosConvertidos(i) - elementosConvertidos(i-1));
         else
            conversion := conversion + elementosConvertidos(i);
         end if;
      end loop;

      Text_IO.Put("conversion: ");
      Entero_IO.Put(conversion);
   end;

end Main;
