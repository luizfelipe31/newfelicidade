<?php


namespace Source\App;


use Source\Models\Bank;
use Source\Models\CivilStatus;
use Source\Models\DocumentSecundaryComplement;
use Source\Models\Genre;
use Source\Models\Historic;
use Source\Models\Nationality;
use Source\Models\PlaceOfBirth;
use Source\Models\Profession;
use Source\Models\PropertyCategory;
use Source\Models\TypeAccount;
use Source\Models\TypeProperty;
use Source\Models\User;
use Source\Support\Message;

class Auxiliar extends Admin{

    /**
     * Register constructor.
     * @param $router
     */

    public function __construct($router) {
        parent::__construct($router);
    }

    /**
     * @param array|null $data]
     */
    public function documentAdd(?array $data): void {

        if(empty($data["document_secundary_complement"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_document = (new DocumentSecundaryComplement())->find("description=:d and account_id=:account","d={$data->document_secundary_complement}&account={$user->account_id}")->count();

        if(!$count_document==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $document = new DocumentSecundaryComplement();

        $document->description = $data->document_secundary_complement;
        $document->account_id = $user->account_id;
        if(!$document->save()){
            $callback["message"] = $document->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs"] = $this->view->render("register/fragments/document_secundary_complement",["document_secundary_complement" => $document]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function documentDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $document = (new DocumentSecundaryComplement())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($document){
            $document->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function documentSelect(){

        $user = User::UserLog();

        $documents = (new DocumentSecundaryComplement())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $documentList = null;

        foreach ($documents as $document) {

            $documentList[] = $document->data();
        }

        echo json_encode(["document" => $documentList]);
    }

    /**
     * @param array|null $data]
     */
    public function genreAdd(?array $data): void {

        if(empty($data["genre"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_genre = (new Genre())->find("description=:d and account_id=:account","d={$data->genre}&account={$user->account_id}")->count();

        if(!$count_genre==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $genre = new Genre();

        $genre->description = $data->genre;
        $genre->account_id = $user->account_id;
        if(!$genre->save()){
            $callback["message"] = $genre->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs2"] = $this->view->render("register/fragments/genre",["genre" => $genre]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function genreDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $genre = (new Genre())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($genre){
            $genre->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function genreSelect(){

        $user = User::UserLog();

        $genres = (new Genre())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $genreList = null;

        foreach ($genres as $genre) {

            $genreList[] = $genre->data();
        }

        echo json_encode(["genre" => $genreList]);
    }

    /**
     * @param array|null $data]
     */
    public function nationalityAdd(?array $data): void {

        if(empty($data["nationality"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_nationality = (new Nationality())->find("description=:d and account_id=:account","d={$data->nationality}&account={$user->account_id}")->count();

        if(!$count_nationality==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $nationality = new Nationality();

        $nationality->description = $data->nationality;
        $nationality->account_id = $user->account_id;
        if(!$nationality->save()){
            $callback["message"] = $nationality->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs3"] = $this->view->render("register/fragments/nationality",["nationality" => $nationality]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function nationalityDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $nationality = (new Nationality())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($nationality){
            $nationality->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function nationalitySelect(){

        $user = User::UserLog();

        $nationalities = (new Nationality())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $nationalityList = null;

        foreach ($nationalities as $nationality) {

            $nationalityList[] = $nationality->data();
        }

        echo json_encode(["nationality" => $nationalityList]);
    }


    /**
     * @param array|null $data]
     */
    public function placeOfBirthAdd(?array $data): void {

        if(empty($data["place_of_birth"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_place_of_birth = (new PlaceOfBirth())->find("description=:d and account_id=:account","d={$data->place_of_birth}&account={$user->account_id}")->count();

        if(!$count_place_of_birth==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $place_of_birth = new PlaceOfBirth();

        $place_of_birth->description = $data->place_of_birth;
        $place_of_birth->account_id = $user->account_id;
        if(!$place_of_birth->save()){
            $callback["message"] = $place_of_birth->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs4"] = $this->view->render("register/fragments/place_of_birth",["place_of_birth" => $place_of_birth]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function placeOfBirthDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $place_of_birth = (new PlaceOfBirth())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($place_of_birth){
            $place_of_birth->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function placeOfBirthSelect(){

        $user = User::UserLog();

        $place_of_births = (new PlaceOfBirth())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $place_of_birthList = null;

        foreach ($place_of_births as $place_of_birth) {

            $place_of_birthList[] = $place_of_birth->data();
        }

        echo json_encode(["place_of_birth" => $place_of_birthList]);
    }

    /**
     * @param array|null $data]
     */
    public function civilStatusAdd(?array $data): void {

        if(empty($data["civil_status"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_civil_status = (new CivilStatus())->find("description=:d and account_id=:account","d={$data->civil_status}&account={$user->account_id}")->count();

        if(!$count_civil_status==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $civil_status = new CivilStatus();

        $civil_status->description = $data->civil_status;
        $civil_status->account_id = $user->account_id;
        if(!$civil_status->save()){
            $callback["message"] = $civil_status->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs5"] = $this->view->render("register/fragments/civil_status",["each" => $civil_status]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function civilStatusDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $civil_status = (new CivilStatus())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($civil_status){
            $civil_status->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function civilStatusSelect(){

        $user = User::UserLog();

        $civil_status = (new CivilStatus())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $civil_statusList = null;

        foreach ($civil_status as $each) {

            $civil_statusList[] = $each->data();
        }

        echo json_encode(["civil_status" => $civil_statusList]);
    }


    /**
     * @param array|null $data]
     */
    public function professionAdd(?array $data): void {

        if(empty($data["profession"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_profession = (new Profession())->find("description=:d and account_id=:account","d={$data->profession}&account={$user->account_id}")->count();

        if(!$count_profession==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $profession = new Profession();

        $profession->description = $data->profession;
        $profession->account_id = $user->account_id;
        if(!$profession->save()){
            $callback["message"] = $profession->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs6"] = $this->view->render("register/fragments/profession",["profession" => $profession]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function professionDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $profession = (new Profession())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($profession){
            $profession->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function professionSelect(){

        $user = User::UserLog();

        $professions = (new Profession())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $professionList = null;

        foreach ($professions as $profession) {

            $professionList[] = $profession->data();
        }

        echo json_encode(["profession" => $professionList]);
    }


    /**
     * @param array|null $data]
     */
    public function bankAdd(?array $data): void {

        if(empty($data["bank"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_bank = (new Bank())->find("description=:d and account_id=:account","d={$data->bank}&account={$user->account_id}")->count();

        if(!$count_bank==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $bank = new Bank();

        $bank->description = $data->bank;
        $bank->account_id = $user->account_id;
        if(!$bank->save()){
            $callback["message"] = $bank->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs7"] = $this->view->render("register/fragments/bank",["bank" => $bank]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function bankDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $bank = (new Bank())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($bank){
            $bank->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function bankSelect(){

        $user = User::UserLog();

        $banks = (new Bank())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $bankList = null;

        foreach ($banks as $bank) {

            $bankList[] = $bank->data();
        }

        echo json_encode(["bank" => $bankList]);
    }


    /**
     * @param array|null $data]
     */
    public function typeAccountAdd(?array $data): void {

        if(empty($data["type_account"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_type_account = (new TypeAccount())->find("description=:d and account_id=:account","d={$data->type_account}&account={$user->account_id}")->count();

        if(!$count_type_account==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $type_account = new TypeAccount();

        $type_account->description = $data->type_account;
        $type_account->account_id = $user->account_id;
        if(!$type_account->save()){
            $callback["message"] = $type_account->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs8"] = $this->view->render("register/fragments/type_account",["type_account" => $type_account]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function typeAccountDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $type_account = (new TypeAccount())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($type_account){
            $type_account->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function typeAccountSelect(){

        $user = User::UserLog();

        $type_accounts = (new TypeAccount())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $typeAccountList = null;

        foreach ($type_accounts as $type_account) {

            $typeAccountList[] = $type_account->data();
        }

        echo json_encode(["type_account" => $typeAccountList]);
    }

    /**
     * @param array|null $data
     */
    public function categoryAdd(?array $data): void {

        if(empty($data["category"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_category = (new PropertyCategory())->find("description=:d and account_id=:account","d={$data->category}&account={$user->account_id}")->count();


        if(!$count_category==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $category = new PropertyCategory();

        $category->description = $data->category;
        $category->account_id = $user->account_id;
        if(!$category->save()){
            $callback["message"] = $category->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs9"] = $this->view->render("register/fragments/property_category",["category" => $category]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function categoryDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $category = (new PropertyCategory())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($category){
            $category->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function categorySelect(){

        $user = User::UserLog();

        $categories = (new PropertyCategory())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $categoryList = null;

        foreach ($categories as $category) {

            $categoryList[] = $category->data();
        }

        echo json_encode(["category" => $categoryList]);
    }

    /**
     * @param array|null $data
     */
    public function typePropertyAdd(?array $data): void {

        if(empty($data["type_property"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_type_property = (new TypeProperty())->find("description=:d and account_id=:account","d={$data->type_property}&account={$user->account_id}")->count();

        if(!$count_type_property==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $type_property = new TypeProperty();

        $type_property->description = $data->type_property;
        $type_property->account_id = $user->account_id;
        if(!$type_property->save()){
            $callback["message"] = $type_property->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs10"] = $this->view->render("register/fragments/type_property",["type_property" => $type_property]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function typePropertyDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $type_property = (new TypeProperty())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($type_property){
            $type_property->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function typePropertySelect(){

        $user = User::UserLog();

        $type_properties = (new TypeProperty())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $typePropertyList = null;

        foreach ($type_properties as $type_property) {

            $typePropertyList[] = $type_property->data();
        }

        echo json_encode(["type_property" => $typePropertyList]);
    }


    /**
     * @param array|null $data
     */
    public function historicAdd(?array $data): void {

        if(empty($data["historic"])){
            $callback["message"] = "Preencha os campos necessários";
            echo json_encode($callback);
            return;
        }

        if($data["historic"]=="obra" || $data["historic"]=="vistoria" ){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }


        $user = User::UserLog();

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object) $post;

        $count_historic = (new Historic())->find("description=:d and account_id=:account","d={$data->historic}&account={$user->account_id}")->count();

        if(!$count_historic==0){
            $callback["message"] = "Valor já cadastrado";
            echo json_encode($callback);
            return;
        }

        $historic = new Historic();

        $historic->description = $data->historic;
        $historic->account_id = $user->account_id;
        if(!$historic->save()){
            $callback["message"] = $historic->fail()->getMessage();
            echo json_encode($callback);
            return;

        }

        $callback["auxs11"] = $this->view->render("register/fragments/historic",["historic" => $historic]);
        echo json_encode($callback);
        return;

    }

    /**
     * @param array|null $data
     */
    public function historicDelete(?array $data): void {

        if(empty($data["id"])){
            return;
        }

        $user = User::UserLog();

        $id = filter_var($data["id"], FILTER_VALIDATE_INT);

        $historic = (new Historic())->find("id=:id and account_id=:account","id={$id}&account={$user->account_id}")->fetch();

        if($historic){
            $historic->destroy();
        }

        $callback["remove"] = true;
        echo json_encode($callback);

    }

    /**
     *
     */
    public function historicSelect(){

        $user = User::UserLog();

        $historics = (new Historic())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);

        $historicList = null;

        foreach ($historics as $historic) {

            $historicList[] = $historic->data();
        }

        echo json_encode(["historic" => $historicList]);
    }
}