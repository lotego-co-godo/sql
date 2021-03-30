select (count()100/(Select Count(*) From customer)) as Pesel from customer where pesel is not null and nip is null;
