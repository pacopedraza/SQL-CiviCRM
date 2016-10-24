SELECT 
c.display_name AS `Contact Display Name`,
   c.organization_name AS `Employer Organization Name`,
count(cc.id) AS `Number (Count) of cases`
FROM 
civicrm_contact c
INNER JOIN civicrm_case_contact cc ON c.id = cc.contact_id
INNER JOIN civicrm_case ca ON cc.case_id = ca.id
WHERE
ca.status_id = 1
GROUP BY
c.id,
c.display_name,
c.organization_name
