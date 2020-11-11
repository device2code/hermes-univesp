<?php
/**
 * Status Active Record
 * @author  André C. Scherrer
 */
class Status extends TRecord
{
    const TABLENAME = 'status';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'serial'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('name');
    }


}
