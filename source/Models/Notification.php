<?php

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of Notification
 *
 * @author Luiz
 */
class Notification extends DataLayer {

    public function __construct() {
        parent::__construct("notifications", ["image", "title", "link"]);
    }

}
