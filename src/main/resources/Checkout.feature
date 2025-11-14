Feature: Checkout

  Scenario: Nakup bananov
    Given Cena "banany" je 10 kc
    When Uzivatel nakupi "banany" v pocte 5 ks
    Then Celkova cena bude 50 kc

  Scenario: Nakup bananov a jablk
    Given Cena "banany" je 10 kc
    And Cena "jablk" je 5 kc
    When Uzivatel nakupi "banany" v pocte 5 ks
    And Uzivatel nakupi "jablk" v pocte 2 ks
    Then Celkova cena bude 60 kc