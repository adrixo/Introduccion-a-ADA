with Text_IO;

-- Traducir un numero romano introducido por consola
-- se utilizara un array de registros con dos campos
-- ( caracter romano - entero )
-- MCMXC = 1990
-- MMVIII = 2008
-- MDCLXVI = 1666
procedure Main is
   type T_Romano is (I,V,X,L,C,D,M);
   type T_Romano_Minus is (i,v,x,l,c,d,m);
   type T_RomanoValue is array(1..7) of Integer;

   type T_Equivalencia is
      record
         numRomano : T_Romano;
         numRomanoMinus : T_Romano_Minus;
         valores : T_RomanoValue := (1,5,10,50,100,500,1000);
      end record;

   inputString : String(1..8);
   equivalencia : T_Equivalencia;

   function igualito(Left  : in String; Right : in T_Romano) return Boolean is
   begin
      return Left = T_Romano'Image (Right);
   end igualito;

   procedure convertir(numeroRomano: in Character)  is
   begin
      equivalencia.numRomano := T_Romano'First;
      loop
         exit when (equivalencia.numRomano = T_Romano'Last);
         Text_IO.Put("    ");
         Text_IO.Put(numeroRomano'Image);
         Text_IO.Put("-");
         Text_IO.Put(T_Romano'Image(equivalencia.numRomano));
         Text_IO.Put("    ");
         if( igualito(numeroRomano'Image, equivalencia.numRomano) ) then
            Text_IO.Put_Line(T_Romano'Image(equivalencia.numRomano));
         end if;
         equivalencia.numRomano := T_Romano'Succ(equivalencia.numRomano);
      end loop;
      Text_IO.Put_Line(T_Romano'Image(equivalencia.numRomano));
   end convertir;

begin
  Text_IO.Put("Introduce un caracter romano: ");
  Text_IO.Get(inputString);

  Text_IO.Put("El caracter equivale a: ");
  for i in 1..8
   loop
      convertir(inputString(i));
   end loop;

end Main;
