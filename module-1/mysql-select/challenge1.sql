SELECT a.au_id AS [AUTHOR ID], a.au_lname AS [LAST NAME], a.au_fname AS [FIRST NAME], t.title AS [TITLE], p.pub_name AS [PUBLISHER]
FROM authors as a
    INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS t ON ta.title_id = t.title_id
    INNER JOIN publishers as p ON t.pub_id = p.pub_id
ORDER BY [AUTHOR ID]