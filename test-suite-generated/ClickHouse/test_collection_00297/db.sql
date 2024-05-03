DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
    stringColumn String
) ENGINE = Memory();
INSERT INTO defaults values ('<common tag>hello, world<tag>'), ('<script desc=content> some content </script>'), ('<![CDATA[hello, world]]>'), ('white space    collapse');
