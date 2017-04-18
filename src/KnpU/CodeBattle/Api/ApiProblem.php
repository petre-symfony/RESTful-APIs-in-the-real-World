<?php
namespace KnpU\CodeBattle\Api;

class ApiProblem {
  private $statusCode;
  
  private $type;
  
  private $title;
  
  private $extraData = array();
  
  public function __construct($statusCode, $type, $title) {
    $this->statusCode = $statusCode;
    $this->type = $type;
    $this->title = $title;
  }
  
  public function set($name, $value){
    $this->extraData[$name] = $value;
  }

  public function getStatusCode() {
    return $this->statusCode;  
  }
}
