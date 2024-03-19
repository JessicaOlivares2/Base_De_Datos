    SELECT * FROM inhabitant
    SELECT * FROM inhabitant WHERE state = 'friendly'
    SELECT * FROM inhabitant WHERE job = 'weaponsmith' and state= 'friendly'
    SELECT * FROM inhabitant WHERE job like '%smith' and state= 'friendly'
    SELECT personid From inhabitant where name = 'Stranger'
    SELECT gold From inhabitant where name = 'Stranger'
    SELECT * FROM item where owner is null
    UPDATE item SET owner = '20' WHERE owner is null