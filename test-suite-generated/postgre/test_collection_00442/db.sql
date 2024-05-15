CREATE TEXT SEARCH DICTIONARY ispell (
                        Template=ispell,
                        DictFile=ispell_sample,
                        AffFile=ispell_sample
);
CREATE TEXT SEARCH DICTIONARY hunspell (
                        Template=ispell,
                        DictFile=ispell_sample,
                        AffFile=hunspell_sample
);
