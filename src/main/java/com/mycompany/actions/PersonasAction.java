/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.logging.log4j.*;
import com.mycompany.model.Persona;

/**
 *
 * @author ovelazquez
 */
public class PersonasAction extends ActionSupport{
    
    Logger log = LogManager.getLogger(PersonasAction.class);
    
    private Persona persona;
    @Override
    public String execute(){
        if(this.persona != null){
            log.info("\n");
            log.info("persona:"+persona);
        } else {
            log.info("Persona con valor nulo");
        }
        return SUCCESS;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    
    
}
