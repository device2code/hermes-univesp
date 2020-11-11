<?php
/**
 * Image Active Record
 * @author  André C. Scherrer
 */
class Image extends TRecord
{
    const TABLENAME = 'image';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'serial'; // {max, serial}
    
    
    /**
     * Constructor method
     */
    public function __construct($id = NULL, $callObjectLoad = TRUE)
    {
        parent::__construct($id, $callObjectLoad);
        parent::addAttribute('path');
    }


}
