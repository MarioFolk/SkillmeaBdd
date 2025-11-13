Feature: Bank

  Scenario: Zostatok na ucte
    Given Uzivatel ma bankovy ucet s 1000 kc
    Then Na uzivatelskom ucte je 1000 kc

  Scenario: Ucet prevod a vyber penazi
    Given Uzivatel ma bankovy ucet s 1500 kc
    When Uzivatel si na tento ucet prevedie 1000 kc
    And Uzivatel si z tohto uctu vyberie 2000 kc
    Then Na uzivatelskom ucte je 500 kc