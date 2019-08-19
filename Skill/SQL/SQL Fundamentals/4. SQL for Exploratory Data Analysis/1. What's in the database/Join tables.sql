SELECT company.name
-- Table(s) to select from
FROM company
    INNER JOIN fortune500
    ON company.ticker=fortune500.ticker;