package com.fuzzylogic;

import net.sourceforge.jFuzzyLogic.FIS;

public class Temperature1 {
	public Double temp;
	public float mintemp;
	public float avgtemp;
	public float maxtemp;
	
	public Temperature1(String minT, String avgT, String maxT){
		float mnT = Float.parseFloat(minT);
		float avT = Float.parseFloat(avgT);
		float mxT = Float.parseFloat(maxT);
		this.mintemp=mnT;
		this.avgtemp=avT;
		this.maxtemp=mxT;
		
	}
	
	
	public void predictTemp()
	{
	    FIS fis = FIS.load("C:/Users/Akash/Desktop/New folder (2)/WeatherForecastFuzzyLogic2/fcl/Temperature.fcl", true); // Load from 'FCL' file
	    fis.setVariable("mintemp", mintemp); // Set inputs
	    fis.setVariable("averagetemp", avgtemp);
	    fis.setVariable("maxtemp", maxtemp);
	    fis.evaluate(); // Evaluate
	    temp= fis.getVariable("temperature").getValue();
	    
	  }
	
	public float getTemp(){
		predictTemp();
		return temp.floatValue();
	}
	
	
}
