import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.jupiter.api.Assertions.*;

public class Kalkulacka {

    private int prvCislo;
    private int druCislo;
    private int vypocitanyVysledok;

    @Given("Uzivatel ma zadane dva cisla {int} a {int}")
    public void uzivatelMaZadaneDveCislaA(int prveCislo, int druheCislo) {
        prvCislo = prveCislo;
        druCislo = druheCislo;

    }

    @When("Uzivatel spocita tieto dva cisla")
    public void uzivatelSpocitaTietoDvaCisla() {
        vypocitanyVysledok = prvCislo + druCislo;

    }

    @When("Uzivatel vydeli tieto dva cisla")
    public void uzivatelVydeliTietoDvaCisla() {
        vypocitanyVysledok = prvCislo / druCislo;

    }

    @Then("Uzivatel vidi na kalkulacke vysledok {int}")
    public void uzivatelVidiNaKalkulackeVysledok(int predpokladanyVysledok) {
        assertEquals(predpokladanyVysledok, vypocitanyVysledok);
    }
}
