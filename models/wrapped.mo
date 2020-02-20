model wrapped "Wrapped model"
	// Input overwrite
	Modelica.Blocks.Interfaces.RealInput TSetExt_u(unit="K", min=293.15, max=353.15) "Supply temperature set point of the heater";
	Modelica.Blocks.Interfaces.BooleanInput TSetExt_activate "Activation for Supply temperature set point of the heater";
	Modelica.Blocks.Interfaces.RealInput val_oveVal_u(unit="1", min=0.0, max=1.0) "Opening valve signal. 0 means completely closed, 1 means completely open";
	Modelica.Blocks.Interfaces.BooleanInput val_oveVal_activate "Activation for Opening valve signal. 0 means completely closed, 1 means completely open";
	// Out read
	Modelica.Blocks.Interfaces.RealOutput outputP_y(unit="W") = mod.outputP.y "Pump electrical power";
	Modelica.Blocks.Interfaces.RealOutput outputQ_y(unit="W") = mod.outputQ.y "Thermal power";
	Modelica.Blocks.Interfaces.RealOutput outputT_y(unit="K") = mod.outputT.y "Operative temperature of the zone";
	// Original model
	SingleZoneResidentialHydronicPackage.SingleZoneResidentialHydronic mod(
		TSetExt(uExt(y=TSetExt_u),activate(y=TSetExt_activate)),
		val.oveVal(uExt(y=val_oveVal_u),activate(y=val_oveVal_activate))) "Original model with overwrites";
end wrapped;