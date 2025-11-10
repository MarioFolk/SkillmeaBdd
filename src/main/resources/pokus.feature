Feature: pokus

  #Toto je komentar

  Scenario: Pokusny test 1
    Given Toto je nastavenie pociatocnych podmienok
    And Toto je dalsie nastavenie pociatocnych podmienok
    When Toto je akcni krok
    And Toto je dalsi akcni krok
    #And Toto je este dalsi akcni krok
    Then Toto je overovaci krok
    And Toto je dalsi overovaci krok

  Scenario: Pokusny test 2
    Given Toto je nastavenie pociatocnych podmienok
    When Toto je dalsi akcni krok
    Then Toto je dalsi overovaci krok

    #Ako uzivatel zadam dve cisla a vysledok suctu cisel sa mi zobrazi na kalkulacke
  Scenario: Kalkulacka - 1
    Given Uzivatel ma zadane dve cisla 5 a 8
    When Uzivatel spocita tieto dva cisla
    Then Uzivatel vidi na kalkulacke vysledok 13
