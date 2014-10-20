# 1. Given a state, I can obtain a list of representatives in the House for that state.
SELECT politicians.title, politicians.firstname, politicians.lastname
FROM politicians INNER JOIN states ON politicians.state_id = states.id
WHERE politicians.title = "Rep" AND states.name = "CA";

# 2. Given a state, I can obtain the two senators for that state.
SELECT politicians.title, politicians.firstname, politicians.lastname, states.name
FROM politicians INNER JOIN states ON politicians.state_id = states.id
WHERE politicians.title = "Sen" AND states.name = "MA";

# 3. Given a political party, I can obtain a list of senators with that party affiliation.
SELECT politicians.title, politicians.firstname, politicians.lastname, parties.name
FROM politicians INNER JOIN parties ON politicians.party_id = parties.id
WHERE politicians.title = "Sen" AND party.name = "D";

# 4. Given a political party, I can obtain a list of representatives in the House with that party affiliation.


# 5. Given a senator or representative, I can obtain any of the following attributes: name, phone, fax, website, webform(for email), party affiliation, gender, birthdate, and twitter_id


# 6. Given a senator or representative, I can determine whether s/he is currently actively in office.