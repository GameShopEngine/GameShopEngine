/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mygame;

import com.jme3.app.SimpleApplication;
import com.jme3.scene.Node;
import com.jme3.texture.Texture2D;

/**
 *
 * @author lyndenjayevans
 */
public class GameShopCurrencyMesh {
    
    int skip;
    SimpleApplication app;
    GameShopCurrencyLine[] currencyLines;
    GameShopATMS atms;
    Node node;
    
    //There should be sets of 4 CurrencyLines.... example 4 8 12 etc...
    public GameShopCurrencyMesh(SimpleApplication app, GameShopCurrencyLine[] currencyLines, GameShopATMS atms, Node node){
    
        assert(currencyLines.length % 4 == 0);
        if (currencyLines.length % 4 == 0){
        
            skip = currencyLines.length / 4;
        }  
        
        this.app = app;
        this.currencyLines = currencyLines;
        this.atms = atms;
        this.node = node;
            
    }
}
