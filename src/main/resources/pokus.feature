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
    Given Uzivatel ma zadane dva cisla 5 a 8
    When Uzivatel spocita tieto dva cisla
    Then Uzivatel vidi na kalkulacke vysledok 13

  Scenario: Kalkulacka - 2
    Given Uzivatel ma zadane dva cisla 125 a 200
    When Uzivatel spocita tieto dva cisla
    Then Uzivatel vidi na kalkulacke vysledok 325  

  #Req-001 - Delenie cisiel
  Scenario: Kalkulacka - delenie
    Given Uzivatel ma zadane dva cisla 15 a 5
    When Uzivatel vydeli tieto dva cisla
    Then Uzivatel vidi na kalkulacke vysledok 3

  Scenario Outline: Kalkulacka - scitani cisiel viac scenarov
    Given Uzivatel ma zadane dva cisla <prveCislo> a <druheCislo>
    When Uzivatel spocita tieto dva cisla
    Then Uzivatel vidi na kalkulacke vysledok <vysledok>

    Examples:
      | prveCislo | druheCislo | vysledok |
      | 5	      | 8	   | 13	      |
      | 20	      | 30	   | 50	      |
      | 222	      | 228	   | 450      |