/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mygame;

import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector4f;

/**
 *
 * @author chrx
 */
public class GameShopATMS {
    
    
    public GameShopLayer[] frames;


    public GameShopATMS(GameShopLayer[] layers, Vector4f[] textureSamples){

        frames = new GameShopLayer[layers.length];
        frames = layers;
    }

    public void changeColor (ColorRGBA colorFrom, ColorRGBA colorTo){

        for (GameShopLayer frame: frames){
            for (short y = 0; y < frame.height; y++){

                for (short x = 0; x < frame.width; x++){

                    if (frame.layer[y][x * 4] == (byte) (colorFrom.getColorArray()[0] * 255) &&
                            frame.layer[y][(x * 4) + 1] == (byte) (colorFrom.getColorArray()[1] * 255) &&
                            frame.layer[y][(x * 4) + 2] == (byte) (colorFrom.getColorArray()[2] * 255) &&
                            frame.layer[y][(x * 4) + 3] == (byte) (colorFrom.getColorArray()[3] * 255)
                    ){

                        frame.layer[y][x * 4] = (byte) (colorTo.getColorArray()[0] * 255);
                                frame.layer[y][(x * 4) + 1] = (byte) (colorTo.getColorArray()[1] * 255);
                                frame.layer[y][(x * 4) + 2] = (byte) (colorTo.getColorArray()[2] * 255);
                                frame.layer[y][(x * 4) + 3] = (byte) (colorTo.getColorArray()[3] * 255);
                    }
                }
            }
        }
    }
}
