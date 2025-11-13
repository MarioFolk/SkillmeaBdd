import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import product.BankAccount;
import static org.junit.jupiter.api.Assertions.*;

public class BankAccountTest {
    BankAccount prvyBankovyUcet;
    BankAccount druhyBankovyUcet;

    @Given("Uzivatel ma bankovy ucet s {int} kc")
    public void uzivatelMaBankovyUcetSKc(int pociatoocnyZostatokNaUcte) {
      prvyBankovyUcet = new BankAccount(pociatoocnyZostatokNaUcte);
    }

    @Then("Na uzivatelskom ucte je {int} kc")
    public void naUzivatelskomUcteJeKc(int predpokladanyZostatokNaUcte) {
        assertEquals(predpokladanyZostatokNaUcte, prvyBankovyUcet.getAccountBalance(), "test spadol");
    }

    @When("Uzivatel si na tento ucet prevedie {int} kc")
    public void uzivatelSiNaTentoUcetPrevedieKc(int ciastkaKPrevodu) {
        prvyBankovyUcet.transfer(ciastkaKPrevodu);
    }

    @And("Uzivatel si z tohto uctu vyberie {int} kc")
    public void uzivatelSiZTohtoUctuVyberieKc(int ciastkaKVyberu) {
        prvyBankovyUcet.withdraw(ciastkaKVyberu);
    }

    @And("Uzivatel ma druhy bankovy ucet s {int} kc")
    public void uzivatelMaDruhyBankovyUcetSKc(int pociatocnyZostatokNaUcte) {
        druhyBankovyUcet = new BankAccount(pociatocnyZostatokNaUcte);
    }

    @When("Uzivatel prevedie ciastku {int} kc z prveho na druhy bankovy ucet")
    public void uzivatelPrevedieCiastkuKcZPrvehoNaDruhyBankovyUcet(int ciastkaPrevodu) {

    }

    @And("Na druhom uzivatelskom ucte je {int} kc")
    public void naDruhomUzivatelskomUcteJeKc(int predpokladanyZostatokNaUcte) {
        assertEquals(predpokladanyZostatokNaUcte, druhyBankovyUcet.getAccountBalance());
    }
}
