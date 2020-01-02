PSCAD 4.2.1

Settings
 {
 Id = "1005269451.1400590260"
 Author = "zouj.wangyc"
 Desc = ""
 Arch = "windows"
 Options = 40
 Build = 0
 Warn = 1
 Check = 7
 Libs = ""
 Source = ""
 RunInfo = 
  {
  Fin = 5e-005
  Step = 2e-008
  Plot = 2e-008
  Chat = 0.001
  Brch = 0.0005
  Lat = 100
  Options = 0
  Advanced = 511
  Debug = 0
  StartFile = ""
  OFile = "图像.out"
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
 Module("C4")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("F",0,-54)
    {
    }
   Electrical("Y",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,F)
   Line(0,-54,0,-29)
   Text(7,-41,"F")
   Pen(,,,Y)
   Line(0,54,0,29)
   Text(7,41,"Y")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   }
  }
 Module("tower9")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower9",0,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower9)
   Line(0,-54,0,-29)
   Text(7,-41,"tower9")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([198,234],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([414,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([450,234],0,0,-1)
    {
    }
   -Wire-([342,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([252,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([180,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([180,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([666,252],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([702,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([306,234],0,0,-1)
    {
    L = "0.00002137 [H]"
    }
   0.xnode([126,234],4,0,-1)
    {
    Name = "tower9"
    }
   0.voltmeter([252,198],1,0,-1)
    {
    Name = "Vtower9"
    }
   0.breaker1([234,234],4,0,-1)
    {
    NAME = "BRKVtower9"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([648,162],0,0,-1)
    {
    Name = "BRKVtower9"
    }
   0.pgb([702,162],0,142771832,-1)
    {
    Name = "BRKVtower9"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([594,252],0,0,-1)
    {
    Name = "Vtower9"
    }
   0.datalabel([846,252],0,0,-1)
    {
    Name = "BRKVtower9"
    }
   0.compare([774,252],0,0,-1)
    {
    X = "1000"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([378,234],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower16")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower16",0,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower16)
   Line(0,-54,0,-29)
   Text(7,-41,"tower16")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([576,252],0,0,-1)
    {
    }
   -Wire-([468,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([396,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([378,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([414,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([306,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([792,270],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([828,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([936,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([720,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([774,180],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([432,252],0,0,-1)
    {
    L = "0.00002137 [H]"
    }
   0.xnode([252,252],4,0,-1)
    {
    Name = "tower16"
    }
   0.voltmeter([378,216],1,0,-1)
    {
    Name = "Vtower16"
    }
   0.breaker1([360,252],4,0,-1)
    {
    NAME = "BRKVtower16"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([774,180],0,0,-1)
    {
    Name = "BRKVtower16"
    }
   0.pgb([828,180],0,142776728,-1)
    {
    Name = "BRKVtower16"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([720,270],0,0,-1)
    {
    Name = "Vtower16"
    }
   0.datalabel([972,270],0,0,-1)
    {
    Name = "BRKVtower16"
    }
   0.compare([900,270],0,0,-1)
    {
    X = "1000"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([504,252],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower1",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower1)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower1")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([450,396],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([666,396],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([702,396],0,0,-1)
    {
    }
   -Wire-([594,396],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([522,396],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([954,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1062,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([900,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([900,324],0,0,-1)
    {
    Name = "BRKVtower1"
    }
   0.xnode([378,396],4,0,-1)
    {
    Name = "tower1"
    }
   0.breaker1([486,396],4,0,-1)
    {
    NAME = "BRKVtower1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([504,360],1,0,-1)
    {
    Name = "Vtower1"
    }
   0.abs([918,414],0,0,-1)
    {
    Dim = "1"
    }
   0.pgb([954,324],0,142781216,-1)
    {
    Name = "BRKVtower1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([846,414],0,0,-1)
    {
    Name = "Vtower1"
    }
   0.inductor([558,396],0,0,-1)
    {
    L = "0.0000135 [H]"
    }
   0.datalabel([1098,414],0,0,-1)
    {
    Name = "BRKVtower1"
    }
   0.compare([1026,414],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([630,396],0,0,-1)
    {
    R = "10 [ohm]"
    }
   }
  }
 Module("tower4")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower4",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower4)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower4")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([288,270],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([540,270],0,0,-1)
    {
    }
   -Wire-([432,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([360,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([378,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([270,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([756,288],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([792,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([738,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([216,270],4,0,-1)
    {
    Name = "tower4"
    }
   0.voltmeter([342,234],1,0,-1)
    {
    Name = "Vtower4"
    }
   0.breaker1([324,270],4,0,-1)
    {
    NAME = "BRKVtower4"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([738,198],0,0,-1)
    {
    Name = "BRKVtower4"
    }
   0.pgb([792,198],0,142786112,-1)
    {
    Name = "BRKVtower4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([684,288],0,0,-1)
    {
    Name = "Vtower4"
    }
   0.datalabel([936,288],0,0,-1)
    {
    Name = "BRKVtower4"
    }
   0.inductor([396,270],0,0,-1)
    {
    L = "0.0000285 [H]"
    }
   0.compare([864,288],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([468,270],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower3")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower3",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower3)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower3")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([252,270],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([504,270],0,0,-1)
    {
    }
   -Wire-([396,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([234,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([720,288],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([864,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([702,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([180,270],4,0,-1)
    {
    Name = "tower3"
    }
   0.breaker1([288,270],4,0,-1)
    {
    NAME = "BRKVtower3"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([306,234],1,0,-1)
    {
    Name = "Vtower3"
    }
   0.datalabel([702,198],0,0,-1)
    {
    Name = "BRKVtower3"
    }
   0.pgb([756,198],0,142791008,-1)
    {
    Name = "BRKVtower3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([648,288],0,0,-1)
    {
    Name = "Vtower3"
    }
   0.datalabel([900,288],0,0,-1)
    {
    Name = "BRKVtower3"
    }
   0.inductor([360,270],0,0,-1)
    {
    L = "0.0000205 [H]"
    }
   0.compare([828,288],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([432,270],0,0,-1)
    {
    R = "10 [ohm]"
    }
   }
  }
 Module("tower5")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower5",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower5)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower5")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([252,234],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([504,234],0,0,-1)
    {
    }
   -Wire-([396,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([234,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([720,252],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([756,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([864,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([702,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([180,234],4,0,-1)
    {
    Name = "tower5"
    }
   0.voltmeter([306,198],1,0,-1)
    {
    Name = "Vtower5"
    }
   0.breaker1([288,234],4,0,-1)
    {
    NAME = "BRKVtower5"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([702,162],0,0,-1)
    {
    Name = "BRKVtower5"
    }
   0.pgb([756,162],0,142795904,-1)
    {
    Name = "BRKVtower5"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([648,252],0,0,-1)
    {
    Name = "Vtower5"
    }
   0.datalabel([900,252],0,0,-1)
    {
    Name = "BRKVtower5"
    }
   0.inductor([360,234],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([828,252],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([432,234],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower8")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower8",0,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower8)
   Line(0,-54,0,-29)
   Text(7,-41,"tower8")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([270,234],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([486,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([522,234],0,0,-1)
    {
    }
   -Wire-([414,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([252,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([360,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([252,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([738,252],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([774,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([882,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([720,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([198,234],4,0,-1)
    {
    Name = "tower8"
    }
   0.voltmeter([324,198],1,0,-1)
    {
    Name = "Vtower8"
    }
   0.breaker1([306,234],4,0,-1)
    {
    NAME = "BRKVtower8"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([720,162],0,0,-1)
    {
    Name = "BRKVtower8"
    }
   0.pgb([774,162],0,142800800,-1)
    {
    Name = "BRKVtower8"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([666,252],0,0,-1)
    {
    Name = "Vtower8"
    }
   0.datalabel([918,252],0,0,-1)
    {
    Name = "BRKVtower8"
    }
   0.inductor([378,234],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([846,252],0,0,-1)
    {
    X = "1000"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([450,234],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower6")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower6",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower6)
   Line(54,0,29,0)
   Text(41,-2,"tower6")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([216,234],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([468,234],0,0,-1)
    {
    }
   -Wire-([360,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([198,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([684,252],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([720,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([144,234],4,0,-1)
    {
    Name = "tower6"
    }
   0.breaker1([252,234],4,0,-1)
    {
    NAME = "BRKVtower6"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([270,198],1,0,-1)
    {
    Name = "Vtower6"
    }
   0.datalabel([666,162],0,0,-1)
    {
    Name = "BRKVtower6"
    }
   0.pgb([720,162],0,142805696,-1)
    {
    Name = "BRKVtower6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([612,252],0,0,-1)
    {
    Name = "Vtower6"
    }
   0.datalabel([864,252],0,0,-1)
    {
    Name = "BRKVtower6"
    }
   0.inductor([324,234],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([792,252],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([396,234],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower7")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower7",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower7)
   Line(54,0,29,0)
   Text(41,-2,"tower7")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([216,288],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([468,288],0,0,-1)
    {
    }
   -Wire-([360,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([198,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,252],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,252],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([684,306],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([720,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([144,288],4,0,-1)
    {
    Name = "tower7"
    }
   0.breaker1([252,288],4,0,-1)
    {
    NAME = "BRKVtower7"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([270,252],1,0,-1)
    {
    Name = "Vtower7"
    }
   0.datalabel([666,216],0,0,-1)
    {
    Name = "BRKVtower7"
    }
   0.pgb([720,216],0,142810592,-1)
    {
    Name = "BRKVtower7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([612,306],0,0,-1)
    {
    Name = "Vtower7"
    }
   0.datalabel([864,306],0,0,-1)
    {
    Name = "BRKVtower7"
    }
   0.inductor([324,288],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([792,306],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([396,288],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower2")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower2",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower2)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower2")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([252,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([504,594],0,0,-1)
    {
    }
   -Wire-([396,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,558],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([234,558],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([720,612],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([756,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([864,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([702,522],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([180,594],4,0,-1)
    {
    Name = "tower2"
    }
   0.breaker1([288,594],4,0,-1)
    {
    NAME = "BRKVtower2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([306,558],1,0,-1)
    {
    Name = "Vtower2"
    }
   0.datalabel([702,522],0,0,-1)
    {
    Name = "BRKVtower2"
    }
   0.pgb([756,522],0,142815488,-1)
    {
    Name = "BRKVtower2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([648,612],0,0,-1)
    {
    Name = "Vtower2"
    }
   0.datalabel([900,612],0,0,-1)
    {
    Name = "BRKVtower2"
    }
   0.inductor([360,594],0,0,-1)
    {
    L = "0.0000135 [H]"
    }
   0.compare([828,612],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([432,594],0,0,-1)
    {
    R = "10 [ohm]"
    }
   }
  }
 Module("tower11")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower11",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower11)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower11")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([216,252],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([468,252],0,0,-1)
    {
    }
   -Wire-([360,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([198,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([684,270],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([720,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,180],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([144,252],4,0,-1)
    {
    Name = "tower11"
    }
   0.voltmeter([270,216],1,0,-1)
    {
    Name = "Vtower11"
    }
   0.breaker1([252,252],4,0,-1)
    {
    NAME = "BRKVtower11"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([666,180],0,0,-1)
    {
    Name = "BRKVtower11"
    }
   0.pgb([720,180],0,142820384,-1)
    {
    Name = "BRKVtower11"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([612,270],0,0,-1)
    {
    Name = "Vtower11"
    }
   0.datalabel([864,270],0,0,-1)
    {
    Name = "BRKVtower11"
    }
   0.inductor([324,252],0,0,-1)
    {
    L = "0.0000285 [H]"
    }
   0.compare([792,270],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([396,252],0,0,-1)
    {
    R = "15 [ohm]"
    }
   }
  }
 Module("tower10")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower10",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower10)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower10")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([234,252],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.ground([486,252],0,0,-1)
    {
    }
   -Wire-([378,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([216,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([216,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([702,270],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([738,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([630,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,180],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([162,252],4,0,-1)
    {
    Name = "tower10"
    }
   0.voltmeter([288,216],1,0,-1)
    {
    Name = "Vtower10"
    }
   0.breaker1([270,252],4,0,-1)
    {
    NAME = "BRKVtower10"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([684,180],0,0,-1)
    {
    Name = "BRKVtower10"
    }
   0.pgb([738,180],0,142825280,-1)
    {
    Name = "BRKVtower10"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([630,270],0,0,-1)
    {
    Name = "Vtower10"
    }
   0.datalabel([882,270],0,0,-1)
    {
    Name = "BRKVtower10"
    }
   -Wire-([450,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([342,252],0,0,-1)
    {
    L = "0.0000205 [H]"
    }
   0.compare([810,270],0,0,-1)
    {
    X = "500"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.resistor([414,252],0,0,-1)
    {
    R = "10 [ohm]"
    }
   }
  }
 Module("tower15")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower15",0,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower15)
   Line(0,-54,0,-29)
   Text(7,-41,"tower15")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([396,288],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([612,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([648,288],0,0,-1)
    {
    }
   -Wire-([540,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([450,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([378,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,252],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([378,252],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([864,306],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([900,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1008,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([324,288],4,0,-1)
    {
    Name = "tower15"
    }
   0.breaker1([432,288],4,0,-1)
    {
    NAME = "BRKVtower15"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([450,252],1,0,-1)
    {
    Name = "Vtower15"
    }
   0.datalabel([846,216],0,0,-1)
    {
    Name = "BRKVtower15"
    }
   0.pgb([900,216],0,142830176,-1)
    {
    Name = "BRKVtower15"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([792,306],0,0,-1)
    {
    Name = "Vtower15"
    }
   0.datalabel([1044,306],0,0,-1)
    {
    Name = "BRKVtower15"
    }
   0.resistor([576,288],0,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([504,288],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([972,306],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   }
  }
 Module("tower14")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower14",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower14)
   Line(54,0,29,0)
   Text(41,-2,"tower14")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([180,252],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([396,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([432,252],0,0,-1)
    {
    }
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([252,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([162,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([162,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([648,270],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([684,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([630,180],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([108,252],4,0,-1)
    {
    Name = "tower14"
    }
   0.voltmeter([234,216],1,0,-1)
    {
    Name = "Vtower14"
    }
   0.breaker1([216,252],4,0,-1)
    {
    NAME = "BRKVtower14"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([630,180],0,0,-1)
    {
    Name = "BRKVtower14"
    }
   0.pgb([684,180],0,142835072,-1)
    {
    Name = "BRKVtower14"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([576,270],0,0,-1)
    {
    Name = "Vtower14"
    }
   0.datalabel([828,270],0,0,-1)
    {
    Name = "BRKVtower14"
    }
   0.resistor([360,252],0,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([288,252],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([756,270],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   }
  }
 Module("tower13")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower13",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower13)
   Line(54,0,29,0)
   Text(41,-2,"tower13")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([180,234],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([396,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([432,234],0,0,-1)
    {
    }
   -Wire-([324,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([252,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([162,198],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([162,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([648,252],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([684,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([630,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([108,234],4,0,-1)
    {
    Name = "tower13"
    }
   0.voltmeter([234,198],1,0,-1)
    {
    Name = "Vtower13"
    }
   0.breaker1([216,234],4,0,-1)
    {
    NAME = "BRKVtower13"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([630,162],0,0,-1)
    {
    Name = "BRKVtower13"
    }
   0.pgb([684,162],0,142839968,-1)
    {
    Name = "BRKVtower13"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([576,252],0,0,-1)
    {
    Name = "Vtower13"
    }
   0.datalabel([828,252],0,0,-1)
    {
    Name = "BRKVtower13"
    }
   0.resistor([360,234],0,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([288,234],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([756,252],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   }
  }
 Module("tower12")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("tower12",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,tower12)
   Line(-54,0,-29,0)
   Text(-41,-2,"tower12")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([216,216],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([468,216],0,0,-1)
    {
    }
   -Wire-([360,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([288,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([270,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([198,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,180],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,180],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.abs([684,234],0,0,-1)
    {
    Dim = "1"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,144],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([144,216],4,0,-1)
    {
    Name = "tower12"
    }
   0.voltmeter([270,180],1,0,-1)
    {
    Name = "Vtower12"
    }
   0.breaker1([252,216],4,0,-1)
    {
    NAME = "BRKVtower12"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([666,144],0,0,-1)
    {
    Name = "BRKVtower12"
    }
   0.pgb([720,144],0,142844864,-1)
    {
    Name = "BRKVtower12"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([612,234],0,0,-1)
    {
    Name = "Vtower12"
    }
   0.datalabel([864,234],0,0,-1)
    {
    Name = "BRKVtower12"
    }
   0.resistor([396,216],0,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([324,216],0,0,-1)
    {
    L = "0.00002565 [H]"
    }
   0.compare([792,234],0,0,-1)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   }
  }
 Module("C3")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("E",0,-54)
    {
    }
   Electrical("D",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,E)
   Line(0,-54,0,-29)
   Text(7,-41,"E")
   Pen(,,,D)
   Line(0,54,0,29)
   Text(7,41,"D")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([270,702],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([252,522],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([270,504],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([216,522],2,0,-1)
    {
    }
   -Wire-([252,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([270,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([216,324],2,0,-1)
    {
    }
   -Wire-([270,108],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.xnode([270,756],4,0,-1)
    {
    Name = "D"
    }
   0.cable_interface([270,558],7,0,-1)
    {
    Name = "Cable15"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([270,684],3,0,-1)
    {
    Name = "Cable15"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.xnode([270,108],4,0,-1)
    {
    Name = "E"
    }
   0.cable_interface([270,162],7,0,-1)
    {
    Name = "Cable16"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([270,288],3,0,-1)
    {
    Name = "Cable16"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([468,252],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([468,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.nodelabel([270,324],7,0,-1)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vcab21"
    VBase = "1 [kV]"
    }
   0.nodelabel([270,522],7,0,-1)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vcab22"
    VBase = "1 [kV]"
    }
   0.datalabel([468,252],0,0,-1)
    {
    Name = "Vcab21"
    }
   0.pgb([486,252],0,142851800,-1)
    {
    Name = "Vcab21"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([468,342],0,0,-1)
    {
    Name = "Vcab22"
    }
   0.tline_interface([270,486],5,0,-1)
    {
    Name = "Tline1111"
    NC = "1"
    View = "0"
    }
   0.capacitor([216,324],0,0,-1)
    {
    C = "0.0005 [uF]"
    }
   0.capacitor([216,522],0,0,-1)
    {
    C = "0.0005 [uF]"
    }
   0.pgb([486,342],0,142853840,-1)
    {
    Name = "Vcab22"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.tline_interface([270,360],1,0,-1)
    {
    Name = "Tline1111"
    NC = "1"
    View = "0"
    }
   -TLine-([288,396],0,73099584,-1)
    {
    Name = "TLine1111"
    Date = 1056202344
    Freq = "50.0"
    Length = "0.1"
    Dim = 1
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([756,288],0,71968096,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([630,504],0,71969216,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = "0.013 [ohms/m]"
      TTP = "3.33e-9 [sec/m]"
      ZTP = "35 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Cable-([198,666],0,71971256,-1)
    {
    Name = "Cable15"
    Date = 1056248682
    Freq = "50.0"
    Length = "0.1"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_FreDep_Options([648,216],0,73128152,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Cable_Coax([324,594],0,73129128,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.06 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_Ground([306,324],0,71972576,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     }
    }
   -Cable-([198,270],0,71972840,-1)
    {
    Name = "Cable16"
    Date = 1056248684
    Freq = "50.0"
    Length = "0.1"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_FreDep_Options([648,216],0,73156784,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Ground([306,324],0,73158112,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,71979064,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     }
    }
   }
  }
 Module("C1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("B",0,-54)
    {
    }
   Electrical("A",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,B)
   Line(0,-54,0,-29)
   Text(7,-41,"B")
   Pen(,,,A)
   Line(0,54,0,29)
   Text(7,41,"A")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([288,522],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([252,522],2,0,-1)
    {
    }
   -Wire-([288,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([306,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([252,306],2,0,-1)
    {
    }
   0.cable_interface([306,144],7,0,-1)
    {
    Name = "Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([306,270],3,0,-1)
    {
    Name = "Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([306,90],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.xnode([306,90],4,0,-1)
    {
    Name = "B"
    }
   0.cable_interface([306,702],3,0,-1)
    {
    Name = "Cable3"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([306,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([306,504],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([504,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([522,234],0,142860368,-1)
    {
    Name = "Vcab11"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([522,324],0,142860776,-1)
    {
    Name = "Vcab12"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([504,234],0,0,-1)
    {
    Name = "Vcab11"
    }
   0.cable_interface([306,486],3,0,-1)
    {
    Name = "CABLE101"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([306,576],7,0,-1)
    {
    Name = "Cable3"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.xnode([306,756],4,0,-1)
    {
    Name = "A"
    }
   0.cable_interface([306,342],7,0,-1)
    {
    Name = "CABLE101"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.nodelabel([306,522],7,0,-1)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vcab12"
    VBase = "1 [kV]"
    }
   0.nodelabel([306,306],7,0,-1)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vcab11"
    VBase = "1 [kV]"
    }
   0.capacitor([252,306],0,0,-1)
    {
    C = "0.0005 [uF]"
    }
   0.capacitor([252,522],0,0,-1)
    {
    C = "0.0005 [uF]"
    }
   -Cable-([234,252],0,73271640,-1)
    {
    Name = "Cable4"
    Date = 1056248682
    Freq = "50.0"
    Length = "0.1"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_FreDep_Options([648,216],0,71988048,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Ground([306,324],0,71989272,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,71989648,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     }
    }
   -Cable-([234,450],0,71991008,-1)
    {
    Name = "CABLE101"
    Date = 1056248682
    Freq = "50.0"
    Length = "0.1"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_FreDep_Options([648,216],0,73301080,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Cable_Coax([324,594],0,71991496,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "3"
      LC = "1"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.0458 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.0473 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.0703 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".081 [m]"
      EPS2 = "2.35"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_Ground([306,324],0,71992720,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     }
    }
   -Cable-([234,684],0,71992984,-1)
    {
    Name = "Cable3"
    Date = 1056248682
    Freq = "50.0"
    Length = "0.1"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_FreDep_Options([648,216],0,73330328,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Cable_Coax([324,594],0,71998968,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.06 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_Ground([306,324],0,72000232,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     }
    }
   0.datalabel([504,324],0,0,-1)
    {
    Name = "Vcab12"
    }
   }
  }
 Module("TW28")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("A28",-54,-18)
    {
    }
   Electrical("G28",-54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(0,4,"TW28")
   Pen(ByNode,ByNode,ByNode,A28)
   Line(-54,-18,-29,-18)
   Text(-41,-20,"A")
   Pen(,,,G28)
   Line(-54,18,-29,18)
   Text(-41,15,"G")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   }
  }
 Module("TW18")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("AI8",-54,18)
    {
    }
   Electrical("GI81",-54,-18)
    {
    }
   Electrical("GI82",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-42,16,"A")
   Text(-42,0,"G2")
   Text(0,4,"TW8")
   Text(-42,-18,"G1")
   Pen(ByNode,ByNode,ByNode,AI8)
   Line(-54,18,-29,18)
   Pen(,,,GI81)
   Line(-54,-18,-29,-18)
   Pen(,,,GI82)
   Line(-54,0,-29,0)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([324,378],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,594],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([504,630],1,0,-1)
    {
    }
   -Wire-([864,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([972,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([756,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,504],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([306,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,324],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([378,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([414,324],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,198],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([450,198],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([612,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([360,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,378],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([396,378],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([504,252],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([414,198],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([576,198],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([504,486],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([504,558],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([504,450],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([432,378],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([936,594],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([828,594],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([360,198],4,0,-1)
    {
    Name = "GI81"
    }
   0.xnode([666,198],4,0,-1)
    {
    Name = "GI82"
    }
   0.datalabel([756,594],0,0,-1)
    {
    Name = "VtowerI8"
    }
   0.datalabel([1008,594],0,0,-1)
    {
    Name = "BRKVtowerI8"
    }
   0.voltmeter([378,324],1,0,10)
    {
    Name = "VtowerI8"
    }
   0.xnode([252,378],4,0,-1)
    {
    Name = "AI8"
    }
   0.breaker1([360,378],2,0,50)
    {
    NAME = "BRKVtowerI8"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.pgb([864,504],0,142875464,40)
    {
    Name = "BRKVtowerI8"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([810,504],0,0,-1)
    {
    Name = "BRKVtowerI8"
    }
   }
  }
 Module("C2")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("X",0,54)
    {
    }
   Electrical("C",0,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,C)
   Line(0,-54,0,-29)
   Text(7,-42,"C")
   Font(,Large)
   Text(1,4,"L1")
   Pen(,,,X)
   Line(0,54,0,29)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([936,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([936,396],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([936,450],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([936,450],0,0,-1)
    {
    Name = "Vblq3"
    }
   0.pgb([954,450],0,142876688,70)
    {
    Name = "Vblq3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.datalabel([936,324],0,0,-1)
    {
    Name = "Vpt2"
    }
   0.pgb([954,324],0,142877504,90)
    {
    Name = "Vpt2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.datalabel([936,396],0,0,-1)
    {
    Name = "Iblq3"
    }
   0.pgb([954,396],0,142878320,60)
    {
    Name = "Iblq3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "A"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "100"
    }
   -Wire-([378,1098],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([342,1098],2,0,-1)
    {
    }
   0.ground([630,198],6,0,-1)
    {
    }
   -Wire-([630,198],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.cable_interface([396,396],7,0,-1)
    {
    Name = "L1_Cable2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([396,540],3,0,-1)
    {
    Name = "L1_Cable2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.ammeter([540,198],6,0,20)
    {
    Name = "Iblq3"
    }
   0.xnode([396,1152],4,0,-1)
    {
    Name = "X"
    }
   0.xnode([396,162],4,0,-1)
    {
    Name = "C"
    }
   0.cable_interface([396,1008],3,0,-1)
    {
    Name = "L1_Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([396,1026],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   0.capacitor([342,1098],0,0,-1)
    {
    C = "0.0004 [uF]"
    }
   0.nodelabel([396,1098],7,0,80)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vpt2"
    VBase = "1 [kV]"
    }
   -Wire-([396,558],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   0.cable_interface([396,882],7,0,-1)
    {
    Name = "L1_Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([396,810],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Cable-([306,900],0,72012568,-1)
    {
    Name = "L1_Cable4"
    Date = 1106293144
    Freq = "50.0"
    Length = "0.011"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73616808,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72014296,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([576,198],0,72015720,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([324,432],0,72016128,-1)
    {
    Name = "L1_Cable2"
    Date = 1106293144
    Freq = "50.0"
    Length = "0.010"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,72017416,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,73645272,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,216],0,72018376,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.arrester([504,198],1,0,-1)
    {
    Name = "BLQ3"
    VSCAL = "444 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "0.000001 [kA]"
    Y1 = "1.345 [p.u.]"
    X2 = "5 [kA]"
    Y2 = "2.106 [p.u.]"
    X3 = "10 [kA]"
    Y3 = "2.286 [p.u.]"
    X4 = "20 [kA]"
    Y4 = "2.491 [p.u.]"
    X5 = "0 [kA]"
    Y5 = "0 [p.u.]"
    X6 = "0 [kA]"
    Y6 = "0 [p.u.]"
    X7 = "0 [kA]"
    Y7 = "0 [p.u.]"
    X8 = "0 [kA]"
    Y8 = "0 [p.u.]"
    X9 = "0 [kA]"
    Y9 = "0 [p.u.]"
    X10 = "0 [kA]"
    Y10 = "0 [p.u.]"
    X11 = "0 [kA]"
    Y11 = "0 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = ""
    }
   -Wire-([396,288],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([396,198],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.cable_interface([396,792],3,0,-1)
    {
    Name = "L1_Cable1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Cable-([306,684],0,72020712,-1)
    {
    Name = "L1_Cable1"
    Date = 1106293146
    Freq = "50.0"
    Length = "0.0007"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73673712,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([288,576],0,72021696,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,216],0,72023320,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.cable_interface([396,666],7,0,-1)
    {
    Name = "L1_Cable1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.capacitor([360,324],0,0,-1)
    {
    C = "0.001 [uF]"
    }
   0.ground([360,324],4,0,-1)
    {
    }
   0.capacitor([360,198],0,0,-1)
    {
    C = "0.005 [uF]"
    }
   0.ground([360,198],4,0,-1)
    {
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;0,144"
    }
   -Wire-([504,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.nodelabel([486,198],0,0,10)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vblq3"
    VBase = "1 [kV]"
    }
   0.datalabel([540,342],0,0,-1)
    {
    Name = "Iblq3"
    }
   0.datalabel([504,306],0,0,-1)
    {
    Name = "Vblq3"
    }
   0.pgb([648,306],0,142890968,50)
    {
    Name = "Vx"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kVA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2000"
    }
   0.mult([540,306],0,0,30)
    {
    }
   0.integral([612,306],0,0,40)
    {
    Extrn = "0"
    Reset = "0"
    Mthd = "0"
    noname5 = ""
    INTR = "0"
    INTCLR = "0"
    T = "0.001 [sec]"
    Yo = "0.0"
    YRst = "0.0"
    YHi = "100000000"
    YLo = "0"
    }
   }
  }
 Module("C4_1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("F",0,-54)
    {
    }
   Electrical("Y",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,F)
   Line(0,-54,0,-29)
   Text(7,-42,"F")
   Pen(,,,Y)
   Line(0,54,0,29)
   Font(,Large)
   Text(0,4,"L2")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([774,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([756,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([756,414],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([756,414],0,0,-1)
    {
    Name = "Vblq4"
    }
   0.pgb([774,414],0,142892600,40)
    {
    Name = "Vblq4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([774,306],0,0,-1)
    {
    Name = "Vpt4"
    }
   0.pgb([792,306],0,142893416,60)
    {
    Name = "Vpt4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.datalabel([756,360],0,0,-1)
    {
    Name = "Iblq4"
    }
   0.pgb([774,360],0,142894232,30)
    {
    Name = "Iblq4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2000"
    }
   -Wire-([306,1044],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([270,1044],2,0,-1)
    {
    }
   0.ground([684,180],6,0,-1)
    {
    }
   -Wire-([630,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([342,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.cable_interface([324,342],7,0,-1)
    {
    Name = "L2_Cable2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([324,486],3,0,-1)
    {
    Name = "L2_Cable2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.ammeter([666,180],6,0,20)
    {
    Name = "Iblq4"
    }
   0.xnode([324,1098],4,0,-1)
    {
    Name = "Y"
    }
   0.xnode([324,144],4,0,-1)
    {
    Name = "F"
    }
   0.nodelabel([612,180],0,0,10)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vblq4"
    VBase = "1 [kV]"
    }
   0.cable_interface([324,954],3,0,-1)
    {
    Name = "L2_Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([324,972],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   0.capacitor([270,1044],0,0,-1)
    {
    C = "0.0004 [uF]"
    }
   0.nodelabel([324,1044],7,0,50)
    {
    Name = ""
    MeasV = "1"
    PU = "0"
    VName = "Vpt4"
    VBase = "1 [kV]"
    }
   -Wire-([324,504],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   0.cable_interface([324,828],7,0,-1)
    {
    Name = "L2_Cable4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([324,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Cable-([234,846],0,73845480,-1)
    {
    Name = "L2_Cable4"
    Date = 1106227604
    Freq = "50.0"
    Length = "0.011"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,72045016,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72045960,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([594,180],0,72047248,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([252,378],0,72047656,-1)
    {
    Name = "L2_Cable2"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.010"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,72047872,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72048680,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([666,198],0,72050088,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.arrester([630,180],1,0,-1)
    {
    Name = "BLQ3"
    VSCAL = "444 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "0.000001 [kA]"
    Y1 = "1.345 [p.u.]"
    X2 = "5 [kA]"
    Y2 = "2.106 [p.u.]"
    X3 = "10 [kA]"
    Y3 = "2.286 [p.u.]"
    X4 = "20 [kA]"
    Y4 = "2.491 [p.u.]"
    X5 = "0 [kA]"
    Y5 = "0 [p.u.]"
    X6 = "0 [kA]"
    Y6 = "0 [p.u.]"
    X7 = "0 [kA]"
    Y7 = "0 [p.u.]"
    X8 = "0 [kA]"
    Y8 = "0 [p.u.]"
    X9 = "0 [kA]"
    Y9 = "0 [p.u.]"
    X10 = "0 [kA]"
    Y10 = "0 [p.u.]"
    X11 = "0 [kA]"
    Y11 = "0 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = ""
    }
   -Wire-([324,234],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([342,180],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.capacitor([288,180],0,0,-1)
    {
    C = "0.005 [uF]"
    }
   0.ground([288,180],4,0,-1)
    {
    }
   0.cable_interface([324,738],3,0,-1)
    {
    Name = "L2_Cable1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Cable-([234,630],0,72052104,-1)
    {
    Name = "L2_Cable1"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.0007"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73931736,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([288,594],0,72058360,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([666,162],0,72059784,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.cable_interface([324,612],7,0,-1)
    {
    Name = "L2_Cable1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.capacitor([288,270],0,0,-1)
    {
    C = "0.001 [uF]"
    }
   0.ground([288,270],4,0,-1)
    {
    }
   -Wire-([324,144],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("CB3")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("cb34",0,-54)
    {
    }
   Electrical("cb31",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,cb34)
   Line(0,-54,0,-29)
   Pen(,,,cb31)
   Line(0,54,0,29)
   Font(,Large)
   Text(0,4,"CB3")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([1170,414],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([882,414],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1224,414],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([468,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.cable_interface([738,414],0,0,-1)
    {
    Name = "CB3"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([864,414],4,0,-1)
    {
    Name = "CB3"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([522,414],0,0,-1)
    {
    Name = "CB34"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([648,414],4,0,-1)
    {
    Name = "CB34"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([1026,414],0,0,-1)
    {
    Name = "CB31"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([1152,414],4,0,-1)
    {
    Name = "CB31"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Cable-([774,486],0,72838152,-1)
    {
    Name = "CB3"
    Date = 1105875166
    Freq = "50.0"
    Length = "0.0114"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73068824,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72956824,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,180],0,72866704,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([558,486],0,72867112,-1)
    {
    Name = "CB34"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.006"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,72895448,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72984720,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,216],0,72986200,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.xnode([1224,414],0,0,-1)
    {
    Name = "cb31"
    }
   0.xnode([468,414],0,0,-1)
    {
    Name = "cb34"
    }
   -Cable-([1062,468],0,73097904,-1)
    {
    Name = "CB31"
    Date = 1105875166
    Freq = "50.0"
    Length = "0.00125"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73125944,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,73126968,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([666,216],0,74017416,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   }
  }
 Module("CB2")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("cb21",-54,0)
    {
    }
   Electrical("cb24",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,cb21)
   Line(-54,0,-29,0)
   Pen(,,,cb24)
   Line(54,0,29,0)
   Font(,Large)
   Text(0,4,"CB2")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([1044,594],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([828,594],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.cable_interface([810,594],4,0,-1)
    {
    Name = "CB2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([684,594],0,0,-1)
    {
    Name = "CB2"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([1098,594],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([504,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([1098,594],0,0,-1)
    {
    Name = "cb24"
    }
   0.cable_interface([900,594],0,0,-1)
    {
    Name = "CB24"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([1026,594],4,0,-1)
    {
    Name = "CB24"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Cable-([720,666],0,73412688,-1)
    {
    Name = "CB2"
    Date = 1106294780
    Freq = "50.0"
    Length = "0.0114"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73414304,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,73183240,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([612,198],0,73184664,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([936,666],0,73185072,-1)
    {
    Name = "CB24"
    Date = 1105875166
    Freq = "50.0"
    Length = "0.00125"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,74104320,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,74015904,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([648,234],0,73212408,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   0.xnode([504,594],0,0,-1)
    {
    Name = "cb21"
    }
   -Wire-([540,594],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([828,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   }
  }
 Module("CB4")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("cb42",-54,0)
    {
    }
   Electrical("cb43",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,cb42)
   Line(-54,0,-29,0)
   Pen(,,,cb43)
   Line(54,0,29,0)
   Font(,Large)
   Text(0,4,"CB4")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([882,522],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([936,522],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([468,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([468,522],0,0,-1)
    {
    Name = "cb42"
    }
   0.xnode([936,522],0,0,-1)
    {
    Name = "cb43"
    }
   0.cable_interface([738,522],0,0,-1)
    {
    Name = "CB4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([864,522],4,0,-1)
    {
    Name = "CB4"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([648,522],4,0,-1)
    {
    Name = "CB42"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([522,522],0,0,-1)
    {
    Name = "CB42"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Cable-([558,594],0,73241296,-1)
    {
    Name = "CB42"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.00125"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,74190264,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,73269688,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,198],0,73271032,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([774,594],0,73441328,-1)
    {
    Name = "CB4"
    Date = 1105875166
    Freq = "50.0"
    Length = "0.0114"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73442616,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,74218968,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,180],0,73298744,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   }
  }
 Module("TW21")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII11",54,-18)
    {
    }
   Electrical("GII12",54,0)
    {
    }
   Electrical("AII1",54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(0,4,"TW1")
   Text(40,15,"A")
   Text(40,-19,"G1")
   Pen(ByNode,ByNode,ByNode,GII11)
   Line(54,-18,29,-18)
   Text(40,-1,"G2")
   Pen(,,,GII12)
   Line(54,0,29,0)
   Pen(,,,AII1)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([396,558],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([576,774],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([576,810],1,0,-1)
    {
    }
   -Wire-([936,774],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1044,774],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,774],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([882,684],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([378,504],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([378,504],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([450,504],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,504],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([576,378],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([522,378],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([684,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([540,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,666],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.inductor([504,558],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([576,468],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1008,774],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([900,774],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([432,378],4,0,-1)
    {
    Name = "GII11"
    }
   0.xnode([324,558],4,0,-1)
    {
    Name = "AII1"
    }
   0.xnode([738,378],4,0,-1)
    {
    Name = "GII12"
    }
   0.breaker1([432,558],2,0,50)
    {
    NAME = "BRKVtowerII1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([450,504],1,0,10)
    {
    Name = "VtowerII1"
    }
   0.datalabel([882,684],0,0,-1)
    {
    Name = "BRKVtowerII1"
    }
   0.pgb([936,684],0,142926872,40)
    {
    Name = "BRKVtowerII1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([828,774],0,0,-1)
    {
    Name = "VtowerII1"
    }
   0.datalabel([1080,774],0,0,-1)
    {
    Name = "BRKVtowerII1"
    }
   0.inductor([486,378],0,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.inductor([648,378],0,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.inductor([576,432],1,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.resistor([576,738],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([576,630],1,0,-1)
    {
    L = "0.000017 [H]"
    }
   }
  }
 Module("TW2")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII01",54,-18)
    {
    }
   Electrical("AII0",54,18)
    {
    }
   Electrical("GII02",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(42,15,"A")
   Text(42,-21,"G1")
   Pen(ByNode,ByNode,ByNode,GII01)
   Line(54,-18,29,-18)
   Text(42,-3,"G2")
   Pen(,,,GII02)
   Line(54,0,29,0)
   Pen(,,,AII0)
   Line(54,18,29,18)
   Font(,Medium)
   Text(1,-7,"")
   Font(,Large)
   Text(0,4,"TW")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([432,414],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([612,630],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([612,666],1,0,-1)
    {
    }
   -Wire-([972,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1080,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([864,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([918,540],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([486,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([522,360],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([612,234],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([558,234],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([576,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,522],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.inductor([540,414],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([612,324],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1044,630],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([936,630],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([360,414],4,0,-1)
    {
    Name = "AII0"
    }
   0.xnode([468,234],4,0,-1)
    {
    Name = "GII01"
    }
   0.xnode([774,234],4,0,-1)
    {
    Name = "GII02"
    }
   0.voltmeter([486,360],1,0,10)
    {
    Name = "VtowerII0"
    }
   0.datalabel([918,540],0,0,-1)
    {
    Name = "BRKVtowerII0"
    }
   0.datalabel([864,630],0,0,-1)
    {
    Name = "VtowerII0"
    }
   0.pgb([972,540],0,142934216,40)
    {
    Name = "BRKVtowerII0"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1116,630],0,0,-1)
    {
    Name = "BRKVtowerII0"
    }
   0.breaker1([468,414],2,0,50)
    {
    NAME = "BRKVtowerII0"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.inductor([522,234],0,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.inductor([684,234],0,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.inductor([612,288],1,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.resistor([612,594],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([612,486],1,0,-1)
    {
    L = "0.00001 [H]"
    }
   }
  }
 Module("TW23")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII31",54,-18)
    {
    }
   Electrical("GII32",54,0)
    {
    }
   Electrical("AII3",54,18)
    {
    }
   }

  Graphics = 
   {
   Text(0,4,"TW3")
   Text(42,15,"A")
   Text(42,-21,"G1")
   Text(42,-3,"G2")
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,GII31)
   Line(54,-18,29,-18)
   Pen(,,,GII32)
   Line(54,0,29,0)
   Pen(,,,AII3)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([522,522],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([702,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([702,774],1,0,-1)
    {
    }
   -Wire-([1062,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1170,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([954,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1008,648],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([504,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([576,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([702,342],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([648,342],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([810,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([558,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([666,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([702,396],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([612,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([774,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([702,630],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([702,702],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([702,594],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([630,522],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([702,432],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1134,738],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([1026,738],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([558,342],4,0,-1)
    {
    Name = "GII31"
    }
   0.xnode([864,342],4,0,-1)
    {
    Name = "GII32"
    }
   0.xnode([450,522],4,0,-1)
    {
    Name = "AII3"
    }
   0.breaker1([558,522],2,0,50)
    {
    NAME = "BRKVtowerII3"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([576,468],1,0,10)
    {
    Name = "VtowerII3"
    }
   0.datalabel([1008,648],0,0,-1)
    {
    Name = "BRKVtowerII3"
    }
   0.datalabel([954,738],0,0,-1)
    {
    Name = "VtowerII3"
    }
   0.pgb([1062,648],0,142944008,40)
    {
    Name = "BRKVtowerII3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1206,738],0,0,-1)
    {
    Name = "BRKVtowerII3"
    }
   }
  }
 Module("TW22")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII22",54,0)
    {
    }
   Electrical("AII2",54,18)
    {
    }
   Electrical("GII21",54,-18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(42,15,"A")
   Text(0,4,"TW2")
   Text(42,-21,"G1")
   Text(42,-3,"G2")
   Pen(ByNode,ByNode,ByNode,GII21)
   Line(54,-18,29,-18)
   Pen(,,,GII22)
   Line(54,0,29,0)
   Pen(,,,AII2)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([486,450],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([666,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([666,702],1,0,-1)
    {
    }
   -Wire-([1026,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1134,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([918,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([972,576],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,396],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,396],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([540,396],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,396],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([666,270],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([612,270],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([774,270],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([522,270],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([630,450],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([558,450],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,558],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([666,630],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([594,450],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([666,360],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1098,666],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([990,666],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([522,270],4,0,-1)
    {
    Name = "GII21"
    }
   0.xnode([414,450],4,0,-1)
    {
    Name = "AII2"
    }
   0.voltmeter([540,396],1,0,10)
    {
    Name = "VtowerII2"
    }
   0.breaker1([522,450],2,0,50)
    {
    NAME = "BRKVtowerII2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.xnode([828,270],4,0,-1)
    {
    Name = "GII22"
    }
   0.datalabel([918,666],0,0,-1)
    {
    Name = "VtowerII2"
    }
   0.datalabel([972,576],0,0,-1)
    {
    Name = "BRKVtowerII2"
    }
   0.pgb([1026,576],0,142949720,40)
    {
    Name = "BRKVtowerII2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1170,666],0,0,-1)
    {
    Name = "BRKVtowerII2"
    }
   0.inductor([666,522],1,0,-1)
    {
    L = "0.000025 [H]"
    }
   0.inductor([666,324],1,0,-1)
    {
    L = "0.0000035 [H]"
    }
   0.inductor([576,270],0,0,-1)
    {
    L = "0.000005 [H]"
    }
   0.inductor([738,270],0,0,-1)
    {
    L = "0.000005 [H]"
    }
   }
  }
 Module("TW27")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII71",-54,-18)
    {
    }
   Electrical("GII72",-54,0)
    {
    }
   Electrical("AII7",-54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-42,15,"A")
   Text(0,4,"TW7")
   Text(-42,-21,"G1")
   Pen(ByNode,ByNode,ByNode,GII71)
   Line(-54,-18,-29,-18)
   Text(-42,-3,"G2")
   Pen(,,,GII72)
   Line(-54,0,-29,0)
   Pen(,,,AII7)
   Line(-54,18,-29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([612,522],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([792,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([792,774],1,0,-1)
    {
    }
   -Wire-([1152,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1260,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1044,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1098,648],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([594,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([666,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([702,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([792,342],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([738,342],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([900,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([648,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([756,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([792,396],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([702,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([864,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([792,630],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([792,702],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([792,594],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([720,522],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([792,432],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1224,738],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([1116,738],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([648,342],4,0,-1)
    {
    Name = "GII71"
    }
   0.xnode([540,522],4,0,-1)
    {
    Name = "AII7"
    }
   0.voltmeter([666,468],1,0,10)
    {
    Name = "VtowerII7"
    }
   0.breaker1([648,522],2,0,50)
    {
    NAME = "BRKVtowerII7"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([1098,648],0,0,-1)
    {
    Name = "BRKVtowerII7"
    }
   0.datalabel([1044,738],0,0,-1)
    {
    Name = "VtowerII7"
    }
   0.pgb([1152,648],0,142958288,40)
    {
    Name = "BRKVtowerII7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1296,738],0,0,-1)
    {
    Name = "BRKVtowerII7"
    }
   0.xnode([954,342],4,0,-1)
    {
    Name = "GII72"
    }
   }
  }
 Module("TW26")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII61",-54,-18)
    {
    }
   Electrical("GII62",-54,0)
    {
    }
   Electrical("AII6",-54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-42,15,"A")
   Text(0,4,"TW6")
   Text(-42,-21,"G1")
   Pen(ByNode,ByNode,ByNode,GII61)
   Line(-54,-18,-29,-18)
   Text(-42,-3,"G2")
   Pen(,,,GII62)
   Line(-54,0,-29,0)
   Pen(,,,AII6)
   Line(-54,18,-29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([270,540],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([450,756],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([450,792],1,0,-1)
    {
    }
   -Wire-([810,756],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([918,756],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([702,756],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([756,666],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([252,486],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([252,486],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([324,486],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([360,486],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([396,360],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([558,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([306,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,540],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,540],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([450,414],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([360,360],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([522,360],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([450,648],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([450,720],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([450,612],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([378,540],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([450,450],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.abs([774,756],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([306,360],4,0,-1)
    {
    Name = "GII61"
    }
   0.xnode([612,360],4,0,-1)
    {
    Name = "GII62"
    }
   0.xnode([198,540],4,0,-1)
    {
    Name = "AII6"
    }
   0.breaker1([306,540],2,0,50)
    {
    NAME = "BRKVtowerII6"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([324,486],1,0,10)
    {
    Name = "VtowerII6"
    }
   0.datalabel([756,666],0,0,-1)
    {
    Name = "BRKVtowerII6"
    }
   0.datalabel([702,756],0,0,-1)
    {
    Name = "VtowerII6"
    }
   0.pgb([810,666],0,142965632,40)
    {
    Name = "BRKVtowerII6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.compare([882,756],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.datalabel([954,756],0,0,-1)
    {
    Name = "BRKVtowerII6"
    }
   }
  }
 Module("TW25")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII52",-54,0)
    {
    }
   Electrical("AII5",-54,18)
    {
    }
   Electrical("GII51",-54,-18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-42,15,"A")
   Text(0,4,"TW5")
   Text(-42,-21,"G1")
   Text(-42,-3,"G2")
   Pen(ByNode,ByNode,ByNode,GII51)
   Line(-54,-18,-29,-18)
   Pen(,,,GII52)
   Line(-54,0,-29,0)
   Pen(,,,AII5)
   Line(-54,18,-29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([594,828],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([594,864],1,0,-1)
    {
    }
   -Wire-([954,828],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1062,828],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,828],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([900,738],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([396,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,432],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([540,432],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([702,432],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,432],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([558,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([594,486],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([504,432],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([666,432],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([594,720],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([594,792],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([594,684],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([522,612],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([594,522],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1026,828],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([918,828],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([450,432],4,0,-1)
    {
    Name = "GII51"
    }
   0.xnode([756,432],4,0,-1)
    {
    Name = "GII52"
    }
   0.voltmeter([468,558],1,0,10)
    {
    Name = "VtowerII5"
    }
   0.datalabel([900,738],0,0,-1)
    {
    Name = "BRKVtowerII5"
    }
   0.datalabel([846,828],0,0,-1)
    {
    Name = "VtowerII5"
    }
   0.pgb([954,738],0,144549744,40)
    {
    Name = "BRKVtowerII5"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.xnode([342,612],4,0,-1)
    {
    Name = "AII5"
    }
   -Wire-([414,612],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([396,558],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,558],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([450,612],2,0,50)
    {
    NAME = "BRKVtowerII5"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.datalabel([1098,828],0,0,-1)
    {
    Name = "BRKVtowerII5"
    }
   }
  }
 Module("TW24")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GII41",54,-18)
    {
    }
   Electrical("GII42",54,0)
    {
    }
   Electrical("AII4",54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(42,15,"A")
   Text(0,4,"TW4")
   Text(42,-21,"G1")
   Text(42,-3,"G2")
   Pen(ByNode,ByNode,ByNode,GII41)
   Line(54,-18,29,-18)
   Pen(,,,GII42)
   Line(54,0,29,0)
   Pen(,,,AII4)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([360,522],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([540,774],1,0,-1)
    {
    }
   -Wire-([900,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1008,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,648],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([342,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([414,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([450,468],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([540,342],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([486,342],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([648,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([396,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([540,396],1,0,-1)
    {
    L = "0.0000029 [H]"
    }
   0.inductor([450,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   0.inductor([612,342],0,0,-1)
    {
    L = "0.0000042 [H]"
    }
   -Wire-([540,630],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([540,702],1,0,-1)
    {
    R = "15 [ohm]"
    }
   0.inductor([540,594],1,0,-1)
    {
    L = "0.00002425 [H]"
    }
   0.inductor([468,522],0,0,-1)
    {
    L = "0.0000014 [H]"
    }
   -Wire-([540,432],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([972,738],0,0,30)
    {
    X = "2936"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([864,738],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([396,342],4,0,-1)
    {
    Name = "GII41"
    }
   0.xnode([288,522],4,0,-1)
    {
    Name = "AII4"
    }
   0.breaker1([396,522],2,0,50)
    {
    NAME = "BRKVtowerII4"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([414,468],1,0,10)
    {
    Name = "VtowerII4"
    }
   0.datalabel([846,648],0,0,-1)
    {
    Name = "BRKVtowerII4"
    }
   0.datalabel([792,738],0,0,-1)
    {
    Name = "VtowerII4"
    }
   0.pgb([900,648],0,144557496,40)
    {
    Name = "BRKVtowerII4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1044,738],0,0,-1)
    {
    Name = "BRKVtowerII4"
    }
   0.xnode([702,342],4,0,-1)
    {
    Name = "GII42"
    }
   }
  }
 Module("CB1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("cb12",54,0)
    {
    }
   Electrical("cb13",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Pen(ByNode,ByNode,ByNode,cb13)
   Line(-54,0,-29,0)
   Pen(,,,cb12)
   Line(54,0,29,0)
   Font(,Large)
   Text(0,4,"CB1")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   0.cable_interface([738,702],4,0,-1)
    {
    Name = "CB1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([594,702],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([828,702],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([1062,702],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.xnode([288,702],0,0,-1)
    {
    Name = "cb13"
    }
   0.xnode([1062,702],0,0,-1)
    {
    Name = "cb12"
    }
   0.cable_interface([612,702],0,0,-1)
    {
    Name = "CB1"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([378,702],0,0,-1)
    {
    Name = "CB13"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([504,702],4,0,-1)
    {
    Name = "CB13"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([846,702],0,0,-1)
    {
    Name = "CB12"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   0.cable_interface([972,702],4,0,-1)
    {
    Name = "CB12"
    NCAB = "1"
    C1T = "1"
    C2T = "3"
    C3T = "1"
    C4T = "1"
    C5T = "1"
    C6T = "1"
    }
   -Wire-([360,702],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Cable-([882,738],0,73007720,-1)
    {
    Name = "CB12"
    Date = 1105875164
    Freq = "50.0"
    Length = "0.006"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73009784,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,74932232,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([666,252],0,74933568,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([396,738],0,74933976,-1)
    {
    Name = "CB13"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.00125"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,74935264,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,73044000,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([630,216],0,73045464,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   -Cable-([648,738],0,73045872,-1)
    {
    Name = "CB1"
    Date = 1106225244
    Freq = "50.0"
    Length = "0.0114"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([306,324],0,73815560,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Cable_Coax([324,594],0,72917272,-1)
      {
      CABNUM = "1"
      Y = "1 [m]"
      X = "0 [m]"
      LL = "2"
      LC = "0"
      SHRad = "1"
      CONNAM1 = "Conductor"
      CONNAM2 = "Sheath"
      CONNAM3 = "Armour"
      CONNAM4 = "Outside Cond."
      R1 = "0.0 [m]"
      R2 = "0.11 [m]"
      RHOC = "1.68e-8 [ohms*m]"
      PERMC = "1"
      R3 = "0.56 [m]"
      EPS1 = "4.1"
      PERM1 = "1"
      R4 = "0.57 [m]"
      RHOS = "2.2e-7 [ohms*m]"
      PERMS = "1"
      R5 = ".0475 [m]"
      EPS2 = "2.3"
      PERM2 = "1"
      R6 = ".0583 [m]"
      RHOA = "1.8e-7 [ohms*m]"
      PERMA = "400"
      R7 = ".0635 [m]"
      EPS3 = "1.0"
      PERM3 = "1"
      R8 = ".07 [m]"
      RHOO = "1.8e-7 [ohms*m]"
      PERMO = "400"
      R9 = ".08 [m]"
      EPS4 = "1.0"
      PERM4 = "1"
      }
     0.Line_FrePhase_Options([576,162],0,72918880,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     }
    }
   }
  }
 Module("Z")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(0,-7,"波")
   Text(0,4,"形")
   Text(0,15,"图")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Plot-([936,828],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,396
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,167],"y")
     {
     Options = 137
     Units = ""
     Curve(20658064,"Vx",8388608,,,)
     }
    Graph([0,167],[0,0,576,166],"y")
     {
     Options = 137
     Units = ""
     Curve(24240608,"Vy",8388608,,,)
     }
    }
   }
  }
 Module("TW17")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GI71",-54,-18)
    {
    }
   Electrical("GI72",-54,0)
    {
    }
   Electrical("AI7",-54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-42,16,"A")
   Text(-42,-1,"G2")
   Text(0,4,"TW7")
   Text(-42,-19,"G1")
   Pen(ByNode,ByNode,ByNode,GI71)
   Line(-54,-18,-29,-18)
   Pen(,,,GI72)
   Line(-54,0,-29,0)
   Pen(,,,AI7)
   Line(-54,18,-29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([450,468],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([630,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([990,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1098,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([882,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([936,594],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,414],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,414],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([630,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([576,288],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([738,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([594,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([522,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([630,342],1,0,-1)
    {
    L = "0.0000041 [H]"
    }
   0.inductor([540,288],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   0.inductor([702,288],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([630,576],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([630,648],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([630,540],1,0,-1)
    {
    L = "0.0000499 [H]"
    }
   0.inductor([558,468],0,0,-1)
    {
    L = "0.00000825 [H]"
    }
   -Wire-([630,378],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.compare([1062,684],0,0,30)
    {
    X = "3375"
    OL = "1"
    OH = "0"
    INTR = "0"
    }
   0.abs([954,684],0,0,20)
    {
    Dim = "1"
    }
   0.xnode([486,288],4,0,-1)
    {
    Name = "GI71"
    }
   0.xnode([378,468],4,0,-1)
    {
    Name = "AI7"
    }
   0.breaker1([486,468],2,0,50)
    {
    NAME = "BRKVtowerI7"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.voltmeter([504,414],1,0,10)
    {
    Name = "VtowerI7"
    }
   0.xnode([792,288],4,0,-1)
    {
    Name = "GI72"
    }
   0.datalabel([936,594],0,0,-1)
    {
    Name = "BRKVtowerI7"
    }
   0.pgb([990,594],0,144570960,40)
    {
    Name = "BRKVtowerI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([882,684],0,0,-1)
    {
    Name = "VtowerI7"
    }
   0.datalabel([1242,648],0,0,-1)
    {
    Name = "BRKVtowerI7"
    }
   0.ff_d([1170,684],0,0,-1)
    {
    QInit = "0"
    Clock = "0"
    }
   0.const([1098,648],0,0,-1)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([1206,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("ZB1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北1")
   Text(0,25,"方案7")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   }
  }
 Component("Towergrounding")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("Parameters")
    {
    Text("Name",6,2,180,12,2)
     {
     Desc = "Name of Matlab Modle"
     Def = "horizontal_1"
     Len = 15
     }
    Text("Path",6,16,180,12,2)
     {
     Desc = "Path of .m files"
     Def = "F:\\grounding"
     Len = 15
     }
    Input("Tstep",6,30,180,12,2)
     {
     Desc = "Time Step"
     Def = "0.02"
     Data = Real
     Unit = "uS"
     Len = 15
     Min = 0
     }
    Input("Enable",6,44,180,12,2)
     {
     Desc = "En:1  Dis:0"
     Def = "1"
     Data = Real
     Len = 15
     Min = 0
     Max = 1
     }
    }
   }

  Nodes = 
   {
   Input("Iin",-54,0)
    {
    Type = Real
    }
   Output("Uin",54,-36)
    {
    Type = Real
    }
   Output("Uend",54,0)
    {
    Type = Real
    }
   Output("Rin",54,36)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-57,39,57)
   Pen(ByNode,ByNode,ByNode,Iin)
   Line(-54,0,-39,0)
   Pen(,Solid)
   Line(-39,0,-44,-5)
   Line(-39,0,-44,5)
   Pen(,ByNode,,Uin)
   Line(54,-36,39,-36)
   Pen(,,,Uend)
   Line(54,0,39,0)
   Pen(,,,Rin)
   Line(54,36,39,36)
   Text(0,-5,"Tower")
   Text(-46,-4,"Iin")
   Text(46,-40,"Uin")
   Text(46,-4,"Uend")
   Text(46,32,"Rin")
   Text(-1,10,"Grounding")
   }

  Section(EMTDC)
   {
   Fortran = "\
#STORAGE REAL:5
      IF($Enable.GT.0.9) THEN
	STORF(NSTORF)	       = $Iin
	STORF(NSTORF+1)	= $Tstep
	
	IF(TIMEZERO) THEN
	$Rin=10
	ELSE

       CALL MLAB_INT(\"$Path\", \"$Name\", \"R R\" , \"R\" )

 !      $Uin  = STORF(NSTORF+2)
 !      $Uend = STORF(NSTORF+3)
       $Rin  = STORF(NSTORF+2)
      	ENDIF
 
     	ENDIF	

      NSTORF = NSTORF + 5"
   }
  }
 Component("vtmode")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   }

  Nodes = 
   {
   Input("V",0,-54)
    {
    Type = Logical
    }
   Output("flash",54,0)
    {
    Type = Logical
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,V)
   Line(0,-54,0,-39)
   Pen(,Solid)
   Line(0,-39,-5,-44)
   Line(0,-39,5,-44)
   Pen(,ByNode,,flash)
   Line(54,0,39,0)
   Text(0,6,"伏秒特性")
   Text(10,-42,"V")
   Text(46,-4,"f")
   }

  Section(EMTDC)
   {
   DSDYN = "\
	#LOCAL REAL u
	#LOCAL REAL t
	#LOCAL REAL v
	#LOCAL REAL x
	#LOCAL REAL flag

	IF (TIMEZERO) THEN
		FLAG=0
	END IF

	IF (Flag .GE. 0.9) THEN
		$f=0
	ELSE
		t=TIME*1E6
		u=4200+7455*t**(-0.75);
		v=$v
		v=ABS(v)
			IF (v.GE.x) THEN
				x=v
			END IF
			IF (x .GE. u) THEN
				$f=0
				flag=1
			ELSE
				$f=1
			END IF
	END IF"
   }
  }
 Component("vtmode_1")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   }

  Nodes = 
   {
   Input("V",0,-54)
    {
    Type = Real
    }
   Output("f",54,0)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"伏秒特性")
   Pen(ByNode,ByNode,ByNode,V)
   Line(0,-54,0,-39)
   Pen(,Solid)
   Line(0,-39,-5,-44)
   Line(0,-39,5,-44)
   Text(10,-42,"V")
   Pen(,ByNode,,f)
   Line(54,0,39,0)
   Text(46,-4,"flash")
   }

  Section(EMTDC)
   {
   DSDYN = "\
	#LOCAL REAL u
	#LOCAL REAL t
	#LOCAL REAL v
	#LOCAL REAL x
	#LOCAL REAL flag

	IF (TIMEZERO) THEN
		FLAG=0
	END IF

	IF (Flag .GE. 0.9) THEN
		$f=0
	ELSE
		t=TIME*1E6
		u=4200+7455*t**(-0.75);
		v=$v
		v=ABS(v)
			IF (v.GE.x) THEN
				x=v
			END IF
			IF (x .GE. u) THEN
				$f=0
				flag=1
			ELSE
				$f=1
			END IF
	END IF"
   }
  }
 Module("ZB25")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北2")
   Text(0,25,"方案5")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([126,54],0,75490480,-1)
    {
    Name = "Line1"
    Date = 1248919139
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75452424,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75453408,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75454080,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([126,54],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([468,126],0,63318152,-1)
    {
    Name = "Line2"
    Date = 1248919139
    Freq = "50"
    Length = "0.0075"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63319344,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75520968,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75521536,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([342,144],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([342,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([342,216],1,0,-1)
    {
    }
   0.ground([450,216],7,0,-1)
    {
    }
   0.arrester([450,144],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([450,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([342,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([432,126],0,75556776,-1)
    {
    Name = "Line3"
    Date = 1248919139
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,73047088,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75589112,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75589768,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([360,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([324,126],0,72444752,-1)
    {
    Name = "Line4"
    Date = 1248919139
    Freq = "50"
    Length = "0.0279"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75621688,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75622872,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75623472,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([252,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([216,126],0,72447064,-1)
    {
    Name = "Line5"
    Date = 1248919139
    Freq = "50"
    Length = "0.00145"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75654488,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75655112,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75655712,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([126,144],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([126,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([126,216],1,0,-1)
    {
    }
   0.resistor([126,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([144,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([342,252],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([126,252],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([450,54],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([576,54],0,75688512,-1)
    {
    Name = "Line6"
    Date = 1248919140
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75719864,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75721000,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75721600,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([576,54],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([126,126],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([342,126],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([126,324],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([126,324],0,144592992,40)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,324],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([198,324],0,144593808,50)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,324],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([342,324],0,144594624,60)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([90,360],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111675528,"EREA",8388608,,,)
     Curve(111428144,"EPTREA",32768,,,)
     }
    }
   -Plot-([90,648],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111429992,"IAERA",8388608,,,)
     Curve(111575784,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB24")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北2")
   Text(0,25,"方案4")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([126,54],0,72473640,-1)
    {
    Name = "Line1"
    Date = 1248918890
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77432832,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77433344,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77433904,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([126,54],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([468,126],0,72476024,-1)
    {
    Name = "Line2"
    Date = 1248918890
    Freq = "50"
    Length = "0.0075"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77465624,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77466472,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77467072,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([342,144],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([342,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([342,216],1,0,-1)
    {
    }
   0.ground([450,216],7,0,-1)
    {
    }
   0.arrester([450,144],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([450,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([342,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([432,126],0,72484568,-1)
    {
    Name = "Line3"
    Date = 1248918890
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77531168,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77532304,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77532904,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([360,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([324,126],0,72487360,-1)
    {
    Name = "Line4"
    Date = 1248918890
    Freq = "50"
    Length = "0.0279"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77565280,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75557928,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75558456,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([252,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([216,126],0,72490008,-1)
    {
    Name = "Line5"
    Date = 1248918890
    Freq = "50"
    Length = "0.00225"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,72491200,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72492080,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72492680,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([126,144],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([126,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([126,216],1,0,-1)
    {
    }
   0.resistor([126,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([144,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([342,252],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([126,252],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([450,54],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([576,54],0,77630760,-1)
    {
    Name = "Line6"
    Date = 1248918890
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77594816,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77595952,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77661936,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([576,54],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([126,126],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([342,126],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([126,324],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([126,324],0,144608904,40)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,324],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([198,324],0,144609720,50)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,324],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([342,324],0,144610536,60)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([90,360],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111675528,"EREA",8388608,,,)
     Curve(111428144,"EPTREA",32768,,,)
     }
    }
   -Plot-([90,648],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111429992,"IAERA",8388608,,,)
     Curve(111575784,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB23")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北2")
   Text(0,25,"方案3")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([126,72],0,72545672,-1)
    {
    Name = "Line1"
    Date = 1248919138
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78088784,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78089296,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78089856,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([126,72],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([468,144],0,72548496,-1)
    {
    Name = "Line2"
    Date = 1248919138
    Freq = "50"
    Length = "0.0075"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78121576,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78122408,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72549400,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([468,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([342,162],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([342,234],1,0,-1)
    {
    }
   0.ground([450,234],7,0,-1)
    {
    }
   0.arrester([450,162],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([450,198],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([342,198],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([432,144],0,78154968,-1)
    {
    Name = "Line3"
    Date = 1248919138
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78087136,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78186296,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78186760,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([360,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([324,144],0,63395424,-1)
    {
    Name = "Line4"
    Date = 1248919139
    Freq = "50"
    Length = "0.0279"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63396616,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,63397496,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78219864,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([252,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.ground([234,234],7,0,-1)
    {
    }
   0.arrester([234,162],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([234,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([234,198],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([216,144],0,78253768,-1)
    {
    Name = "Line5"
    Date = 1248919139
    Freq = "50"
    Length = "0.0062"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77563976,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72588568,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78285560,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([126,162],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([126,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([126,234],1,0,-1)
    {
    }
   0.resistor([126,198],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([144,144],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([342,270],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([126,270],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([450,72],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([576,72],0,78318376,-1)
    {
    Name = "Line6"
    Date = 1248918890
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,72591568,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72592704,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72593304,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([576,72],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([126,144],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([342,144],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([126,342],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([126,342],0,144626040,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,342],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([198,342],0,144626856,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([270,342],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([270,342],0,144627672,70)
    {
    Name = "IAERA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,342],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([342,342],0,144628488,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([90,378],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111675528,"EREA",8388608,,,)
     Curve(111428144,"EPTREA",32768,,,)
     }
    }
   -Plot-([90,666],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111429992,"IAERA",8388608,,,)
     Curve(111575784,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB22")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北2")
   Text(0,25,"方案2")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([144,54],0,72634928,-1)
    {
    Name = "Line1"
    Date = 1248919137
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78777528,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78778040,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72636016,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([144,54],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([486,126],0,72638568,-1)
    {
    Name = "Line2"
    Date = 1248919137
    Freq = "50"
    Length = "0.0075"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78810008,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78810824,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78811328,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([486,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([360,144],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([360,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([360,216],1,0,-1)
    {
    }
   0.ground([468,216],7,0,-1)
    {
    }
   0.arrester([468,144],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([468,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([360,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([450,126],0,78807312,-1)
    {
    Name = "Line3"
    Date = 1248919137
    Freq = "50"
    Length = "0.0155"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78880000,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78808600,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78809224,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([378,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([342,126],0,63445432,-1)
    {
    Name = "Line4"
    Date = 1248919138
    Freq = "50"
    Length = "0.0279"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63446624,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78913048,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72640904,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([270,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.ground([252,216],7,0,-1)
    {
    }
   0.arrester([252,144],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([252,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([252,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([234,126],0,72643880,-1)
    {
    Name = "Line5"
    Date = 1248919138
    Freq = "50"
    Length = "0.0062"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,72645000,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72646136,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78978416,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([144,144],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([144,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([144,216],1,0,-1)
    {
    }
   0.resistor([144,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([162,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([360,252],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([144,252],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([468,54],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([594,54],0,77332488,-1)
    {
    Name = "Line6"
    Date = 1248919138
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75689696,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72749200,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78155216,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([594,54],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([144,126],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([360,126],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([144,324],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([144,324],0,144643992,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([216,324],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([216,324],0,144644808,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([288,324],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([288,324],0,144645624,70)
    {
    Name = "IAERA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([360,324],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([360,324],0,144646440,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([108,360],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111675528,"EREA",8388608,,,)
     Curve(111428144,"EPTREA",32768,,,)
     }
    }
   -Plot-([108,648],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111429992,"IAERA",8388608,,,)
     Curve(111575784,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB21")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北2")
   Text(0,25,"方案1")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([306,108],0,77955080,-1)
    {
    Name = "Line1"
    Date = 1248919136
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,77955960,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77956224,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77956784,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([306,108],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([648,180],0,77889544,-1)
    {
    Name = "Line2"
    Date = 1248919136
    Freq = "50"
    Length = "0.014"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79470272,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,77890832,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,77891432,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([648,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([522,198],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([522,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([522,270],1,0,-1)
    {
    }
   0.ground([630,270],7,0,-1)
    {
    }
   0.arrester([630,198],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([630,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([630,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([522,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([612,180],0,78020880,-1)
    {
    Name = "Line3"
    Date = 1248919137
    Freq = "50"
    Length = "0.0155"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79535832,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78022600,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78119328,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([540,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([504,180],0,78151944,-1)
    {
    Name = "Line4"
    Date = 1248919137
    Freq = "50"
    Length = "0.0279"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78152824,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78153632,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72835192,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([432,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.ground([414,270],7,0,-1)
    {
    }
   0.arrester([414,198],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([414,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([396,180],0,78218488,-1)
    {
    Name = "Line5"
    Date = 1248919137
    Freq = "50"
    Length = "0.0107"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78249992,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78251128,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78251392,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([306,198],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([306,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([306,270],1,0,-1)
    {
    }
   0.resistor([306,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([324,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([522,306],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([306,306],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([630,108],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([756,108],0,78315880,-1)
    {
    Name = "Line6"
    Date = 1248919137
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78317192,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78348568,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78349168,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([756,108],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([306,180],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([522,180],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([306,378],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([306,378],0,144661944,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([378,378],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([378,378],0,144662760,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([450,378],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([450,378],0,144663576,70)
    {
    Name = "IAERA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([522,378],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([522,378],0,144664392,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([270,414],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111675528,"EREA",8388608,,,)
     Curve(111428144,"EPTREA",32768,,,)
     }
    }
   -Plot-([270,702],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(111429992,"IAERA",8388608,,,)
     Curve(111575784,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB19")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北1")
   Text(0,25,"方案9")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([270,126],0,72814064,-1)
    {
    Name = "Line1"
    Date = 1248919135
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,75686560,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72667944,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,72668360,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([270,126],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([612,198],0,72670896,-1)
    {
    Name = "Line2"
    Date = 1248919136
    Freq = "50"
    Length = "0.0085"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79270768,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79271584,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79272184,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([612,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([486,216],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([486,198],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([486,288],1,0,-1)
    {
    }
   0.ground([594,288],7,0,-1)
    {
    }
   0.arrester([594,216],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([594,198],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([594,252],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([486,252],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([576,198],0,79467168,-1)
    {
    Name = "Line3"
    Date = 1248919136
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79468400,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79469536,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63554696,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([504,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([468,198],0,63556904,-1)
    {
    Name = "Line4"
    Date = 1248919136
    Freq = "50"
    Length = "0.0145"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63530104,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,63530912,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63531408,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([396,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.ground([378,288],7,0,-1)
    {
    }
   0.arrester([378,216],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([378,198],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([378,252],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([360,198],0,63507184,-1)
    {
    Name = "Line5"
    Date = 1248919136
    Freq = "50"
    Length = "0.004"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63455744,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,63456744,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63457344,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([270,216],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([270,198],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([270,288],1,0,-1)
    {
    }
   0.resistor([270,252],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([288,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([486,324],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([270,324],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([594,126],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([720,126],0,79698176,-1)
    {
    Name = "Line6"
    Date = 1248919136
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79995176,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79996160,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79996744,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([720,126],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([270,198],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([486,198],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([270,396],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([270,396],0,144679896,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,396],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([342,396],0,144680712,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([414,396],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([414,396],0,144681528,70)
    {
    Name = "IAERA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([486,396],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([486,396],0,144682344,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([198,432],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144679896,"EREA",8388608,,,)
     Curve(144680712,"EPTREA",32768,,,)
     }
    }
   -Plot-([198,720],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144681528,"IAERA",8388608,,,)
     Curve(144682344,"IAPTL",32768,,,)
     }
    }
   }
  }
 Module("ZB18")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北1")
   Text(0,25,"方案8")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([126,54],0,80325032,-1)
    {
    Name = "Line1"
    Date = 1248919135
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,72812184,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,72812648,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80360744,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([126,54],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([468,126],0,80362928,-1)
    {
    Name = "Line2"
    Date = 1248919135
    Freq = "50"
    Length = "0.0085"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80397600,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80398448,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80399048,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([342,144],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([342,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([342,216],1,0,-1)
    {
    }
   0.ground([450,216],7,0,-1)
    {
    }
   0.arrester([450,144],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([450,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([342,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([432,126],0,80437800,-1)
    {
    Name = "Line3"
    Date = 1248919135
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80472592,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,73965640,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,73966280,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([360,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([324,126],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -TLine-([216,126],0,73968832,-1)
    {
    Name = "Line5"
    Date = 1248919135
    Freq = "50"
    Length = "0.0185"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80512736,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80513632,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80514232,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([126,144],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([126,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([126,216],1,0,-1)
    {
    }
   0.resistor([126,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([144,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([342,252],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([126,252],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([450,54],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([576,54],0,80550416,-1)
    {
    Name = "Line6"
    Date = 1248919135
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80585384,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80586520,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80587120,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([576,54],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([126,126],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([342,126],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([126,324],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([126,324],0,144695400,40)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,324],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([198,324],0,144696216,50)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,324],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([342,324],0,144697032,60)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([72,342],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144695400,"EREA",8388608,,,)
     Curve(144696216,"EPTREA",32768,,,)
     }
    }
   -Plot-([72,630],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144697032,"IAPTL",8388608,,,)
     }
    }
   }
  }
 Module("ZB17")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北1")
   Text(0,25,"方案7")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([126,54],0,80990608,-1)
    {
    Name = "Line1"
    Date = 1248919134
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63592080,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,63592480,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63592936,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([126,54],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([468,126],0,81062472,-1)
    {
    Name = "Line2"
    Date = 1248919134
    Freq = "50"
    Length = "0.0085"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81097704,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81098520,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81099120,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([342,144],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([342,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([342,216],1,0,-1)
    {
    }
   0.ground([450,216],7,0,-1)
    {
    }
   0.arrester([450,144],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([450,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([342,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([432,126],0,81138432,-1)
    {
    Name = "Line3"
    Date = 1248919134
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80360168,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74047440,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74047856,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([360,126],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([324,126],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -TLine-([216,126],0,74050208,-1)
    {
    Name = "Line5"
    Date = 1248919134
    Freq = "50"
    Length = "0.005"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81176216,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81177112,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81177712,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([126,144],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([126,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([126,216],1,0,-1)
    {
    }
   0.resistor([126,180],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([144,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([342,252],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([126,252],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([450,54],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([576,54],0,75391144,-1)
    {
    Name = "Line6"
    Date = 1248919135
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74997168,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75227144,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75227536,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([576,54],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([126,126],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([342,126],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([126,324],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([126,324],0,144710088,40)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,324],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([198,324],0,144710904,50)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([342,324],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([342,324],0,144711720,60)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([108,360],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144710088,"EREA",8388608,,,)
     Curve(144710904,"EPTREA",32768,,,)
     }
    }
   -Plot-([108,648],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144711720,"IAPTL",8388608,,,)
     }
    }
   }
  }
 Module("ZB15")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"浙北1")
   Text(0,25,"方案5")
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Text(-46,-4,"L")
   Pen(,,,R)
   Line(54,0,39,0)
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([162,108],0,63643248,-1)
    {
    Name = "Line1"
    Date = 1248919133
    Freq = "50"
    Length = "0.095"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81281856,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81282336,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81282896,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([162,108],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([504,180],0,74159216,-1)
    {
    Name = "Line2"
    Date = 1248919133
    Freq = "50"
    Length = "0.0075"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74160408,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74272776,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74273344,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([504,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([378,198],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([378,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([378,270],1,0,-1)
    {
    }
   0.ground([486,270],7,0,-1)
    {
    }
   0.arrester([486,198],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([486,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([486,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([378,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([468,180],0,63653712,-1)
    {
    Name = "Line3"
    Date = 1248919134
    Freq = "50"
    Length = "0.009"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63654960,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74215608,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74216264,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([360,180],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -TLine-([252,180],0,74244104,-1)
    {
    Name = "Line5"
    Date = 1248919134
    Freq = "50"
    Length = "0.0115"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74245224,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74246120,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74246720,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([162,198],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([162,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([162,270],1,0,-1)
    {
    }
   0.resistor([162,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([180,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([378,306],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([162,306],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([486,108],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([612,108],0,74993848,-1)
    {
    Name = "Line6"
    Date = 1248919134
    Freq = "50"
    Length = "0.003"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74996600,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81139992,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74330120,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([612,108],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([162,180],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([378,180],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([162,378],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([162,378],0,144724776,40)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([234,378],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([234,378],0,144725592,50)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([378,378],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([378,378],0,144726408,60)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([108,432],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144724776,"EREA",8388608,,,)
     Curve(144725592,"EPTREA",32768,,,)
     }
    }
   -Plot-([108,720],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144726408,"IAPTL",8388608,,,)
     }
    }
   }
  }
 Module("ZB14")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Pen(,,,R)
   Line(54,0,39,0)
   Text(0,6,"皖南2")
   Text(-46,-4,"L")
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([108,72],0,63617496,-1)
    {
    Name = "Line1"
    Date = 1248919132
    Freq = "50"
    Length = "0.0995"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63618800,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81656888,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81657448,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([108,72],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([450,144],0,63716400,-1)
    {
    Name = "Line2"
    Date = 1248919133
    Freq = "50"
    Length = "0.006"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81693072,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81693888,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75190472,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([324,162],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([324,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([324,198],1,0,-1)
    {
    }
   0.ground([432,234],7,0,-1)
    {
    }
   0.arrester([432,162],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([432,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([432,198],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   -TLine-([414,144],0,81731240,-1)
    {
    Name = "Line3"
    Date = 1248919133
    Freq = "50"
    Length = "0.013"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81766832,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81767912,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74531760,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([306,144],0,74533968,-1)
    {
    Name = "Line4"
    Date = 1248919133
    Freq = "50"
    Length = "0.014"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81803712,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81804520,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81805056,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([234,144],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.ground([216,234],7,0,-1)
    {
    }
   0.arrester([216,162],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([216,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([216,198],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   -TLine-([198,144],0,74561576,-1)
    {
    Name = "Line5"
    Date = 1248919133
    Freq = "50"
    Length = "0.00775"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74562768,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81841360,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63726616,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([108,162],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([108,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([108,198],1,0,-1)
    {
    }
   -Wire-([126,144],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([324,270],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([108,270],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([432,72],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([558,72],0,81878096,-1)
    {
    Name = "Line6"
    Date = 1248919133
    Freq = "50"
    Length = "0.005"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81914776,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75030960,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75031560,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([558,72],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([108,144],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([324,144],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([108,342],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([108,342],0,144741096,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([180,342],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([180,342],0,144741912,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([252,342],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([252,342],0,144742728,70)
    {
    Name = "IAERA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([324,342],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([324,342],0,144743544,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([90,666],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144742728,"IAERA",8388608,,,)
     Curve(144743544,"IAPTL",32768,,,)
     }
    }
   -Plot-([90,378],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144741096,"EREA",8388608,,,)
     Curve(144741912,"EPTREA",32768,,,)
     }
    }
   }
  }
 Module("ZB13")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Pen(,,,R)
   Line(54,0,39,0)
   Text(0,6,"皖南1")
   Text(-46,-4,"L")
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([162,18],0,74994976,-1)
    {
    Name = "Line1"
    Date = 1248919132
    Freq = "50"
    Length = "0.0995"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82430960,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,82431472,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,63788080,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([162,18],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([504,90],0,63790616,-1)
    {
    Name = "Line2"
    Date = 1248919132
    Freq = "50"
    Length = "0.006"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82467848,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74732160,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74732552,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([504,90],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([378,108],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([378,90],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([378,180],1,0,-1)
    {
    }
   0.ground([486,180],7,0,-1)
    {
    }
   0.arrester([486,108],6,0,20)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([486,90],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([486,144],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([378,144],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([468,90],0,74761576,-1)
    {
    Name = "Line3"
    Date = 1248919132
    Freq = "50"
    Length = "0.0155"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82541936,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74763000,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74763600,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([396,90],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([378,216],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   -Wire-([486,18],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([612,18],0,82578464,-1)
    {
    Name = "Line6"
    Date = 1248919132
    Freq = "50"
    Length = "0.005"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74791248,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74792248,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74817616,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([612,18],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([378,90],2,0,10)
    {
    Name = "EPTREA"
    }
   0.datalabel([234,288],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([234,288],0,144753336,30)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([378,288],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([378,288],0,144754152,40)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   }
  }
 Module("ZB12")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Pen(,,,R)
   Line(54,0,39,0)
   Text(0,6,"沪西2")
   Text(-46,-4,"L")
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([162,108],0,82652336,-1)
    {
    Name = "Line1"
    Date = 1248919131
    Freq = "50"
    Length = "0.0995"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82576816,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,82577760,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74874888,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([162,108],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([504,180],0,82689192,-1)
    {
    Name = "Line2"
    Date = 1248919131
    Freq = "50"
    Length = "0.006"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82689752,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74878408,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,75022456,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([504,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([378,198],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([378,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([378,270],1,0,-1)
    {
    }
   0.ground([486,270],7,0,-1)
    {
    }
   0.arrester([486,198],6,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([486,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([486,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.resistor([378,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -TLine-([468,180],0,82762944,-1)
    {
    Name = "Line3"
    Date = 1248919131
    Freq = "50"
    Length = "0.0155"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,82763496,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,75423200,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,82355384,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([360,180],0,82799840,-1)
    {
    Name = "Line4"
    Date = 1248919131
    Freq = "50"
    Length = "0.024"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74054408,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74055216,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74055624,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([288,180],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -TLine-([252,180],0,82836736,-1)
    {
    Name = "Line5"
    Date = 1248919132
    Freq = "50"
    Length = "0.00265"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74063600,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74064408,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74064848,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([162,198],1,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([162,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([162,270],1,0,-1)
    {
    }
   0.resistor([162,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   -Wire-([180,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.annotation([378,306],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   0.annotation([162,306],0,0,-1)
    {
    AL1 = "高抗"
    AL2 = ""
    }
   -Wire-([486,108],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([612,108],0,74068448,-1)
    {
    Name = "Line6"
    Date = 1248919132
    Freq = "50"
    Length = "0.005"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,74069072,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,74070208,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,74070808,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([612,108],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([162,180],2,0,10)
    {
    Name = "EREA"
    }
   0.voltmetergnd([378,180],2,0,20)
    {
    Name = "EPTREA"
    }
   0.datalabel([162,378],0,0,-1)
    {
    Name = "EREA"
    }
   0.pgb([162,378],0,144768432,50)
    {
    Name = "EREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([234,378],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([234,378],0,144769248,60)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([378,378],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([378,378],0,144770064,80)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.ground([270,270],7,0,-1)
    {
    }
   0.arrester([270,198],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAREA"
    }
   -Wire-([270,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([270,234],1,0,-1)
    {
    R = "3 [ohm]"
    }
   0.datalabel([306,378],0,0,-1)
    {
    Name = "IAREA"
    }
   0.pgb([306,378],0,144772104,70)
    {
    Name = "IAREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   }
  }
 Module("ZB11")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("L",-54,0)
    {
    }
   Electrical("R",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,L)
   Line(-54,0,-39,0)
   Pen(,,,R)
   Line(54,0,39,0)
   Text(0,6,"沪西1")
   Text(-46,-4,"L")
   Text(46,-4,"R")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([324,36],0,78986968,-1)
    {
    Name = "Line1"
    Date = 1248919130
    Freq = "50"
    Length = "0.0155"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;306,0;324,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,78989128,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,78990264,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,78990864,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([324,36],0,0,-1)
    {
    Name = "L"
    }
   -TLine-([666,108],0,80068616,-1)
    {
    Name = "Line2"
    Date = 1248919131
    Freq = "50"
    Length = "0.006"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,-72;0,-72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79994888,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80175248,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,83058112,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([666,108],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.capacitor([540,126],1,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([540,108],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([540,162],1,0,-1)
    {
    }
   0.ground([648,198],7,0,-1)
    {
    }
   0.arrester([648,126],6,0,20)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAPTL"
    }
   -Wire-([648,108],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([648,162],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   -TLine-([630,108],0,81096848,-1)
    {
    Name = "Line3"
    Date = 1248919131
    Freq = "50"
    Length = "0.013"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,83131904,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81097368,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80396848,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([558,108],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.annotation([540,234],0,0,-1)
    {
    AL1 = "PT"
    AL2 = ""
    }
   -Wire-([648,36],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([774,36],0,80843024,-1)
    {
    Name = "Line6"
    Date = 1248919131
    Freq = "50"
    Length = "0.005"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80843512,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80992864,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80993320,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([774,36],0,0,-1)
    {
    Name = "R"
    }
   0.voltmetergnd([540,108],2,0,10)
    {
    Name = "EPTREA"
    }
   0.datalabel([360,252],0,0,-1)
    {
    Name = "EPTREA"
    }
   0.pgb([360,252],0,144781488,30)
    {
    Name = "EPTREA"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([432,252],0,0,-1)
    {
    Name = "IAPTL"
    }
   0.pgb([432,252],0,144782304,40)
    {
    Name = "IAPTL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([234,612],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144782304,"IAPTL",8388608,,,)
     }
    }
   -Plot-([234,324],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144781488,"EPTREA",8388608,,,)
     }
    }
   }
  }
 Module("T1T2")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   Electrical("T4",-54,-18)
    {
    }
   Electrical("T2",-54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode)
   Line(-54,-18,-39,-18)
   Pen(,,,T2)
   Line(-54,18,-39,18)
   Text(0,6,"T1T2")
   Text(-46,-22,"T4")
   Text(-46,14,"T2")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   0.datalabel([198,792],0,0,-1)
    {
    Name = "ET"
    }
   0.pgb([198,792],0,144783120,50)
    {
    Name = "ET"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,828],0,0,-1)
    {
    Name = "IAT"
    }
   0.pgb([198,828],0,144783936,60)
    {
    Name = "IAT"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([198,756],0,0,-1)
    {
    Name = "EPTT"
    }
   0.pgb([198,756],0,144784752,40)
    {
    Name = "EPTT"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Plot-([414,666],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144783120,"ET",8388608,,,)
     }
    }
   -TLine-([270,180],0,63928648,-1)
    {
    Name = "Line1"
    Date = 1248919130
    Freq = "50"
    Length = "0.0561"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;90,0;108,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63929912,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,83017872,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,83018328,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([270,180],0,0,-1)
    {
    Name = "T4"
    }
   -TLine-([396,180],0,83020440,-1)
    {
    Name = "Line2"
    Date = 1248919130
    Freq = "50"
    Length = "0.011"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,90;0,90"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,83055232,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,83055496,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,83056048,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([378,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([306,270],0,81027824,-1)
    {
    Name = "Line3"
    Date = 1248919130
    Freq = "50"
    Length = "0.0038"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;72,0;90,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,81029016,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,81030032,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,81030632,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -TLine-([396,270],0,79402424,-1)
    {
    Name = "Line4"
    Date = 1248919130
    Freq = "50"
    Length = "0.0048"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;72,0;90,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79403616,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,83091464,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,83092064,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -TLine-([414,180],0,83094096,-1)
    {
    Name = "Line5"
    Date = 1248919130
    Freq = "50"
    Length = "0.0214"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;90,0;108,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79434048,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79434912,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79435512,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([558,180],0,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([522,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([594,180],0,0,-1)
    {
    }
   0.capacitor([306,288],7,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([306,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([306,324],7,0,-1)
    {
    }
   0.ground([486,360],7,0,-1)
    {
    }
   0.arrester([486,288],6,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IAT"
    }
   -Wire-([486,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([486,324],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   0.voltmetergnd([540,180],0,0,10)
    {
    Name = "ET"
    }
   0.voltmetergnd([306,270],5,0,20)
    {
    Name = "EPTT"
    }
   -TLine-([288,432],0,63944920,-1)
    {
    Name = "Line6"
    Date = 1248919130
    Freq = "50"
    Length = "0.0561"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;90,0;108,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63946216,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,82981552,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,82982064,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.xnode([288,432],0,0,-1)
    {
    Name = "T2"
    }
   -TLine-([414,432],0,80801800,-1)
    {
    Name = "Line8"
    Date = 1248851520
    Freq = "50"
    Length = "0.011"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,90;0,90"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,80804568,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,80771824,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,80772320,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -Wire-([396,432],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([324,522],0,63911784,-1)
    {
    Name = "Line9"
    Date = 1248851520
    Freq = "50"
    Length = "0.0038"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;72,0;90,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,63912976,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79499272,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79499736,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -TLine-([414,522],0,79501768,-1)
    {
    Name = "Line10"
    Date = 1248851520
    Freq = "50"
    Length = "0.0048"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;72,0;90,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79532232,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79533176,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79533720,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   -TLine-([432,432],0,79564880,-1)
    {
    Name = "Line7"
    Date = 1248851520
    Freq = "50"
    Length = "0.0214"
    Dim = 1
    Mode = 1
    Vertex="0,0;18,0;90,0;108,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,468],0,79566072,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FrePhase_Options([576,180],0,79566936,-1)
      {
      Interp1 = "1"
      Output = "0"
      Inflen = "0"
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      Numf = "100"
      YMaxP = "20"
      AMaxP = "20"
      YMaxE = "0.2 [%]"
      AMaxE = "0.2 [%]"
      xxx = ""
      W1 = "1"
      W2 = "1000"
      W3 = "1"
      }
     0.Line_Tower_1([396,378],0,79567536,-1)
      {
      TName = "Conductor"
      Y = "24 [m]"
      XC = "10 [m]"
      X = "0 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     }
    }
   0.capacitor([576,432],0,0,-1)
    {
    C = "6e-3 [uF]"
    }
   -Wire-([540,432],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ground([612,432],0,0,-1)
    {
    }
   0.capacitor([324,540],7,0,-1)
    {
    C = "5e-3 [uF]"
    }
   -Wire-([324,522],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([324,576],7,0,-1)
    {
    }
   0.ground([504,612],7,0,-1)
    {
    }
   0.arrester([504,540],6,0,-1)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = ""
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.resistor([504,576],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   }
  }
 Module("GIS")
  {
  Desc = ""
  FileDate = 1248851679
  Nodes = 
   {
   Electrical("HX1",-54,-72)
    {
    }
   Electrical("HX2",-54,-36)
    {
    }
   Electrical("T2",54,36)
    {
    }
   Electrical("WN2",-54,36)
    {
    }
   Electrical("WN1",-54,72)
    {
    }
   Electrical("T4",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-93,39,93)
   Pen(ByNode,ByNode,ByNode)
   Line(-54,-72,-39,-72)
   Line(-54,-36,-39,-36)
   Pen(,,,T2)
   Line(40,36,55,36)
   Line(-54,36,-39,36)
   Line(-54,72,-39,72)
   Line(54,0,39,0)
   Text(0,6,"GIS")
   Text(-46,-76,"HX1")
   Text(-46,-40,"HX2")
   Text(46,33,"T2")
   Text(-46,32,"WN2")
   Text(-46,68,"WN1")
   Text(46,-4,"T4")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -TLine-([288,126],0,82944616,-1)
    {
    Name = "GIS9"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0696"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,234;0,234"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,82946176,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,79597576,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,126],0,79599624,-1)
    {
    Name = "GIS2"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0189"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,79600776,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,79630888,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,72],0,79633112,-1)
    {
    Name = "GIS1"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0408"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,79663336,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,79664344,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,126],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([738,126],0,80875528,-1)
    {
    Name = "GIS10"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0696"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,234;0,234"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,80878208,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,80879056,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.xnode([396,72],0,0,-1)
    {
    Name = "HX1"
    }
   -Wire-([396,72],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([432,54],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([432,18],3,0,-1)
    {
    }
   0.annotation([216,126],0,0,-1)
    {
    AL1 = "BUS1"
    AL2 = ""
    }
   0.annotation([792,126],0,0,-1)
    {
    AL1 = "BUS2"
    AL2 = ""
    }
   0.voltmetergnd([468,72],3,0,10)
    {
    Name = "EGISL"
    }
   0.voltmetergnd([576,72],5,0,20)
    {
    Name = "EGIST"
    }
   0.datalabel([18,918],0,0,-1)
    {
    Name = "EGISL"
    }
   0.datalabel([18,954],0,0,-1)
    {
    Name = "EGIST"
    }
   0.datalabel([90,918],0,0,-1)
    {
    Name = "IABUS1"
    }
   0.datalabel([90,954],0,0,-1)
    {
    Name = "IABUS2"
    }
   0.pgb([18,918],0,142449304,50)
    {
    Name = "EGISL"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([18,954],0,142449712,70)
    {
    Name = "EGIST"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([90,918],0,142450120,60)
    {
    Name = "IABUS1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([90,954],0,142450528,80)
    {
    Name = "IABUS2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.capacitor([342,162],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([342,162],7,0,-1)
    {
    }
   -Wire-([324,126],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([414,126],0,63976472,-1)
    {
    Name = "GIS3"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0121"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,63978472,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,79761552,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,54],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -TLine-([504,126],0,79764016,-1)
    {
    Name = "GIS4"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0117"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83210384,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83211328,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.capacitor([522,162],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([522,162],7,0,-1)
    {
    }
   -Wire-([504,126],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([594,126],0,83251752,-1)
    {
    Name = "GIS5"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0131"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83252904,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83253920,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,126],0,79860640,-1)
    {
    Name = "GIS6"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0113"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,79861792,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,79862776,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,72],0,83294208,-1)
    {
    Name = "GIS7"
    Date = 1248851516
    Freq = "50.0"
    Length = "0.0448"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,80691288,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,80692136,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([594,126],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([648,72],0,0,-1)
    {
    Name = "T4"
    }
   0.capacitor([612,54],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([612,18],3,0,-1)
    {
    }
   0.annotation([612,144],0,0,-1)
    {
    AL1 = "BUS1"
    AL2 = ""
    }
   0.capacitor([684,162],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([684,162],7,0,-1)
    {
    }
   -Wire-([612,54],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([612,72],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,126],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([738,126],0,80886632,-1)
    {
    Name = "GIS8"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0141"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83292296,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,63989304,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([612,72],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([432,72],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([324,360],0,83132608,-1)
    {
    Name = "GIS11"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0189"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83133680,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83134544,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,306],0,83333096,-1)
    {
    Name = "GIS13"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0494"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,80876680,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,80877528,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([396,306],0,0,-1)
    {
    Name = "HX2"
    }
   -Wire-([396,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([432,288],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([432,252],3,0,-1)
    {
    }
   0.capacitor([342,396],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   0.ground([342,396],7,0,-1)
    {
    }
   -Wire-([324,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -TLine-([414,360],0,83415232,-1)
    {
    Name = "GIS12"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0121"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83416544,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83417752,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,288],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -TLine-([504,360],0,83456928,-1)
    {
    Name = "GIS14"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0117"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83458080,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83458928,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.ground([522,396],7,0,-1)
    {
    }
   -Wire-([504,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([522,396],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   -TLine-([288,360],0,83498184,-1)
    {
    Name = "GIS15"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0708"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,126;0,126"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,83499336,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,83499600,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([738,360],0,64010048,-1)
    {
    Name = "GIS16"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0708"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,126;0,126"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,64011200,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,83538912,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([288,522],0,83540928,-1)
    {
    Name = "GIS17"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0708"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,162;0,162"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,83579960,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,83580808,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([738,522],0,81363968,-1)
    {
    Name = "GIS18"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0708"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,162;0,162"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,81362120,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,83621480,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.ground([432,504],6,0,-1)
    {
    }
   0.arrester([342,504],5,0,30)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IABUS1"
    }
   0.resistor([396,504],6,0,-1)
    {
    R = "16.5 [ohm]"
    }
   -Wire-([378,504],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -TLine-([342,504],0,81366440,-1)
    {
    Name = "GIS19"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0055"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83661992,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83663464,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([288,504],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([288,486],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([738,486],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([594,504],2,0,-1)
    {
    }
   0.arrester([684,504],3,0,40)
    {
    Name = ""
    VSCAL = "828 [kV]"
    ISCAL = "1"
    ENAB = "1"
    Cnfg = "1"
    X1 = "1e-4 [kA]"
    Y1 = "0.9300 [p.u.]"
    X2 = "1e-3 [kA]"
    Y2 = "1.0700 [p.u.]"
    X3 = "1e-2 [kA]"
    Y3 = "1.2312 [p.u.]"
    X4 = "0.1 [kA]"
    Y4 = "1.4167 [p.u.]"
    X5 = "1 [kA]"
    Y5 = "1.6301 [p.u.]"
    X6 = "5 [kA]"
    Y6 = "1.7980 [p.u.]"
    X7 = "10 [kA]"
    Y7 = "1.8756 [p.u.]"
    X8 = "15 [kA]"
    Y8 = "1.9225 [p.u.]"
    X9 = "20 [kA]"
    Y9 = "1.9565 [p.u.]"
    X10 = "30 [kA]"
    Y10 = "2.0055 [p.u.]"
    X11 = "50 [kA]"
    Y11 = "2.0689 [p.u.]"
    File = "datafile"
    path = "0"
    Energy = ""
    Curr = "IABUS2"
    }
   -Wire-([648,504],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -TLine-([720,504],0,83703784,-1)
    {
    Name = "GIS20"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0055"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83705008,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,81369704,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([720,504],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.resistor([630,504],2,0,-1)
    {
    R = "16.5 [ohm]"
    }
   -TLine-([324,684],0,83744136,-1)
    {
    Name = "GIS21"
    Date = 1248851517
    Freq = "50.0"
    Length = "0.0189"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83701848,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83745208,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,630],0,64059040,-1)
    {
    Name = "GIS23"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0408"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,64060144,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,64061168,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([396,630],0,0,-1)
    {
    Name = "WN2"
    }
   -Wire-([396,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([432,612],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([432,576],3,0,-1)
    {
    }
   0.capacitor([342,720],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   0.ground([342,720],7,0,-1)
    {
    }
   -Wire-([324,684],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -TLine-([414,684],0,83827864,-1)
    {
    Name = "GIS22"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0121"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83867040,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83868112,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,612],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -TLine-([504,684],0,81373488,-1)
    {
    Name = "GIS24"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0117"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83907920,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83908904,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.capacitor([522,720],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([522,720],7,0,-1)
    {
    }
   -Wire-([504,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -TLine-([594,684],0,81375792,-1)
    {
    Name = "GIS25"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0131"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,83948888,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83949904,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,684],0,81377464,-1)
    {
    Name = "GIS26"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0113"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,81378616,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,83990392,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,630],0,81378976,-1)
    {
    Name = "GIS27"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0448"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,81385264,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,83662440,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([594,684],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([648,630],0,0,-1)
    {
    Name = "T2"
    }
   0.capacitor([612,612],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([612,576],3,0,-1)
    {
    }
   0.capacitor([684,720],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   0.ground([684,720],7,0,-1)
    {
    }
   -Wire-([612,612],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([612,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,684],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -TLine-([738,684],0,84071040,-1)
    {
    Name = "GIS28"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0141"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,84072352,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,84073560,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([288,684],0,81389888,-1)
    {
    Name = "GIS29"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0696"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,234;0,234"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,81371192,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,84113656,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([738,684],0,81391248,-1)
    {
    Name = "GIS30"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0696"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,234;0,234"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,84153848,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,84154696,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,918],0,81392864,-1)
    {
    Name = "GIS31"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0189"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-18,0;-36,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,81394016,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,81395000,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,864],0,84195752,-1)
    {
    Name = "GIS33"
    Date = 1248851518
    Freq = "50.0"
    Length = "0.0494"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;0,54;0,54"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([576,180],0,84196904,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([576,342],0,81436752,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,918],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([396,864],0,0,-1)
    {
    Name = "WN1"
    }
   -Wire-([396,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([432,846],3,0,-1)
    {
    C = "300e-6 [uF]"
    }
   0.ground([432,810],3,0,-1)
    {
    }
   0.capacitor([342,954],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   0.ground([342,954],7,0,-1)
    {
    }
   -Wire-([324,918],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -TLine-([414,918],0,84194080,-1)
    {
    Name = "GIS32"
    Date = 1248851519
    Freq = "50.0"
    Length = "0.0121"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,84275560,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,84276744,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,846],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -TLine-([504,918],0,64091160,-1)
    {
    Name = "GIS34"
    Date = 1248851519
    Freq = "50.0"
    Length = "0.0117"
    Dim = 1
    Mode = 1
    Vertex="0,0;-18,0;-36,0;-54,0"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Berg_Options([594,216],0,84317744,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005"
      TP = "0.005"
      Inflen = "0"
      }
     0.Line_ManualYZ([594,378],0,84318592,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [p.u./m]"
      XLPUP = ".951e-6 [p.u./m]"
      XCPUP = ".571e6 [p.u.*m]"
      RPUZ = ".7175e-6 [p.u./m]"
      XLPUZ = ".251e-5 [p.u./m]"
      XCPUZ = ".793e6 [p.u.*m]"
      RPUZM = "1.0e-6 [p.u./m]"
      XLPUZM = ".1e-5 [p.u./m]"
      XCPUZM = ".756e6 [p.u.*m]"
      RP = ".36294e-4 [ohms/m]"
      XLP = ".5031e-3 [ohms/m]"
      XCP = "302.151 [Mohms*m]"
      RZ = ".37958e-3 [ohms/m]"
      XLZ = ".13277e-2 [ohms/m]"
      XCZ = "419.34 [Mohms*m]"
      RZM = ".295e-3 [ohms/m]"
      XLZM = ".10e-2 [ohms/m]"
      XCZM = "400.0 [Mohms*m]"
      RTP = ".36294e-4 [ohms/m]"
      TTP = "3.425049e-9 [sec/m]"
      ZTP = "90 [ohm]"
      RTZ = ".37958e-3 [ohms/m]"
      TTZ = "4.767013e-9 [sec/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohms/m]"
      TTZM = "4.0e-9 [sec/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [p.u./m]"
      XLPUP2 = ".951e-6 [p.u./m]"
      BPUP2 = "1.75131e-6 [p.u./m]"
      RPUZ2 = ".7175e-6 [p.u./m]"
      XLPUZ2 = ".251e-5 [p.u./m]"
      BPUZ2 = "1.26103e-6 [p.u./m]"
      RPUZM2 = "1.0e-6 [p.u./m]"
      XLPUZM2 = ".1e-5 [p.u./m]"
      BPUZM2 = "1.32275e-6 [p.u./m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   0.ground([522,954],7,0,-1)
    {
    }
   -Wire-([504,918],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.capacitor([522,954],3,0,-1)
    {
    C = "150e-6 [uF]"
    }
   }
  }
 Module("gragh")
  {
  Desc = ""
  FileDate = 1248851510
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"gragh")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Plot-([0,576],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144783936,"IAT",8388608,,,)
     }
    }
   -Plot-([576,0],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(142449304,"EGISL",8388608,,,)
     Curve(142449712,"EGIST",32768,,,)
     }
    }
   -Plot-([0,0],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144784752,"EPTT",8388608,,,)
     }
    }
   -Plot-([0,288],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(144783120,"ET",8388608,,,)
     }
    }
   -Plot-([576,288],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(142450120,"IABUS1",8388608,,,)
     Curve(142450528,"IABUS2",32768,,,)
     }
    }
   }
  }
 Module("TW17_1")
  {
  Desc = ""
  FileDate = 1248915751
  Nodes = 
   {
   Electrical("G1",-54,-36)
    {
    }
   Electrical("G2",-54,0)
    {
    }
   Electrical("A",-54,36)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-57,39,57)
   Text(0,6,"TW7")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-54,-36,-39,-36)
   Text(-46,-40,"G1")
   Pen(,,,G2)
   Line(-54,0,-39,0)
   Text(-46,-4,"G2")
   Pen(,,,A)
   Line(-54,36,-39,36)
   Text(-46,32,"A")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([720,90],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([720,90],0,0,-1)
    {
    Name = "BRKVtowerI7"
    }
   0.pgb([774,90],0,144573408,20)
    {
    Name = "BRKVtowerI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([954,72],0,0,-1)
    {
    Name = "BRKVtowerI7"
    }
   0.const([918,72],0,0,10)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([342,306],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([486,468],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([486,504],1,0,-1)
    {
    }
   -Wire-([288,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,252],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([288,144],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,144],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,72],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([432,72],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([594,72],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([342,72],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([396,72],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   0.inductor([558,72],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([486,360],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([486,432],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([486,324],1,0,-1)
    {
    L = "0.0000543 [H]"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.xnode([270,72],4,0,-1)
    {
    Name = "G1"
    }
   0.xnode([648,72],4,0,-1)
    {
    Name = "G2"
    }
   0.xnode([342,306],7,0,-1)
    {
    Name = "A"
    }
   0.breaker1([342,198],1,0,40)
    {
    NAME = "BRKVtowerI7"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.voltmeter([288,180],0,0,30)
    {
    Name = "VtowerI7"
    }
   0.inductor([306,72],0,0,-1)
    {
    L = "1e-6 [H]"
    }
   -Wire-([270,72],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,162],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   }
  }
 Module("TW1")
  {
  Desc = ""
  FileDate = 1248915750
  Nodes = 
   {
   Electrical("AI0",54,18)
    {
    }
   Electrical("GI02",54,0)
    {
    }
   Electrical("GI01",54,-18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(42,-3,"G2")
   Text(42,15,"A")
   Text(42,-21,"G1")
   Pen(ByNode,ByNode,ByNode,GI01)
   Line(54,-18,29,-18)
   Pen(,,,GI02)
   Line(54,0,29,0)
   Pen(,,,AI0)
   Line(54,18,29,18)
   Font(,Medium)
   Text(0,-7,"")
   Text(0,3,"TW")
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([396,378],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([576,594],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([576,630],1,0,-1)
    {
    }
   -Wire-([756,702],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([756,702],0,0,-1)
    {
    Name = "BRKVtowerI0"
    }
   -Wire-([378,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([378,324],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.voltmeter([450,324],1,0,10)
    {
    Name = "VtowerI0"
    }
   -Wire-([450,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,324],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([576,198],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([522,198],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([684,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,198],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([324,378],4,0,-1)
    {
    Name = "AI0"
    }
   -Wire-([540,378],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,378],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([432,378],2,0,40)
    {
    NAME = "BRKVtowerI0"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = "ib"
    SBR = ""
    BOpen = "2"
    }
   0.xnode([432,198],4,0,-1)
    {
    Name = "GI01"
    }
   0.xnode([738,198],4,0,-1)
    {
    Name = "GI02"
    }
   -Wire-([576,486],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.inductor([504,378],0,0,-1)
    {
    L = "0.00000825 [H]"
    }
   -Wire-([576,288],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.pgb([810,702],0,142495816,30)
    {
    Name = "BRKVtowerI0"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.inductor([576,450],1,0,-1)
    {
    L = "0.0000499 [H]"
    }
   0.inductor([576,252],1,0,-1)
    {
    L = "0.0000041 [H]"
    }
   0.inductor([486,198],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   0.resistor([576,558],1,0,-1)
    {
    R = "0.5 [ohm]"
    }
   0.inductor([648,198],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   0.datalabel([738,396],0,0,-1)
    {
    Name = "ib"
    }
   0.pgb([738,396],0,142498672,50)
    {
    Name = "<Untitled>"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([810,504],0,0,-1)
    {
    Name = "BRKVtowerI0"
    }
   0.const([774,504],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("TW11")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("GI11",54,-18)
    {
    }
   Electrical("GI12",54,0)
    {
    }
   Electrical("AI1",54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Font(,Medium)
   Text(0,4,"TW1")
   Font(,Small)
   Text(42,-19,"G1")
   Pen(ByNode,ByNode,ByNode,GI11)
   Line(54,-18,29,-18)
   Text(42,-1,"G2")
   Pen(,,,GI12)
   Line(54,0,29,0)
   Text(40,15,"A")
   Pen(,,,AI1)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([792,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([792,234],0,0,-1)
    {
    Name = "BRKVtowerI1"
    }
   0.pgb([846,234],0,142500304,40)
    {
    Name = "BRKVtowerI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([378,342],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([558,558],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([558,594],1,0,-1)
    {
    }
   -Wire-([360,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([360,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.voltmeter([432,288],1,0,10)
    {
    Name = "VtowerI1"
    }
   -Wire-([432,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([558,162],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([666,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([306,342],4,0,-1)
    {
    Name = "AI1"
    }
   -Wire-([522,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([450,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([414,342],2,0,30)
    {
    NAME = "BRKVtowerI1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.xnode([414,162],4,0,-1)
    {
    Name = "GI11"
    }
   0.xnode([720,162],4,0,-1)
    {
    Name = "GI12"
    }
   -Wire-([558,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.inductor([486,342],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   -Wire-([558,252],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.inductor([558,414],1,0,-1)
    {
    L = "0.000039 [H]"
    }
   0.inductor([558,216],1,0,-1)
    {
    L = "0.000007 [H]"
    }
   0.inductor([468,162],0,0,-1)
    {
    L = "0.000011 [H]"
    }
   0.inductor([630,162],0,0,-1)
    {
    L = "0.000011 [H]"
    }
   0.resistor([558,522],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.datalabel([1008,468],0,0,-1)
    {
    Name = "BRKVtowerI1"
    }
   0.const([972,468],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("TW12")
  {
  Desc = ""
  FileDate = 1248918250
  Nodes = 
   {
   Electrical("GI21",54,-18)
    {
    }
   Electrical("GI22",54,0)
    {
    }
   Electrical("AI2",54,18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(0,4,"TW2")
   Text(40,15,"A")
   Text(40,-19,"G1")
   Text(40,-1,"G2")
   Pen(ByNode,ByNode,ByNode,GI21)
   Line(54,-18,29,-18)
   Pen(,,,GI22)
   Line(54,0,29,0)
   Pen(,,,AI2)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([1098,414],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([1098,414],0,0,-1)
    {
    Name = "BRKVtowerI2"
    }
   0.pgb([1152,414],0,142506832,30)
    {
    Name = "BRKVtowerI2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([792,450],0,0,-1)
    {
    Name = "BRKVtowerI2"
    }
   -Plot-([990,108],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(142506832,"BRKVtowerI2",8388608,,,)
     }
    }
   0.xnode([234,144],4,0,-1)
    {
    Name = "GI21"
    }
   0.xnode([612,144],4,0,-1)
    {
    Name = "GI22"
    }
   0.xnode([306,378],4,0,-1)
    {
    Name = "AI2"
    }
   -Wire-([306,378],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([450,540],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([450,576],1,0,-1)
    {
    }
   -Wire-([252,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([252,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([252,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([252,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([396,144],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([558,144],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([306,144],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([360,144],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   0.inductor([522,144],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([450,432],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([450,504],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([450,396],1,0,-1)
    {
    L = "0.0000483 [H]"
    }
   -Wire-([450,234],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.breaker1([306,270],1,0,40)
    {
    NAME = "BRKVtowerI2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.voltmeter([252,252],0,0,10)
    {
    Name = "VtowerI2"
    }
   0.inductor([270,144],0,0,-1)
    {
    L = "1e-6 [H]"
    }
   -Wire-([234,144],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([306,234],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.const([756,450],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("TW16")
  {
  Desc = ""
  FileDate = 1248917253
  Nodes = 
   {
   Electrical("GI61",-54,-18)
    {
    }
   Electrical("AI6",-54,18)
    {
    }
   Electrical("GI62",-54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-40,15,"A")
   Text(0,4,"TW6")
   Pen(ByNode,ByNode,ByNode,AI6)
   Line(-54,18,-29,18)
   Text(-40,-19,"G1")
   Pen(,,,GI61)
   Line(-54,-18,-29,-18)
   Text(-40,-1,"G2")
   Pen(,,,GI62)
   Line(-54,0,-29,0)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([630,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([630,378],0,0,-1)
    {
    Name = "BRKVtowerI6"
    }
   0.pgb([684,378],0,142512952,30)
    {
    Name = "BRKVtowerI6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([828,522],0,0,-1)
    {
    Name = "BRKVtowerI6"
    }
   -Plot-([1008,144],0)
    {
    Title = "Advanced Graph Frame"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [-1,-1]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 137
     Units = ""
     Curve(142512952,"BRKVtowerI6",8388608,,,)
     }
    }
   -Wire-([252,342],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,558],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([432,594],1,0,-1)
    {
    }
   -Wire-([234,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([234,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.voltmeter([306,288],1,0,10)
    {
    Name = "VtowerI6"
    }
   -Wire-([306,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([342,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([432,162],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([378,162],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([540,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([288,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([180,342],4,0,-1)
    {
    Name = "AI6"
    }
   -Wire-([396,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([324,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([288,342],2,0,40)
    {
    NAME = "BRKVtowerI6"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.xnode([288,162],4,0,-1)
    {
    Name = "GI61"
    }
   0.xnode([594,162],4,0,-1)
    {
    Name = "GI62"
    }
   -Wire-([432,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.inductor([360,342],0,0,-1)
    {
    L = "0.0000075 [H]"
    }
   -Wire-([432,252],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.inductor([432,414],1,0,-1)
    {
    L = "0.0000465[H]"
    }
   0.inductor([432,216],1,0,-1)
    {
    L = "0.000007 [H]"
    }
   0.inductor([342,162],0,0,-1)
    {
    L = "0.0000105 [H]"
    }
   0.inductor([504,162],0,0,-1)
    {
    L = "0.0000105 [H]"
    }
   0.resistor([432,522],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.const([792,522],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("TW15")
  {
  Desc = ""
  FileDate = 1248918635
  Nodes = 
   {
   Electrical("GI52",-54,0)
    {
    }
   Electrical("AI5",-54,18)
    {
    }
   Electrical("GI51",-54,-18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(-40,15,"A")
   Text(-40,-19,"G1")
   Text(-40,-1,"G2")
   Text(0,4,"TW5")
   Pen(ByNode,ByNode,ByNode,GI51)
   Line(-54,-18,-29,-18)
   Pen(,,,GI52)
   Line(-54,0,-29,0)
   Pen(,,,AI5)
   Line(-54,18,-29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([1026,450],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([504,162],4,0,-1)
    {
    Name = "GI51"
    }
   0.xnode([882,162],4,0,-1)
    {
    Name = "GI52"
    }
   0.xnode([576,396],4,0,-1)
    {
    Name = "AI5"
    }
   0.datalabel([1026,450],0,0,-1)
    {
    Name = "BRKVtowerI5"
    }
   0.pgb([1080,450],0,142520704,30)
    {
    Name = "BRKVtowerI5"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([576,396],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([720,558],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([720,594],1,0,-1)
    {
    }
   -Wire-([522,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([522,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([522,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([522,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([720,162],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([666,162],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([828,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([576,162],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([630,162],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   0.inductor([792,162],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([720,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([720,522],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([720,414],1,0,-1)
    {
    L = "0.0000483 [H]"
    }
   -Wire-([720,252],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.breaker1([576,288],1,0,40)
    {
    NAME = "BRKVtowerI5"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.voltmeter([522,270],0,0,10)
    {
    Name = "VtowerI5"
    }
   0.inductor([540,162],0,0,-1)
    {
    L = "1e-6 [H]"
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([954,342],0,0,-1)
    {
    Name = "BRKVtowerI5"
    }
   0.const([918,342],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("TW13")
  {
  Desc = ""
  FileDate = 1248919129
  Nodes = 
   {
   Electrical("GI32",54,0)
    {
    }
   Electrical("AI3",54,18)
    {
    }
   Electrical("GI31",54,-18)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(42,15,"A")
   Text(0,4,"TW3")
   Text(42,-1,"G2")
   Text(42,-19,"G1")
   Pen(ByNode,ByNode,ByNode,GI31)
   Line(54,-18,29,-18)
   Pen(,,,GI32)
   Line(54,0,29,0)
   Pen(,,,AI3)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   0.xnode([468,234],4,0,-1)
    {
    Name = "GI31"
    }
   0.xnode([846,234],4,0,-1)
    {
    Name = "GI32"
    }
   0.xnode([540,468],4,0,-1)
    {
    Name = "AI3"
    }
   0.datalabel([990,432],0,0,-1)
    {
    Name = "BRKVtowerI3"
    }
   0.pgb([1044,432],0,142526824,40)
    {
    Name = "BRKVtowerI3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([900,558],0,0,-1)
    {
    Name = "BRKVtowerI3"
    }
   -Wire-([990,432],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([540,468],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([684,630],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([684,666],1,0,-1)
    {
    }
   -Wire-([486,378],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([486,414],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([486,306],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([684,234],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([630,234],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([792,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([540,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([594,234],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   0.inductor([756,234],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([684,522],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([684,594],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([684,486],1,0,-1)
    {
    L = "0.0000513 [H]"
    }
   -Wire-([684,324],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.breaker1([540,360],1,0,50)
    {
    NAME = "BRKVtowerI3"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.voltmeter([486,342],0,0,10)
    {
    Name = "VtowerI3"
    }
   0.inductor([504,234],0,0,-1)
    {
    L = "1e-6 [H]"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,324],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.const([918,378],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   .vtmode_1([846,558],0,0,30)
    {
    }
   0.datalabel([846,504],0,0,-1)
    {
    Name = "VtowerI3"
    }
   }
  }
 Module("TW14")
  {
  Desc = ""
  FileDate = 1248917999
  Nodes = 
   {
   Electrical("GI41",54,-18)
    {
    }
   Electrical("AI4",54,18)
    {
    }
   Electrical("GI42",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-29,-29,29,29)
   Text(0,4,"TW4")
   Text(42,15,"A")
   Text(42,-19,"G1")
   Pen(ByNode,ByNode,ByNode,GI41)
   Line(54,-18,29,-18)
   Text(42,-1,"G2")
   Pen(,,,GI42)
   Line(54,0,29,0)
   Pen(,,,AI4)
   Line(54,18,29,18)
   }


  Page(A/A4,Landscape,16,[651,363],100)
   {
   -Wire-([864,486],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.xnode([360,234],4,0,-1)
    {
    Name = "GI41"
    }
   0.xnode([432,468],4,0,-1)
    {
    Name = "AI4"
    }
   0.xnode([738,234],4,0,-1)
    {
    Name = "GI42"
    }
   0.datalabel([864,486],0,0,-1)
    {
    Name = "BRKVtowerI4"
    }
   0.pgb([918,486],0,142533760,30)
    {
    Name = "BRKVtowerI4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([918,396],0,0,-1)
    {
    Name = "BRKVtowerI4"
    }
   -Wire-([432,468],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([576,630],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([576,666],1,0,-1)
    {
    }
   -Wire-([378,378],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([378,414],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([378,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([378,306],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([576,234],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([522,234],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([684,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,234],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([486,234],0,0,-1)
    {
    L = "0.000008 [H]"
    }
   0.inductor([648,234],0,0,-1)
    {
    L = "0.0000095 [H]"
    }
   -Wire-([576,522],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.resistor([576,594],1,0,-1)
    {
    R = "10 [ohm]"
    }
   0.inductor([576,486],1,0,-1)
    {
    L = "0.0000573 [H]"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;0,162"
    }
   0.breaker1([432,360],1,0,40)
    {
    NAME = "BRKVtowerI4"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "0"
    CLVL = "0.0 [kA]"
    ROFF = "1.E9 [ohm]"
    RON = "0.00001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.voltmeter([378,342],0,0,10)
    {
    Name = "VtowerI4"
    }
   0.inductor([396,234],0,0,-1)
    {
    L = "1e-6 [H]"
    }
   -Wire-([360,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,324],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.const([882,396],0,0,20)
    {
    Name = ""
    Value = "1.0"
    }
   }
  }
 Module("Main")
  {
  Desc = "Main Page"
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-18,-18,18,18)
   }


  Page(B/A3,Landscape,16,[651,363],100)
   {
   -Wire-([432,594],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([414,594],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([414,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([396,612],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([432,648],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([414,630],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.pin([396,612],0,0,-1)
    {
    }
   0.pin([432,648],0,0,-1)
    {
    }
   0.pin([414,630],0,0,-1)
    {
    }
   0.pin([432,792],0,0,-1)
    {
    }
   0.pin([414,774],0,0,-1)
    {
    }
   -Wire-([396,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,792],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.tline_interface([414,720],5,0,-1)
    {
    Name = "L11"
    NC = "3"
    View = "0"
    }
   0.pin([396,756],0,0,-1)
    {
    }
   -Wire-([396,756],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.tline_interface([414,684],1,0,-1)
    {
    Name = "L11"
    NC = "3"
    View = "0"
    }
   -Wire-([432,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([414,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.tline_interface([414,540],1,0,-1)
    {
    Name = "L12"
    NC = "3"
    View = "0"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([432,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([432,198],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([396,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([396,324],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([414,342],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([432,216],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([414,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([414,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([522,180],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   0.pin([396,180],0,0,-1)
    {
    }
   0.pin([414,198],0,0,-1)
    {
    }
   0.pin([432,216],0,0,-1)
    {
    }
   0.pin([396,324],0,0,-1)
    {
    }
   0.pin([432,360],0,0,-1)
    {
    }
   0.pin([414,342],0,0,-1)
    {
    }
   0.tline_interface([414,396],1,0,-1)
    {
    Name = "L13_1"
    NC = "3"
    View = "0"
    }
   0.tline_interface([414,288],5,0,-1)
    {
    Name = "L14"
    NC = "3"
    View = "0"
    }
   0.tline_interface([414,252],1,0,-1)
    {
    Name = "L14"
    NC = "3"
    View = "0"
    }
   .TW14([324,198],0,0,-1)
    {
    }
   -Wire-([396,594],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   .TW13([324,342],0,0,-1)
    {
    }
   -Wire-([684,450],0,0,-1)
    {
    Vertex="0,0;0,144"
    }
   -Wire-([702,450],0,0,-1)
    {
    Vertex="0,0;0,144"
    }
   -Wire-([720,450],0,0,-1)
    {
    Vertex="0,0;0,144"
    }
   -Wire-([720,162],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([684,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([684,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([720,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([684,198],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([720,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([684,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([684,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([720,180],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([702,306],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([702,180],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([702,180],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([738,198],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([738,342],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.pin([720,180],4,0,-1)
    {
    }
   0.pin([684,216],4,0,-1)
    {
    }
   0.pin([702,198],4,0,-1)
    {
    }
   0.pin([720,324],4,0,-1)
    {
    }
   0.pin([684,360],4,0,-1)
    {
    }
   0.pin([702,342],4,0,-1)
    {
    }
   .TW15([792,342],0,0,-1)
    {
    }
   -Wire-([720,162],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   0.tline_interface([702,252],7,0,-1)
    {
    Name = "L16"
    NC = "3"
    View = "0"
    }
   0.tline_interface([702,288],3,0,-1)
    {
    Name = "L16"
    NC = "3"
    View = "0"
    }
   0.tline_interface([702,396],7,0,-1)
    {
    Name = "L17"
    NC = "3"
    View = "0"
    }
   0.tline_interface([702,432],3,0,-1)
    {
    Name = "L17"
    NC = "3"
    View = "0"
    }
   0.tline_interface([540,180],6,0,-1)
    {
    Name = "L15"
    NC = "3"
    View = "0"
    }
   0.tline_interface([576,180],2,0,-1)
    {
    Name = "L15"
    NC = "3"
    View = "0"
    }
   .TW16([504,486],0,0,-1)
    {
    }
   -TLine-([612,378],0,86570032,-1)
    {
    Name = "L17"
    Date = 1248851512
    Freq = "50.0"
    Length = "18"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,86572104,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,64370032,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,64370728,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,64372664,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   .TW12([702,90],0,0,-1)
    {
    }
   0.tline_interface([414,576],5,0,-1)
    {
    Name = "L12"
    NC = "3"
    View = "0"
    }
   0.tline_interface([414,432],5,0,-1)
    {
    Name = "L13"
    NC = "3"
    View = "0"
    }
   .TW11([324,630],0,0,-1)
    {
    }
   .TW1([324,774],0,0,-1)
    {
    }
   -TLine-([612,234],0,86739336,-1)
    {
    Name = "L16"
    Date = 1248851512
    Freq = "50.0"
    Length = "0.403"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,86782184,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,86784200,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,86784912,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,83234048,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -TLine-([522,234],0,83235728,-1)
    {
    Name = "L15"
    Date = 1248851513
    Freq = "50.0"
    Length = "0.322"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,86827136,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,86828152,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,86828760,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,86830824,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -TLine-([432,234],0,83238248,-1)
    {
    Name = "L14"
    Date = 1248851513
    Freq = "50.0"
    Length = "0.738"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,86872224,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,86873104,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,86873712,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,86875776,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -TLine-([432,378],0,83240648,-1)
    {
    Name = "L13"
    Date = 1248851514
    Freq = "50.0"
    Length = "0.412"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,18,[651,363],100)
     {
     0.Line_Ground([252,414],0,86917312,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,86918192,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,86918816,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,86920880,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -TLine-([432,540],0,83248248,-1)
    {
    Name = "L12"
    Date = 1248918636
    Freq = "50.0"
    Length = "0.388"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([270,450],0,83249440,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,83250320,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,83251064,-1)
      {
      TName = "Conductor"
      Y = "66 [m]"
      XC = "10 [m]"
      X = "-16 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,86963840,-1)
      {
      TName = "Ground line"
      Y = "92 [m]"
      XC = "42 [m]"
      X = "-22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -TLine-([432,648],0,86965464,-1)
    {
    Name = "L11"
    Date = 1248918636
    Freq = "50.0"
    Length = "0.135"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([270,450],0,87007184,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,87008080,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,87008720,-1)
      {
      TName = "Conductor"
      Y = "66 [m]"
      XC = "10 [m]"
      X = "-16 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,87010736,-1)
      {
      TName = "Ground line"
      Y = "92 [m]"
      XC = "42 [m]"
      X = "-22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -Wire-([450,486],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([450,504],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([450,468],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([396,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   0.tline_interface([288,414],0,0,-1)
    {
    Name = "L13"
    NC = "3"
    View = "0"
    }
   0.tline_interface([180,414],4,0,-1)
    {
    Name = "L13_1"
    NC = "3"
    View = "0"
    }
   -TLine-([72,378],0,87143112,-1)
    {
    Name = "L13_1"
    Date = 1248851515
    Freq = "50.0"
    Length = "0.018"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,87186024,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,83339304,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,83339944,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,83342008,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -Wire-([198,396],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([198,414],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([198,432],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   .TW17_1([810,522],0,0,-1)
    {
    }
   0.tline_interface([702,612],7,0,-1)
    {
    Name = "L18"
    NC = "3"
    View = "0"
    }
   0.tline_interface([702,648],3,0,-1)
    {
    Name = "L18"
    NC = "3"
    View = "0"
    }
   -TLine-([612,594],0,86740496,-1)
    {
    Name = "L18"
    Date = 1248851516
    Freq = "50.0"
    Length = "18"
    Dim = 3
    Mode = 0
    Vertex="0,0;18,0;54,72;72,72"
    PageLayer(A/A4,Landscape,16,[651,363],100)
     {
     0.Line_Ground([252,414],0,87185168,-1)
      {
      GRRES = "100.0 [ohm*m]"
      GPERM = "1.0"
      EarthForm = "0"
      }
     0.Line_FreDep_Options([612,180],0,83824648,-1)
      {
      FS = "0.5 [Hz]"
      FE = "1.0E6 [Hz]"
      FT = "2000 [Hz]"
      ZMaxP = "20"
      AMaxP = "20"
      ZMaxE = "2 [%]"
      AMaxE = "2 [%]"
      Interp1 = "1"
      Output = "0"
      W1 = "100"
      W2 = "1000"
      W3 = "1"
      Inflen = "0"
      }
     0.Line_Tower_1([252,306],0,83824912,-1)
      {
      TName = "Conductor"
      Y = "84.6 [m]"
      XC = "10 [m]"
      X = "-15.5 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LGJ－630/45"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.0168 [m]"
      DCResC = "0.01205 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "8"
      BundSym = "0"
      SHBund = "1"
      BSP = "0.45 [m]"
      GDataType = "1"
      GName = "LGJ95/55"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.008 [m]"
      DCResG = "0.3 [ohms/km]"
      SAGG = "10 [m]"
      YG = "7 [m]"
      XG = "14 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "1"
      NG1 = "2"
      NG2 = "3"
      }
     0.Line_Tower_2_Flat([576,306],0,83497088,-1)
      {
      TName = "Ground line"
      Y = "100.6 [m]"
      XC = "38.5 [m]"
      X = "-19.22 [m]"
      ShuntG = "1.0E-10 [mhos/m]"
      SHSag = "0"
      Transp = "1"
      NG = "0"
      ElimGW = "0"
      CDataType = "1"
      CName = "LBJ-240-20AC"
      CLName = "C:\\home\\user\\pscad\\lineconstants\\database\\acsr.clb"
      RadiusC = "0.001 [m]"
      DCResC = "0.3601 [ohms/km]"
      SAGC = "10 [m]"
      NCondB = "1"
      BundSym = "0"
      SHBund = "1"
      BSP = ".4572 [m]"
      GDataType = "1"
      GName = "1/2\"HighStrengthSteel"
      GLName = "C:\\home\\user\\pscad\\lineconstants\\database\\gw.clb"
      RadiusG = "0.0055245 [m]"
      DCResG = "2.8645 [ohms/km]"
      SAGG = "10 [m]"
      YG = "10 [m]"
      XG = "10 [m]"
      XB1 = "-0.1 [m]"
      YB1 = "0.1 [m]"
      XB2 = "-0.1 [m]"
      YB2 = "0.1 [m]"
      XB3 = "-0.1 [m]"
      YB3 = "0.1 [m]"
      XB4 = "-0.1 [m]"
      YB4 = "0.1 [m]"
      XB5 = "-0.1 [m]"
      YB5 = "0.1 [m]"
      XB6 = "-0.1 [m]"
      YB6 = "0.1 [m]"
      XB7 = "-0.1 [m]"
      YB7 = "0.1 [m]"
      XB8 = "-0.1 [m]"
      YB8 = "0.1 [m]"
      XB9 = "-0.1 [m]"
      YB9 = "0.1 [m]"
      XB10 = "-0.1 [m]"
      YB10 = "0.1 [m]"
      NC1 = "2"
      NC2 = "3"
      NG1 = "3"
      NG2 = "4"
      }
     }
    }
   -Wire-([756,486],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([756,522],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([756,558],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([738,216],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([846,216],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([846,108],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([738,198],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([810,198],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([810,90],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([738,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([774,180],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([774,72],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([432,738],0,0,-1)
    {
    Vertex="0,0;0,144"
    }
   }
  }
 }

