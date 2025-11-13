Feature: Bank

  Scenario: Zostatok na ucte
    Given Uzivatel ma bankovy ucet s 1000 kc
    Then Na uzivatelskom ucte je 1000 kc

  Scenario: Ucet prevod a vyber penazi
    Given Uzivatel ma bankovy ucet s 1500 kc
    When Uzivatel si na tento ucet prevedie 1000 kc
    And Uzivatel si z tohto uctu vyberie 2000 kc
    Then Na uzivatelskom ucte je 500 kc

  Scenario: Ucet prevod a vyber penazi - pokus o vyber viac penazi ako je zostatok
    Given Uzivatel ma bankovy ucet s 1500 kc
    When Uzivatel si z tohto uctu vyberie 2000 kc
    And Uzivatel si na tento ucet prevedie 1000 kc
    Then Na uzivatelskom ucte je 500 kc

  Scenario: Prevod z uctu na ucet
    Given Uzivatel ma bankovy ucet s 2000 kc
    And Uzivatel ma druhy bankovy ucet s 1000 kc
    When Uzivatel prevedie ciastku 2100 kc z prveho na druhy bankovy ucet
    Then Na uzivatelskom ucte je 2000 kc
    And Na druhom uzivatelskom ucte je 1000 kc

  Scenario Outline: Ucet prevod a vyber penazi - viac testovacich dat
    Given Uzivatel ma bankovy ucet s <pociatocnyZostatok> kc
    When Uzivatel si na tento ucet prevedie <prevod> kc
    And Uzivatel si z tohto uctu vyberie <vyber> kc
    Then Na uzivatelskom ucte je <konecnyZostatok> kc

    Examples:
      | pociatocnyZostatok | prevod | vyber | konecnyZostatok |
      | 800                | 300    | 600   | 500             |
      | 538                | 0      | 538   | 0               |
      | 100                | 300    | 500   | 400             |
