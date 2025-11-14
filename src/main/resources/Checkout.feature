Feature: Checkout

  Scenario: Nakup bananov
    Given Cena "banany" je 10 kc
    When Uzivatel nakupi "banany" v pocte 5 ks
    Then Celkova cena bude 50 kc