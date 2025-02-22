//Text file with numbers on each line
    $lines = file('location/of/text/file.txt');

        $i = 1;
        $n = 1;

        foreach ($lines as $line_num => $line) {

            $array[$n][] = explode(' ',$line);
            
            //Depending on the total numbers, you can group accordingly
            if ($i % 96 == 0)
            {
                $n++;
            }

            $i ++;
        }

       foreach ($array AS $number_array)
       {

          $count = count($number_array);

           $sum = [];

           foreach ($number_array AS $key => $ticket)
           {

               foreach ($ticket AS $key => $number)
               {

                   if (!isset($sum[$key])) $sum[$key] = 0;

                   $sum[$key] = $sum[$key] + $number;

               }

           }

          foreach ($sum AS $div)
          {
              $x =  round($div/$count)." ";
              echo sprintf('%02d', $x)." ";
          }

          echo "<br/>";


       }

        die("Complete...");
        
        //Try it our here: www.sun7lottery.com5