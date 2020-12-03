<?php
class Produit
{
	private $_name;
	private $_classe;
	private $_type;
	private $_price;

	public function __construct($name, $type, $classe, $price)
	{
		$this->_name = $name;
		$this->_classe = $classe;
		$this->_type = $type;
		$this->_price = $price;
	}

	public function name()
	{
		return $this->_name;
	}
	public function classe()
	{
		return $this->_classe;
	}
	public function type()
	{
		return $this->_type;
	}
	public function price()
	{
		return $this->_price;
	}

	public function printProduit()
	{
		return $this->_name.", ".$this->_type.", ".$this->_classe.", ".$this->_price;
	}
}
?>