using System;
using System.Xml;

public class RandomValueGenerator
{
    private static Random random = new Random();

    public static int GetRandomInt(int minValue, int maxValue)
    {
        return random.Next(minValue, maxValue + 1);
    }

    public static float GetRandomFloat(float minValue, float maxValue)
    {
        return (float)(random.NextDouble() * (maxValue - minValue) + minValue);
    }

    public static string GetRandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        char[] randomChars = new char[length];
        for (int i = 0; i < length; i++)
        {
            randomChars[i] = chars[random.Next(chars.Length)];
        }
        return new string(randomChars);
    }

    public static float[] GetRandomFloatArray(int length, float minValue, float maxValue)
    {
        float[] array = new float[length];
        for (int i = 0; i < length; i++)
        {
            array[i] = GetRandomFloat(minValue, maxValue);
        }
        return array;
    }

    public static bool GetRandomBool()
    {
        return random.Next(2) == 0;
    }

    public static void GenerateRandomValues(HumanOperatedRobot robot)
    {
        robot.Imaging.ImageWidth = GetRandomInt(100, 1000);
        robot.Imaging.ImageHeight = GetRandomInt(100, 1000);
        robot.Imaging.ImageAALevel = GetRandomInt(1, 10);
        robot.Imaging.ImageLayers = GetRandomInt(1, 10);
        robot.Imaging.ImageQuality = GetRandomInt(0, 100);
        robot.Imaging.AntialiasingMode = GetRandomString(10);
        robot.Imaging.Brightness = GetRandomFloat(0, 10);
        robot.Imaging.BackgroundColour = GetRandomFloatArray(4, 0, 1);
        robot.Imaging.ApplyBackgroundBeforeCurves = GetRandomBool();
        robot.Imaging.Flam3Gamma = GetRandomFloat(0, 10);
        robot.Imaging.Flam3Vibrancy = GetRandomFloat(0, 10);
        robot.Imaging.Flam3UseHighlightPower = GetRandomBool();
        robot.Imaging.Flam3HighlightPower = GetRandomFloat(0, 1);
        robot.Imaging.Flam3GammaLinearThreshold = GetRandomFloat(0, 10);
        robot.Imaging.LayerWeights = GetRandomFloatArray(4, 0, 1);

        robot.Camera.Pos = GetRandomFloatArray(2, -10, 10);
        robot.Camera.Rotate = GetRandomFloat(0, 360);
        robot.Camera.SensorWidth = GetRandomFloat(1, 10);

        foreach (Gear gear in robot.Gears)
        {
            gear.Transform.PreAffine.XAxisAngle = GetRandomFloat(-180, 180);
            gear.Transform.PreAffine.XAxisLength = GetRandomFloat(0, 10);
            gear.Transform.PreAffine.YAxisAngle = GetRandomFloat(-180, 180);
            gear.Transform.PreAffine.YAxisLength = GetRandomFloat(0, 10);
            gear.Transform.PreAffine.Offset = GetRandomFloatArray(2, -1, 1);

            foreach (Flam3Variation preTransform in gear.Transform.PreTransforms)
            {
                preTransform.Params = GetRandomFloatArray(preTransform.Params.Length, -1, 1);
            }

            foreach (Flam3Variation transform in gear.Transform.Transforms)
            {
                transform.Params = GetRandomFloatArray(transform.Params.Length, -1, 1);
            }

            foreach (Flam3Variation postTransform in gear.Transform.PostTransforms)
            {
                postTransform.Params = GetRandomFloatArray(postTransform.Params.Length, -1, 1);
            }

            gear.Shader.PaletteIndex = GetRandomFloat(0, 1);
            gear.Shader.BlendSpeed = GetRandomFloat(0, 1);
            gear.Shader.Opacity = GetRandomFloat(0, 1);
            gear.Shader.LayerWeights = GetRandomFloatArray(4, 0, 1);

            gear.Weights.BaseWeight = GetRandomFloat(0, 10);
            gear.Weights.PerGearWeights = GetRandomFloatArray(gear.Weights.PerGearWeights.Length, 0, 10);

            gear.TimeScale = GetRandomFloat(0, 10);
        }
    }
}

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
    public Flam3Transform Transform { get; set; }
    public Flam3Shader Shader { get; set; }
    public WeightsSelector Weights { get; set; }
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

public class Program
{
    public static void Main()
    {
        HumanOperatedRobot robot = new HumanOperatedRobot();
        robot.Imaging = new Imaging();
        robot.Camera = new Camera();
        robot.Gears = new Gear[2];
        robot.Gears[0] = new Gear();
        robot.Gears[1] = new Gear();

        RandomValueGenerator.GenerateRandomValues(robot);

        // Print the generated values
        Console.WriteLine("Generated Values:");
        Console.WriteLine($"Image Width: {robot.Imaging.ImageWidth}");
        Console.WriteLine($"Image Height: {robot.Imaging.ImageHeight}");
        Console.WriteLine($"Image AA Level: {robot.Imaging.ImageAALevel}");
        Console.WriteLine($"Image Layers: {robot.Imaging.ImageLayers}");
        Console.WriteLine($"Image Quality: {robot.Imaging.ImageQuality}");
        Console.WriteLine($"Antialiasing Mode: {robot.Imaging.AntialiasingMode}");
        Console.WriteLine($"Brightness: {robot.Imaging.Brightness}");
        Console.WriteLine($"Background Colour: [{string.Join(", ", robot.Imaging.BackgroundColour)}]");
        Console.WriteLine($"Apply Background Before Curves: {robot.Imaging.ApplyBackgroundBeforeCurves}");
        Console.WriteLine($"Flam3 Gamma: {robot.Imaging.Flam3Gamma}");
        Console.WriteLine($"Flam3 Vibrancy: {robot.Imaging.Flam3Vibrancy}");
        Console.WriteLine($"Flam3 Use Highlight Power: {robot.Imaging.Flam3UseHighlightPower}");
        Console.WriteLine($"Flam3 Highlight Power: {robot.Imaging.Flam3HighlightPower}");
        Console.WriteLine($"Flam3 Gamma Linear Threshold: {robot.Imaging.Flam3GammaLinearThreshold}");
        Console.WriteLine($"Layer Weights: [{string.Join(", ", robot.Imaging.LayerWeights)}]");

        Console.WriteLine($"Camera Pos: [{string.Join(", ", robot.Camera.Pos)}]");
        Console.WriteLine($"Camera Rotate: {robot.Camera.Rotate}");
        Console.WriteLine($"Camera Sensor Width: {robot.Camera.SensorWidth}");

        foreach (Gear gear in robot.Gears)
        {
            Console.WriteLine($"Gear Name: {gear.Name}");
            Console.WriteLine($"Pre Affine X Axis Angle: {gear.Transform.PreAffine.XAxisAngle}");
            Console.WriteLine($"Pre Affine X Axis Length: {gear.Transform.PreAffine.XAxisLength}");
            Console.WriteLine($"Pre Affine Y Axis Angle: {gear.Transform.PreAffine.YAxisAngle}");
            Console.WriteLine($"Pre Affine Y Axis Length: {gear.Transform.PreAffine.YAxisLength}");
            Console.WriteLine($"Pre Affine Offset: [{string.Join(", ", gear.Transform.PreAffine.Offset)}]");

            foreach (Flam3Variation preTransform in gear.Transform.PreTransforms)
            {
                Console.WriteLine($"Pre Transform Variation Name: {preTransform.VariationName}");
                Console.WriteLine($"Pre Transform Params: [{string.Join(", ", preTransform.Params)}]");
            }

            foreach (Flam3Variation transform in gear.Transform.Transforms)
            {
                Console.WriteLine($"Transform Variation Name: {transform.VariationName}");
                Console.WriteLine($"Transform Params: [{string.Join(", ", transform.Params)}]");
            }

            foreach (Flam3Variation postTransform in gear.Transform.PostTransforms)
            {
                Console.WriteLine($"Post Transform Variation Name: {postTransform.VariationName}");
                Console.WriteLine($"Post Transform Params: [{string.Join(", ", postTransform.Params)}]");
            }

            Console.WriteLine($"Shader Palette Index: {gear.Shader.PaletteIndex}");
            Console.WriteLine($"Shader Blend Speed: {gear.Shader.BlendSpeed}");
            Console.WriteLine($"Shader Opacity: {gear.Shader.Opacity}");
            Console.WriteLine($"Shader Layer Weights: [{string.Join(", ", gear.Shader.LayerWeights)}]");

            Console.WriteLine($"Weights Base Weight: {gear.Weights.BaseWeight}");
            Console.WriteLine($"Weights Per Gear Weights: [{string.Join(", ", gear.Weights.PerGearWeights)}]");

            Console.WriteLine($"Time Scale: {gear.TimeScale}");
        }
    }
}
