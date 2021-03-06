#!/bin/bash

SSIMP="compiled/ssimp-linux-0.4"

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt

$SSIMP --gwas gwas/small.random.txt.gz --ref ref/small.vcf.sample.vcf.gz --out output.txt


$SSIMP --gwas gwas/small.random.p.b.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt

$SSIMP --gwas gwas/small.random.chr.pos.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt


$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.range 22:18000000-22:18100075

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.range 22


$SSIMP --gwas gwas/GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt.gz --ref ref/sub1KG-tiny/chr{CHRM}.vcf.gz  --out output.txt --impute.range 20-22

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.snp gwas/listofimputesnps.txt

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.snp <(echo rs2587101 rs2277831 | tr ' ' '\n')


$SSIMP gwas/GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt.gz ref/sub1KG-tiny/chr{CHRM}.vcf.gz output.txt --sample.names ref/link.to.1kg.data/integrated_call_samples_v3.20130502.ALL.panel/sample/super_pop=EUR --impute.snps <(echo rs148911000 rs111659000 rs183059100 rs76979500 rs150095300 rs115012100 rs187649300 rs560286600 rs78808100 | tr ' ' '\n')

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --tag.snp gwas/listoftagsnps.txt

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --tag.snp <(echo rs2305001 rs10854521 | tr ' ' '\n')


$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --sample.names ref/filename.samples.small.txt

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --sample.names ref/filename.samples.pop.txt/sample/super_pop=EAS

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --lambda 0.01

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.maf 0.05

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --tag.maf 0.05

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --window.width 500000 --flanking.width 100000

$SSIMP --gwas gwas/small.random.n.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --missingness dep

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --log my_ssimp_logfile






$SSIMP --gwas gwas/small.random.x.txt --ref ref/sub1KG-tiny/chrX.vcf.gz --out output.txt

$SSIMP --gwas gwas/small.random.x.txt --ref ref/sub1KG-tiny/chrX.vcf.gz --out output.txt --impute.snp <(echo rs183055800 rs146115300 rs150092800 | tr ' ' '\n')

$SSIMP --gwas gwas/small.random.x.txt --ref ref/sub1KG-tiny/chrX.vcf.gz --out output.txt --impute.snp <(echo X:18008535 X:18010084 X:18037863 | tr ' ' '\n')

$SSIMP --gwas gwas/small.random.x.txt --ref ref/sub1KG-tiny/chrX.vcf.gz --out output.txt --impute.snp <(echo 23:18008535 23:18010084 23:18037863 | tr ' ' '\n')

$SSIMP --gwas gwas/small.random.txt --ref ref/small.vcf.sample.vcf.gz --out output.txt --impute.snp <(echo X:18008535 X:18010084 X:18037863 | tr ' ' '\n')


### $SSIMP --gwas gwas/small.random.txt --ref 1KG/EUR --out output.txt

$SSIMP --gwas gwas/small.random.txt ~/reference_panels/1000genomes/ALL.chr{CHRM}.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz output.txt --sample.names ~/reference_panels/1KG/integrated_call_samples_v3.20130502.ALL.panel/sample/super_pop=EUR
