PSCAD 4.2.0

Settings
 {
 Id = "1577949984.1577955135"
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
 Module("Transformer")
  {
  Desc = ""
  FileDate = 1577954955
  Nodes = 
   {
   Electrical("A",-54,-36)
    {
    }
   Electrical("B",-54,0)
    {
    }
   Electrical("C",-54,36)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-57,39,57)
   Text(0,-22,"±äÑ¹Æ÷")
   Pen(ByNode,ByNode,ByNode,A)
   Line(-54,-36,-39,-36)
   Text(-46,-40,"A")
   Pen(,,,B)
   Line(-54,0,-39,0)
   Text(-46,-4,"B")
   Pen(,,,C)
   Line(-54,36,-39,36)
   Text(-46,32,"C")
   }


  Page(A/A4,Landscape,16,[960,498],5)
   {
   0.xnode([252,90],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([252,306],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([252,522],0,0,-1)
    {
    Name = "C"
    }
   0.xfmr-2w([522,90],0,0,-1)
    {
    Tmva = "223.0 [MVA]"
    f = "50.0 [Hz]"
    Xl = "0.15 [pu]"
    NLL = "0.0 [pu]"
    CuL = "0.0 [pu]"
    Ideal = "0"
    Tap = "0"
    View = "2"
    V1 = "317.0 [kV]"
    V2 = "20.0 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.2 [pu]"
    Tdc = "1.0 [s]"
    Xknee = "1.25 [pu]"
    Txk = "0.1 [s]"
    Im1 = "1 [%]"
    IL1 = ""
    IL2 = ""
    IMAG = ""
    FLUX = ""
    }
   0.ground([486,180],0,0,-1)
    {
    }
   0.ground([486,18],0,0,-1)
    {
    }
   0.capacitor([450,18],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([450,180],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([504,54],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   0.capacitor([504,144],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   -Wire-([486,90],0,0,-1)
    {
    Vertex="0,0;-234,0"
    }
   -Wire-([450,18],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([486,126],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([450,180],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([504,54],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([504,144],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([558,90],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,126],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([540,144],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([540,54],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   0.xfmr-2w([522,306],0,0,-1)
    {
    Tmva = "223.0 [MVA]"
    f = "50.0 [Hz]"
    Xl = "0.15 [pu]"
    NLL = "0.0 [pu]"
    CuL = "0.0 [pu]"
    Ideal = "0"
    Tap = "0"
    View = "2"
    V1 = "317.0 [kV]"
    V2 = "20.0 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.2 [pu]"
    Tdc = "1.0 [s]"
    Xknee = "1.25 [pu]"
    Txk = "0.1 [s]"
    Im1 = "1 [%]"
    IL1 = ""
    IL2 = ""
    IMAG = ""
    FLUX = ""
    }
   0.ground([486,396],0,0,-1)
    {
    }
   0.ground([486,234],0,0,-1)
    {
    }
   0.capacitor([450,234],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([450,396],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([504,270],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   0.capacitor([504,360],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   -Wire-([486,306],0,0,-1)
    {
    Vertex="0,0;-234,0"
    }
   -Wire-([450,234],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([486,342],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([450,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([504,270],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([504,360],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([558,306],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,342],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([540,360],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([540,270],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   0.xfmr-2w([522,522],0,0,-1)
    {
    Tmva = "223.0 [MVA]"
    f = "50.0 [Hz]"
    Xl = "0.15 [pu]"
    NLL = "0.0 [pu]"
    CuL = "0.0 [pu]"
    Ideal = "0"
    Tap = "0"
    View = "2"
    V1 = "317.0 [kV]"
    V2 = "20.0 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.2 [pu]"
    Tdc = "1.0 [s]"
    Xknee = "1.25 [pu]"
    Txk = "0.1 [s]"
    Im1 = "1 [%]"
    IL1 = ""
    IL2 = ""
    IMAG = ""
    FLUX = ""
    }
   0.ground([486,612],0,0,-1)
    {
    }
   0.ground([486,450],0,0,-1)
    {
    }
   0.capacitor([450,450],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([450,612],0,0,-1)
    {
    C = "5.0 [nF]"
    }
   0.capacitor([504,486],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   0.capacitor([504,576],0,0,-1)
    {
    C = "1.0 [nF]"
    }
   -Wire-([486,522],0,0,-1)
    {
    Vertex="0,0;-234,0"
    }
   -Wire-([450,450],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([486,558],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([450,612],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([504,486],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([504,576],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([558,522],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,558],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([540,576],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([540,486],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([378,126],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,432"
    }
   0.inductor([360,558],1,0,-1)
    {
    L = "1 [uH]"
    }
   0.ground([360,594],1,0,-1)
    {
    }
   -Wire-([666,126],0,0,-1)
    {
    Vertex="0,0;0,180"
    }
   -Wire-([666,342],0,0,-1)
    {
    Vertex="0,0;0,180"
    }
   -Wire-([666,558],0,0,-1)
    {
    Vertex="0,0;18,0;18,-468;0,-468"
    }
   0.source_3([810,306],4,0,-1)
    {
    Name = "Source 1"
    Type = "4"
    Grnd = "1"
    View = "0"
    Spec = "0"
    VCtrl = "0"
    FCtrl = "0"
    Vm = "35.0 [kV]"
    Tc = "0.00 [s]"
    f = "50.0 [Hz]"
    Ph = "0.0 [deg]"
    Vbase = "230.0 [kV]"
    Sbase = "100.0 [MVA]"
    Vpu = "1.0 [pu]"
    PhT = "0.0 [deg]"
    Pinit = "0.0 [pu]"
    Qinit = "0.0 [pu]"
    R = "1.0 [ohm]"
    Rs = "1.0 [ohm]"
    Rp = "1.0 [ohm]"
    Lp = "0.1 [H]"
    R' = "1.0 [ohm]"
    L = "0.1 [H]"
    C = "1.0 [uF]"
    L' = "0.1 [H]"
    C' = "1.0 [uF]"
    IA = ""
    IB = ""
    IC = ""
    }
   -Wire-([774,306],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([774,342],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([774,270],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   0.ground([306,594],7,0,-1)
    {
    }
   0.arrester([306,522],6,0,-1)
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
   0.resistor([306,558],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   0.ground([306,378],7,0,-1)
    {
    }
   0.arrester([306,306],6,0,-1)
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
   0.resistor([306,342],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   0.ground([306,162],7,0,-1)
    {
    }
   0.arrester([306,90],6,0,-1)
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
   0.resistor([306,126],1,0,-1)
    {
    R = "16.5 [ohm]"
    }
   }
  }
 Module("Tower_single_phase")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("I",-54,0)
    {
    }
   Electrical("O",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"µ¥ÏàËþ")
   Pen(ByNode,ByNode,ByNode,I)
   Line(-54,0,-39,0)
   Text(-46,-4,"I")
   Pen(,,,O)
   Line(54,0,39,0)
   Text(46,-4,"O")
   }


  Page(A/A4,Landscape,16,[960,498],5)
   {
   0.xnode([486,306],0,0,-1)
    {
    Name = "I"
    }
   0.xnode([630,306],0,0,-1)
    {
    Name = "O"
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
   .Tower_single_phase([684,234],0,0,-1)
    {
    }
   .Transformer([468,234],0,0,-1)
    {
    }
   }
  }
 }

