PSCAD 4.2.0

Settings
 {
 Id = "1577936356.1577938101"
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
  Fin = 0.5
  Step = 5e-005
  Plot = 0.00025
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
 Module("Load")
  {
  Desc = ""
  FileDate = 1577938064
  Nodes = 
   {
   Electrical("Pos",0,-54)
    {
    }
   Electrical("Neg",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"可变阻抗负载")
   Pen(ByNode,ByNode,ByNode,Pos)
   Line(0,-54,0,-39)
   Text(10,-42,"位置")
   Pen(,,,Neg)
   Line(0,54,0,39)
   Text(10,50,"负极")
   }


  Page(A/A4,Landscape,16,[960,498],5)
   {
   0.xnode([126,108],6,0,-1)
    {
    Name = "Pos"
    }
   0.xnode([378,108],0,0,-1)
    {
    Name = "Neg"
    }
   0.resistor([234,108],0,0,-1)
    {
    R = "2.0 [ohm]"
    }
   0.tbreakn([648,72],0,0,10)
    {
    NUMS = "1"
    INIT = "0"
    TO1 = "1.0 [s]"
    TO2 = "1.05 [s]"
    }
   -Wire-([576,72],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,72],0,0,-1)
    {
    Name = "BRK"
    }
   0.breaker1([288,36],0,0,20)
    {
    NAME = "BRK"
    OPCUR = "1"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.005 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.resistor([216,36],0,0,-1)
    {
    R = "2.0 [ohm]"
    }
   -Wire-([270,108],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([324,36],0,0,-1)
    {
    Vertex="0,0;18,0;18,72"
    }
   -Wire-([234,108],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([216,36],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,72"
    }
   }
  }
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
   .Load([540,432],0,0,30)
    {
    }
   0.source_1([324,360],4,0,-1)
    {
    Name = "Source1"
    Type = "1"
    Grnd = "1"
    Spec = "0"
    Cntrl = "0"
    AC = "0"
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
   0.multimeter([432,360],0,0,10)
    {
    MeasI = "0"
    MeasV = "0"
    MeasP = "1"
    MeasQ = "0"
    RMS = "0"
    MeasPh = "0"
    S = "1.0 [MVA]"
    BaseV = "1.0 [kV]"
    TS = "0.02 [s]"
    Freq = "60.0 [Hz]"
    Dis = "0"
    CurI = ""
    VolI = ""
    P = "E"
    Q = ""
    Vrms = ""
    Ph = ""
    hide1 = "0"
    hide2 = "0"
    Pd = ""
    Qd = ""
    Vd = ""
    }
   -Wire-([360,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([540,486],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([540,540],1,0,-1)
    {
    }
   0.datalabel([720,414],0,0,-1)
    {
    Name = "E"
    }
   0.pgb([720,414],0,153213720,20)
    {
    Name = "E"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([810,252],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [810,252]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(153213720,"E",0,,,)
     }
    }
   }
  }
 }

