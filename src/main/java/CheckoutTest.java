import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import product.Checkout;

public class CheckoutTest {
    Checkout nakupnyKosik;

    @Before
    public void totoSaPrevediePredKazdymTestom(){
        nakupnyKosik = new Checkout();
    }

    @Given("Cena {string} je {int} kc")
    public void cenaJeKc(String menoProduktu, int cenaProduktu) {
        nakupnyKosik.addItem(menoProduktu, cenaProduktu);
    }

    @When("Uzivatel nakupi {string} v pocte {int} ks")
    public void uzivatelNakupiVPocteKs(String menoProduktu, int pocetKusov) {
        nakupnyKosik.scanItems(menoProduktu, pocetKusov);
    }

    @Then("Celkova cena bude {int} kc")
    public void celkovaCenaBudeKc(int predpokladanaCena) {
        Assertions.assertEquals(predpokladanaCena, nakupnyKosik.totalCart());
    }
}
