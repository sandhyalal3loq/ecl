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




