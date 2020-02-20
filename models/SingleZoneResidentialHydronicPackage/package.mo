within ;
package SingleZoneResidentialHydronicPackage
  "Package for the development of the single zone residential hydronic BOPTEST test case"
  model SingleZoneResidentialHydronic
    "Single zone residential hydronic example model"
    extends IDEAS.Examples.IBPSA.SingleZoneResidentialHydronic;
    annotation (experiment(StopTime=604800));
  end SingleZoneResidentialHydronic;
  annotation (uses(IDEAS(version="2.1.0")));
end SingleZoneResidentialHydronicPackage;
