SELECT DISTINCT
    h.host_id,
    g.guest_id
FROM airbnb_hosts AS h
JOIN airbnb_guests AS g
    ON h.gender = g.gender
    AND h.nationality = g.nationality;