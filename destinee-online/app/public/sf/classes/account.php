<?php

 class Account {
    private $name;
    private $password;
    private $email;
    
    Account($name, $password, $email) {
        $this.name = $name;
        $this.password = $password;
        $this.email = $email;
    }
}

?>