within ModelicaByExample.Components.SpeedMeasurement.Examples;
model PlantWithPulseCounter
  "Comparison between ideal and pulse counting sensor"
  extends Plant;
  Components.PulseCounter pulseCounter(sample_time=0.02, tooth_angle=
        0.05235987755983) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={20,30})));
equation
  connect(pulseCounter.flange, inertia.flange_b) annotation (Line(
      points={{20,20},{20,0},{10,0}},
      color={0,0,0},
      pattern=LinePattern.None,
      smooth=Smooth.None));
  annotation (
    Diagram(graphics),
    experiment(StopTime=10, Tolerance=1e-006),
    __Dymola_experimentSetupOutput);
end PlantWithPulseCounter;