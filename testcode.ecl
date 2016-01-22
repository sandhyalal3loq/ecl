td := join(dataset1, dataset2, left.matchcol = right.matchclo, left outer, smart);

rec := record
 string1 name;
 integer1 tag;
end;

d := dataset([{'A',4},{'A',1},{'A',2},{'A',1}],rec);

d1 := sort(d, name, tag);

d2 := dedup(d1, left.name = right.name);

d3 := table(d, {name, tag}, name);  // dedup

d4 := table(d, {name, tag}, name, tag);


/*
    Example code - use without restriction.  
*/
Layout_Person := RECORD
  UNSIGNED1 P1;
  UNSIGNED1 P2;
  UNSIGNED1 P3;
END;

allPeople := DATASET([ {1,1,2},
                       {2,3,5},
                       {3,5,9}],Layout_Person);

ss := project(allpeople, transform(recordof(left) or { real amt },
  self.amt := sum(left.p1,left.p2, left.p3),
  self := left;
  ));
ss;


// TRIM
string12 san := '    AA  ';

san2 := trim(san, left, right);

output(length(san2));

// CONDITIONA SUM

integer k := 10;
integer k3 := -1;
integer k4 := 20;

p1 := (k>0);
p2 := (k3>0);

p3 := sum(if(k>0,k,0), if(k3>0,k3,0), if(k4>0,k4,0));

p3;