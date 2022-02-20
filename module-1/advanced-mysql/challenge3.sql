CREATE TABLE most_profiting_authors1
(
    [AUTHOR ID] NVARCHAR(100)
    , [PROFITS] FLOAT(53)
)
SELECT ta.au_id AS [AUTHOR ID], SUM((t.advance * ta.royaltyper / 100)*(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100)) AS [PROFITS]
FROM titles as t
    INNER JOIN titleauthor AS ta ON t.title_id = ta.title_id
    INNER JOIN sales AS s ON ta.title_id = s.title_id
GROUP BY ta.au_id, t.title_id
ORDER BY 2 DESC