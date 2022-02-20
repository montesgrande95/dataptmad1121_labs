
   
CREATE TABLE TEMPORARY
([AUTHOR ID]nvarchar(100)
, [PROFITS] FLOAT(10)
, [ValidFrom] datetime2 GENERATED ALWAYS AS ROW START
, [ValidTo] datetime2 GENERATED ALWAYS AS ROW END
, PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
)

--step 1--
SELECT t.title_id AS [TITLE ID], ta.au_id AS [AUTHOR ID], (t.advance * ta.royaltyper / 100) AS [ADVANCE], (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS [ROYALTY]
FROM titles as t
    INNER JOIN titleauthor AS ta ON t.title_id = ta.title_id
    INNER JOIN sales AS s ON ta.title_id = s.title_id
ORDER BY 1

--step 2--
SELECT t.title_id AS [TITLE ID], ta.au_id AS [AUTHOR ID], SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS [ROYALTY]
FROM titles as t
    INNER JOIN titleauthor AS ta ON t.title_id = ta.title_id
    INNER JOIN sales AS s ON ta.title_id = s.title_id
GROUP BY ta.au_id, t.title_id

--step 3--
SELECT ta.au_id AS [AUTHOR ID], SUM((t.advance * ta.royaltyper / 100)*(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) AS [PROFITS]
FROM titles as t
    INNER JOIN titleauthor AS ta ON t.title_id = ta.title_id
    INNER JOIN sales AS s ON ta.title_id = s.title_id
GROUP BY ta.au_id, t.title_id
ORDER BY 2 DESC