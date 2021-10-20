//SETUP
(
s.boot;


//DATABASE //
//g (DIC | GENE : SEQ)
g = Dictionary.new;
g.putPairs(['HPa_CUL4', File("2_HesperelaeaPalmeri_CUL4_cullin.txt".standardizePath, "r").readAllString]); //993 (331)
g.putPairs(['HPa_OCO', File("2_HesperelaeaPalmeri_OCO_constanks-like.txt".standardizePath, "r").readAllString]); //599 (199)
g.putPairs(['HPa_FAD6', File("2_HesperelaeaPalmeri_FAD6_.txt".standardizePath, "r").readAllString]); //760 (253)
g.putPairs(['HPa_OEW', File("2_HesperelaeaPalmeri_OEW_lupeolsynthases.txt".standardizePath, "r").readAllString]); //664 (221)
g.putPairs(['HPa_phan', File("2_HesperelaeaPalmeri_phan_phantastica.txt".standardizePath, "r").readAllString]); //505 (168)
g.putPairs(['HPa_rps', File("2_HesperelaeaPalmeri_rps16_chloroplast.txt".standardizePath, "r").readAllString]); //423 (141)
g.putPairs(['HPa_MO', File("2_HesperelaeaPalmeri_rRNAs_MO.txt".standardizePath, "r").readAllString]); //8075 (2691)
g.putPairs(['HPa_mit', File("2_HesperelaeaPalmeri_genome_mitochondrion.txt".standardizePath, "r").readAllString]); //658522 (219507)
g.putPairs(['HPa_chl', File("2_HesperelaeaPalmeri_genome_chloroplast.txt".standardizePath, "r").readAllString]); //155820 (51940)
g.putPairs(['ML_NADH', File("2_MagnoliaLatahensis_NADH-F_chloroplast.txt".standardizePath, "r").readAllString]); //1528 (509)
g.putPairs(['ML_chl', File("2_MagnoliaLatahensis_rcbL_chloroplast.txt".standardizePath, "r").readAllString]); //759 (253)
g.putPairs(['HPr_rcbl', File("2_HymenaeaProtera_rcbL.txt".standardizePath, "r").readAllString]); //348 (116)
g.putPairs(['PP_chl', File("2_PerseaPseudocarolinesis_rcbL_chloroplast.txt".standardizePath, "r").readAllString]); //699 (233)

//c (DIC | CODON : AMINO ACID)
c = Dictionary.new;
c.putPairs(['TAA','STOP', 'TAG','STOP', 'TGA','STOP']);
c.putPairs(['GCT','ala', 'GCC','ala', 'GCA','ala', 'GCG','ala']); //1-1
c.putPairs(['CGT','arg', 'CGC','arg', 'CGA','arg', 'CGG','arg', 'AGA','arg', 'AGG', 'arg']); //4-1
c.putPairs(['AAT','asp', 'AAC','asp', 'GAT','asp', 'GAC','asp']); //2-4
c.putPairs(['TGT','cys', 'TGC','cys']); //2-2
c.putPairs(['CAA','gln', 'CAG','gln']); //2-5
c.putPairs(['GAA','glu', 'GAG','glu']); //3-1
c.putPairs(['GGT','gly', 'GGC','gly', 'GGA','gly', 'GGG','gly']); //1-0
c.putPairs(['CAT','his', 'CAC','his']); //4-2
c.putPairs(['ATT','ile', 'ATC','ile', 'ATA','ile']); //1-4
c.putPairs(['TTA','leu', 'TTG','leu', 'CTT','leu', 'CTC','leu', 'CTA','leu', 'CTG','leu']); //1-3
c.putPairs(['AAA','lys', 'AAG','lys']); //4-0
c.putPairs(['ATG','met']); //1-5
c.putPairs(['TTT','phe', 'TTC','phe']); //1-6
c.putPairs(['CCT','pro', 'CCC','pro', 'CCA','pro', 'CCG','pro']); //1-8
c.putPairs(['TCT','ser', 'TCC','ser', 'TCA','ser', 'TCG','ser', 'AGT','ser', 'AGC','ser']); //2-0
c.putPairs(['ACT','thr', 'ACC','thr', 'ACA','thr', 'ACG','thr']); //2-1
c.putPairs(['TGG','try']); //1-7
c.putPairs(['TAT','tyr', 'TAC','tyr']); //2-3
c.putPairs(['GTT','val', 'GTC','val', 'GTA','val', 'GTG','val']); //1-2
c.putPairs(['NNN','']);

l = Dictionary.new;
l.putPairs(['leu', 1.3, 'ser', 2.0, 'arg', 4.1, 'asp', 2.4, 'val', 1.2, 'gly', 1.0, 'pro', 1.8, 'thr', 2.1, 'ala', 1.1, 'ile', 1.4, 'lys', 4.0, 'phe', 1.6, 'tyr', 2.3, 'cys', 2.2, 'gln', 2.5, 'his', 4.2, 'glu', 3.1, 'met', 1.5, 'try', 1.7, 'STOP', rrand(0.0, 5.0), '', 0]);
)
