import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import product.BankAccount;

public class BankAccountTest {
    @Given("Uzivatel ma bankovy ucet s {int}OO kc")
    public void uzivatelMaBankovyUcetSOOKc(int pociatocnyZostatokNaUcte) {
        BankAccount prvyBankovyUcet = new BankAccount();
    }

    @Then("Na uzivatelskom ucte je {int} kc")
    public void naUzivatelskomUcteJeKc(int predpokladanyZostatokNaUcte) {

    }
}
