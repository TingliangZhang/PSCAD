PSCAD 4.2.0

Settings
 {
 Id = "1577886995.1577936122"
 Author = "ZTL.ZTL"
 Desc = ""
 Arch = "windows"
 Options = 32
 Build = 18
 Warn = 1
 Check = 15
 Libs = ""
 Source = ""
 RunInfo = 
  {
  Fin = 3e-005
  Step = 5e-009
  Plot = 5e-009
  Chat = 0.001
  Brch = 0.0005
  Lat = 100
  Options = 0
  Advanced = 4607
  Debug = 0
  StartFile = ""
  OFile = "noname.out"
  SFile = "noname.snp"
  SnapTime = 0.3
  Mruns = 10
  Mrunfile = 0
  StartType = 0
  PlotType = 0
  SnapType = 0
  MrunType = "mrun"
  }

 }

Definitions
 {
 Module("Main")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-18,-18,18,18)
   }


  Page(A/A4,Landscape,16,[960,498],5)
   {
   0.source_1([504,324],4,0,-1)
    {
    Name = "Source1"
    Type = "1"
    Grnd = "1"
    Spec = "0"
    Cntrl = "0"
    AC = "1"
    Vm = "132.79 [kV]"
    Tc = "0.05 [s]"
    Ph = "0.0 [deg]"
    f = "60.0 [Hz]"
    P = "0.0 [MW]"
    Q = "0.0 [MVAR]"
    R = "1.0 [ohm]"
    Rs = "1.0 [ohm]"
    Rp = "1.0 [ohm]"
    Lp = "0.1 [H]"
    R' = "1.0 [ohm]"
    L = "0.1 [H]"
    C = "1.0 [uF]"
    L' = "0.1 [H]"
    C' = "1.0 [uF]"
    CUR = ""
    }
   0.ammeter([540,324],0,0,10)
    {
    Name = "Ia"
    }
   0.inductor([630,324],0,0,-1)
    {
    L = "0.1 [H]"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ground([738,324],0,0,-1)
    {
    }
   0.voltmeter([594,324],0,0,20)
    {
    Name = "Ea"
    }
   0.capacitor([684,324],0,0,-1)
    {
    C = "1.0 [uF]"
    }
   -Wire-([666,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([594,360],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,-36"
    }
   0.datalabel([486,450],0,0,-1)
    {
    Name = "Ia"
    }
   0.pgb([540,450],0,159384352,40)
    {
    Name = "Ia"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([486,450],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([486,504],0,0,-1)
    {
    Name = "Ea"
    }
   0.pgb([540,504],0,159389656,50)
    {
    Name = "Ea"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([486,504],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([486,558],0,0,-1)
    {
    Name = "E2"
    }
   0.pgb([540,558],0,159395368,60)
    {
    Name = "E2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([486,558],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Plot-([702,378],0)
    {
    Title = "$(GROUP) : E2"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [702,378]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(159395368,"E2",0,,,)
     Curve(159389656,"Ea",0,,,)
     Curve(159384352,"Ia",0,,,)
     }
    }
   0.voltmeter([684,324],2,0,30)
    {
    Name = "E2"
    }
   -Wire-([684,288],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18;54,36"
    }
   -Plot-([792,108],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [792,108]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(159389656,"Ea",0,,,)
     }
    }
   }
  }
 }

