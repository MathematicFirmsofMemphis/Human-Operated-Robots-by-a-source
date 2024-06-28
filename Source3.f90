using System;

public class HumanOperatedRobot
{
    public Imaging Imaging { get; set; }
    public Camera Camera { get; set; }
    public Gear[] Gears { get; set; }
}

public class Imaging
{
    public int ImageWidth { get; set; }
    public int ImageHeight { get; set; }
    public int ImageAALevel { get; set; }
    public int ImageLayers { get; set; }
    public int ImageQuality { get; set; }
    public string AntialiasingMode { get; set; }
    public float Brightness { get; set; }
    public float[] BackgroundColour { get; set; }
    public bool ApplyBackgroundBeforeCurves { get; set; }
    public float Flam3Gamma { get; set; }
    public float Flam3Vibrancy { get; set; }
    public bool Flam3UseHighlightPower { get; set; }
    public float Flam3HighlightPower { get; set; }
    public float Flam3GammaLinearThreshold { get; set; }
    public float[] LayerWeights { get; set; }
}

public class Camera
{
    public float[] Pos { get; set; }
    public float Rotate { get; set; }
    public float SensorWidth { get; set; }
}

public class Gear
{
    public string Name { get; set; }
    public Flam3Transform[] Flam3Transforms { get; set; }
    public Flam3Shader Shader { get; set; }
    public WeightsSelector WeightsSelector { get; set; }
    public float TimeScale { get; set; }
}

public class Flam3Transform
{
    public Affine2 PreAffine { get; set; }
    public Flam3Variation[] PreTransforms { get; set; }
    public Flam3Variation[] Transforms { get; set; }
    public Flam3Variation[] PostTransforms { get; set; }
}

public class Affine2
{
    public float XAxisAngle { get; set; }
    public float XAxisLength { get; set; }
    public float YAxisAngle { get; set; }
    public float YAxisLength { get; set; }
    public float[] Offset { get; set; }
}

public class Flam3Variation
{
    public string VariationName { get; set; }
    public float[] Params { get; set; }
}

public class Flam3Shader
{
    public float PaletteIndex { get; set; }
    public float BlendSpeed { get; set; }
    public float Opacity { get; set; }
    public float[] LayerWeights { get; set; }
}

public class WeightsSelector
{
    public float BaseWeight { get; set; }
    public float[] PerGearWeights { get; set; }
}
