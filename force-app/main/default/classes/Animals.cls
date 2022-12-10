public class Animals {
    public String newAnimalSpecie;
    public String newAnimalDiet;
    public String newAnimalEnvironment;


    public void animalPrint() {
        System.debug('Yeni Hayvan Türü : ' + newAnimalSpecie);
        System.debug('Beslenme Türü : ' + newAnimalDiet);
        System.debug('Yaşam Ortamı : ' + newAnimalEnvironment);

    }
}