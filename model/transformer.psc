PSCAD 4.2.1

Settings
 {
 Id = "1145519486.1400592655"
 Author = "SEMAAKE.wangyc"
 Desc = "Xiangjiaba - Shanghai +-800 kV UHVDC "
 Arch = "windows"
 Options = 32
 Build = 2
 Warn = 0
 Check = 0
 Libs = "..\\..\\Precomp\\C_system_mc_common.lib ..\\..\\Precomp\\C_system_mc1_pcia.lib ..\\..\\Precomp\\C_system_mc2_pcia.lib ..\\..\\Precomp\\C_system_mc3_pcia.lib ..\\..\\Precomp\\C_system_mc4_pcia.lib  ..\\..\\Precomp\\C_system_mc1_main.lib ..\\..\\Precomp\\C_system_mc2_main.lib ..\\..\\Precomp\\C_system_mc3_main.lib ..\\..\\Precomp\\C_system_mc4_main.lib "
 Source = "..\\System_Software\\System_fortran\\MC_Subs.f ..\\System_Software\\System_fortran\\EMTPTfoSat.f"
 RunInfo = 
  {
  Fin = 4
  Step = 5e-005
  Plot = 5e-005
  Chat = 0.001
  Brch = 0.005
  Lat = 100
  Options = 0
  Advanced = 6143
  Debug = 0
  StartFile = "D:\\work\\1 ����\\����\\XS800\\PSCAD\\DPS\\jinpingvalve.emt\\runtime.snp"
  OFile = "faultyyatoG.out"
  SFile = "Case0.snp"
  SnapTime = 1
  Mruns = 1
  Mrunfile = 0
  StartType = 0
  PlotType = 0
  SnapType = 0
  MrunType = "Case0.out"
  }

 }

Definitions
 {
 Module("Untitled_1")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"$(Defn:Name)")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   }
  }
 Module("Untitled_2")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"$(Defn:Name)")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   }
  }
 Module("Untitled_3")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"$(Defn:Name)")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   }
  }
 Module("Untitled_5")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"$(Defn:Name)")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   }
  }
 Component("test_filter_ch")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   }

  Nodes = 
   {
   Electrical("ACF_Ch_A",-36,-54)
    {
    }
   Electrical("ACF_Ch_B",0,-54)
    {
    }
   Electrical("ACF_Ch_C",36,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-57,-39,57,39)
   Text(0,-13,"test")
   Text(0,6,"ACF")
   Text(0,25,"Chongqing")
   Pen(ByNode,ByNode,ByNode,ACF_Ch_A)
   Line(-36,-54,-36,-39)
   Text(-26,-42,"A")
   Pen(,,,ACF_Ch_B)
   Line(0,-54,0,-39)
   Text(10,-42,"B")
   Pen(,,,ACF_Ch_C)
   Line(36,-54,36,-39)
   Text(46,-42,"C")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   }
  }
 Component("DCF_Hu_P1_3")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   }

  Nodes = 
   {
   Electrical("DCF_Hu_P1_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P1_3")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   }
  }
 Module("DCF_Hu_P2_3")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P2_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P2_3")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P2_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P2_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([468,72],6,0,-1)
    {
    Name = "DCF_Hu_P2_P"
    }
   0.xnode([468,504],0,0,-1)
    {
    Name = "DCF_Hu_P2_N"
    }
   0.capacitor([396,126],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([468,450],3,0,-1)
    {
    L = "0.00920 [H]"
    }
   0.capacitor([414,342],1,0,-1)
    {
    C = "12.77 [uF]"
    }
   0.inductor([468,378],3,0,-1)
    {
    L = "0.001174 [H]"
    }
   0.capacitor([414,414],1,0,-1)
    {
    C = "5.619 [uF]"
    }
   0.capacitor([468,126],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([396,198],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([468,198],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([468,306],3,0,-1)
    {
    L = "0.007805 [H]"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([468,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,234],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([468,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,342],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([414,378],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,396],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,396],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,450],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,468],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([396,126],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([468,468],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Hu_P2_2")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P2_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P2_2")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P2_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P2_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([450,54],6,0,-1)
    {
    Name = "DCF_Hu_P2_P"
    }
   0.xnode([450,486],0,0,-1)
    {
    Name = "DCF_Hu_P2_N"
    }
   0.capacitor([378,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([450,432],3,0,-1)
    {
    L = "0.005714 [H]"
    }
   0.capacitor([396,324],1,0,-1)
    {
    C = "1.560 [uF]"
    }
   0.inductor([450,360],3,0,-1)
    {
    L = "0.020041 [H]"
    }
   0.capacitor([396,396],1,0,-1)
    {
    C = "1.970 [uF]"
    }
   0.capacitor([450,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([378,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([450,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([450,288],3,0,-1)
    {
    L = "0.027485 [H]"
    }
   -Wire-([378,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([450,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([450,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([396,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([396,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([396,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([378,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([450,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([450,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Hu_P2")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P2_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P2_P)
   Line(0,-54,0,-39)
   Pen(,,,DCF_Hu_P2_N)
   Line(0,54,0,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P2")
   Text(10,-42,"P")
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([396,54],6,0,-1)
    {
    Name = "DCF_Hu_P2_P"
    }
   0.xnode([396,486],0,0,-1)
    {
    Name = "DCF_Hu_P2_N"
    }
   0.capacitor([324,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([396,432],3,0,-1)
    {
    L = "0.004762 [H]"
    }
   0.capacitor([342,324],1,0,-1)
    {
    C = "1.872 [uF]"
    }
   0.inductor([396,360],3,0,-1)
    {
    L = "0.01601 [H]"
    }
   0.capacitor([342,396],1,0,-1)
    {
    C = "2.36 [uF]"
    }
   0.capacitor([396,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([324,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([396,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([396,288],3,0,-1)
    {
    L = "0.022904 [H]"
    }
   -Wire-([324,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([396,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([396,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([396,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([342,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([342,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([342,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([396,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([324,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([396,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([396,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P2_3")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P2_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P2_3")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P2_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P2_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([486,54],6,0,-1)
    {
    Name = "DCF_Ch_P2_P"
    }
   0.xnode([486,486],0,0,-1)
    {
    Name = "DCF_Ch_P2_N"
    }
   0.capacitor([414,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([486,432],3,0,-1)
    {
    L = "0.00920 [H]"
    }
   0.capacitor([432,324],1,0,-1)
    {
    C = "12.77 [uF]"
    }
   0.inductor([486,360],3,0,-1)
    {
    L = "0.001174 [H]"
    }
   0.capacitor([432,396],1,0,-1)
    {
    C = "5.619 [uF]"
    }
   0.capacitor([486,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([414,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([486,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([486,288],3,0,-1)
    {
    L = "0.007805 [H]"
    }
   -Wire-([414,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([486,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([486,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([486,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([414,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([486,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([486,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P2_2")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P2_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P2_2")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P2_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P2_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([486,72],6,0,-1)
    {
    Name = "DCF_Ch_P2_P"
    }
   0.xnode([486,504],0,0,-1)
    {
    Name = "DCF_Ch_P2_N"
    }
   0.capacitor([414,126],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([486,450],3,0,-1)
    {
    L = "0.005714 [H]"
    }
   0.capacitor([432,342],1,0,-1)
    {
    C = "1.560 [uF]"
    }
   0.inductor([486,378],3,0,-1)
    {
    L = "0.020041 [H]"
    }
   0.capacitor([432,414],1,0,-1)
    {
    C = "1.970 [uF]"
    }
   0.capacitor([486,126],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([414,198],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([486,198],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([486,306],3,0,-1)
    {
    L = "0.027485 [H]"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,234],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([486,234],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([486,306],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,342],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([432,378],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,396],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,396],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,450],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,468],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([414,126],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([486,126],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([486,468],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P2")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P2_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P2_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P2")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P2_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P2_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([414,54],6,0,-1)
    {
    Name = "DCF_Ch_P2_P"
    }
   0.xnode([414,486],0,0,-1)
    {
    Name = "DCF_Ch_P2_N"
    }
   0.capacitor([342,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([414,432],3,0,-1)
    {
    L = "0.004762 [H]"
    }
   0.capacitor([360,324],1,0,-1)
    {
    C = "1.872 [uF]"
    }
   0.inductor([414,360],3,0,-1)
    {
    L = "0.01601 [H]"
    }
   0.capacitor([360,396],1,0,-1)
    {
    C = "2.36 [uF]"
    }
   0.capacitor([414,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([342,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([414,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([414,288],3,0,-1)
    {
    L = "0.022904 [H]"
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([414,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([414,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([360,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([342,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([414,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([414,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P1_3")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P1_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P1_3")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([468,54],6,0,-1)
    {
    Name = "DCF_Ch_P1_P"
    }
   0.xnode([468,486],0,0,-1)
    {
    Name = "DCF_Ch_P1_N"
    }
   0.capacitor([396,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([468,432],3,0,-1)
    {
    L = "0.00920 [H]"
    }
   0.capacitor([414,324],1,0,-1)
    {
    C = "12.77 [uF]"
    }
   0.inductor([468,360],3,0,-1)
    {
    L = "0.001174 [H]"
    }
   0.capacitor([414,396],1,0,-1)
    {
    C = "5.619 [uF]"
    }
   0.capacitor([468,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([396,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([468,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([468,288],3,0,-1)
    {
    L = "0.007805 [H]"
    }
   -Wire-([396,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([468,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([468,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([396,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([468,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([468,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P1_2")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P1_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P1_2")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([504,54],6,0,-1)
    {
    Name = "DCF_Ch_P1_P"
    }
   0.xnode([504,486],0,0,-1)
    {
    Name = "DCF_Ch_P1_N"
    }
   0.capacitor([432,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([504,432],3,0,-1)
    {
    L = "0.005714 [H]"
    }
   0.capacitor([450,324],1,0,-1)
    {
    C = "1.560 [uF]"
    }
   0.inductor([504,360],3,0,-1)
    {
    L = "0.020041 [H]"
    }
   0.capacitor([450,396],1,0,-1)
    {
    C = "1.970 [uF]"
    }
   0.capacitor([504,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([432,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([504,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([504,288],3,0,-1)
    {
    L = "0.027485 [H]"
    }
   -Wire-([432,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([504,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([504,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([450,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([450,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([504,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([504,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([432,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([504,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([504,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Ch_P1")
  {
  Desc = ""
  FileDate = 1398154459
  Nodes = 
   {
   Electrical("DCF_Ch_P1_P",0,-54)
    {
    }
   Electrical("DCF_Ch_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Chongqing")
   Text(0,25,"P1")
   Pen(ByNode,ByNode,ByNode,DCF_Ch_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Ch_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([414,36],6,0,-1)
    {
    Name = "DCF_Ch_P1_P"
    }
   0.xnode([414,468],0,0,-1)
    {
    Name = "DCF_Ch_P1_N"
    }
   0.capacitor([342,90],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([414,414],3,0,-1)
    {
    L = "0.004762 [H]"
    }
   0.capacitor([360,306],1,0,-1)
    {
    C = "1.872 [uF]"
    }
   0.inductor([414,342],3,0,-1)
    {
    L = "0.01601 [H]"
    }
   0.capacitor([360,378],1,0,-1)
    {
    C = "2.36 [uF]"
    }
   0.capacitor([414,90],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([342,162],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([414,162],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([414,270],3,0,-1)
    {
    L = "0.022904 [H]"
    }
   -Wire-([342,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([414,126],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,198],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([414,198],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,270],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,306],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([360,342],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,342],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,432],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([342,90],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([414,90],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([414,432],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Hu_P1_3_1")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P1_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P1_3")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([432,54],6,0,-1)
    {
    Name = "DCF_Hu_P1_P"
    }
   0.xnode([432,486],0,0,-1)
    {
    Name = "DCF_Hu_P1_N"
    }
   0.capacitor([360,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([432,432],3,0,-1)
    {
    L = "0.00920 [H]"
    }
   0.capacitor([378,324],1,0,-1)
    {
    C = "12.77 [uF]"
    }
   0.inductor([432,360],3,0,-1)
    {
    L = "0.001174 [H]"
    }
   0.capacitor([378,396],1,0,-1)
    {
    C = "5.619 [uF]"
    }
   0.capacitor([432,108],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([360,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.capacitor([432,180],1,0,-1)
    {
    C = "1.6 [uF]"
    }
   0.inductor([432,288],3,0,-1)
    {
    L = "0.007805 [H]"
    }
   -Wire-([360,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([432,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([432,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([378,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([378,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([378,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([360,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([432,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([432,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Hu_P1_2")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P1_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DCF")
   Text(0,6,"Huaidong")
   Text(0,25,"P1_2")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([414,54],6,0,-1)
    {
    Name = "DCF_Hu_P1_P"
    }
   0.xnode([414,486],0,0,-1)
    {
    Name = "DCF_Hu_P1_N"
    }
   0.capacitor([342,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([414,432],3,0,-1)
    {
    L = "0.005714 [H]"
    }
   0.capacitor([360,324],1,0,-1)
    {
    C = "1.560 [uF]"
    }
   0.inductor([414,360],3,0,-1)
    {
    L = "0.020041 [H]"
    }
   0.capacitor([360,396],1,0,-1)
    {
    C = "1.970 [uF]"
    }
   0.capacitor([414,108],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([342,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.capacitor([414,180],1,0,-1)
    {
    C = "1.0 [uF]"
    }
   0.inductor([414,288],3,0,-1)
    {
    L = "0.027485 [H]"
    }
   -Wire-([342,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([414,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([414,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([360,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([342,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([414,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([414,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("DCF_Hu_P1")
  {
  Desc = ""
  FileDate = 1398154458
  Nodes = 
   {
   Electrical("DCF_Hu_P1_P",0,-54)
    {
    }
   Electrical("DCF_Hu_P1_N",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"DC Filter")
   Text(0,6,"Huaidong")
   Text(0,25,"P1")
   Pen(ByNode,ByNode,ByNode,DCF_Hu_P1_P)
   Line(0,-54,0,-39)
   Text(10,-42,"P")
   Pen(,,,DCF_Hu_P1_N)
   Line(0,54,0,39)
   Text(10,50,"N")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([450,54],6,0,-1)
    {
    Name = "DCF_Hu_P1_P"
    }
   0.xnode([450,486],0,0,-1)
    {
    Name = "DCF_Hu_P1_N"
    }
   0.capacitor([378,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([450,432],3,0,-1)
    {
    L = "0.004762 [H]"
    }
   0.capacitor([396,324],1,0,-1)
    {
    C = "1.872 [uF]"
    }
   0.inductor([450,360],3,0,-1)
    {
    L = "0.01601 [H]"
    }
   0.capacitor([396,396],1,0,-1)
    {
    C = "2.36 [uF]"
    }
   0.capacitor([450,108],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([378,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.capacitor([450,180],1,0,-1)
    {
    C = "1.2 [uF]"
    }
   0.inductor([450,288],3,0,-1)
    {
    L = "0.022904 [H]"
    }
   -Wire-([378,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,216],0,0,-1)
    {
    Vertex="0,0;0,18;72,18"
    }
   -Wire-([450,216],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([450,288],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([396,324],0,0,-1)
    {
    Vertex="0,0;0,-18;54,-18"
    }
   -Wire-([396,360],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([396,378],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,378],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,450],0,0,-1)
    {
    Vertex="0,0;54,0;54,-18"
    }
   -Wire-([378,108],0,0,-1)
    {
    Vertex="0,0;0,-18;72,-18"
    }
   -Wire-([450,108],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([450,450],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("test_ACF_Ch")
  {
  Desc = ""
  FileDate = 1400042432
  Nodes = 
   {
   Electrical("ACF_test_ChA",-36,-54)
    {
    }
   Electrical("ACF_test_ChB",0,-54)
    {
    }
   Electrical("ACF_test_ChC",36,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-57,-39,57,39)
   Pen(ByNode,ByNode,ByNode)
   Line(-36,-54,-36,-39)
   Line(0,-54,0,-39)
   Line(36,-54,36,-39)
   Text(0,-13,"test")
   Text(0,6,"Chongqing")
   Text(0,25,"AC filters")
   Text(-26,-42,"A")
   Text(10,-42,"B")
   Text(46,-42,"C")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   -Wire-([558,936],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,972],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,1008],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.var_switch([3168,342],0,80924920,40)
    {
    Name = "HP1224_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,342],0,0,-1)
    {
    Name = "HP1224_1"
    }
   -Wire-([3204,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3168,450],0,80925736,50)
    {
    Name = "HP1224_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,450],0,0,-1)
    {
    Name = "HP1224_2"
    }
   -Wire-([3204,450],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1188,1062],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([1116,972],1,0,-1)
    {
    }
   0.jumper([1152,1008],1,0,-1)
    {
    }
   -Wire-([2448,1062],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([2376,972],1,0,-1)
    {
    }
   0.jumper([2412,1008],1,0,-1)
    {
    }
   -Wire-([2376,1062],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2412,1062],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.resistor([738,936],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([738,972],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([738,1008],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([738,972],4,0,90)
    {
    View = "0"
    }
   0.nodeloop([774,972],0,0,100)
    {
    View = "0"
    }
   0.power([738,1080],7,0,150)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([738,1116],7,80930632,180)
    {
    Name = "Pf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.pgb([774,1116],7,80931040,190)
    {
    Name = "Qf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.annotation([2322,1098],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "7*238 Mvar"
    }
   -Wire-([666,936],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([666,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([666,1008],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ammeter([900,936],2,0,70)
    {
    Name = "If_Fe_a"
    }
   0.ammeter([900,972],2,0,110)
    {
    Name = "If_Fe_b"
    }
   0.ammeter([900,1008],2,0,120)
    {
    Name = "If_Fe_c"
    }
   -Wire-([774,936],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,972],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,1008],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([900,936],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([1116,936],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1134,936],0,0,-1)
    {
    Vertex="0,0;828,0"
    }
   -Wire-([900,972],0,0,-1)
    {
    Vertex="0,0;1062,0"
    }
   -Wire-([900,1008],0,0,-1)
    {
    Vertex="0,0;1062,0"
    }
   0.voltmetergnd([1908,936],4,0,130)
    {
    Name = "Uf_Fe_a"
    }
   -Wire-([1116,1098],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1152,1098],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,1098],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2376,1116],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2412,1116],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([918,1062],0,80933488,140)
    {
    Name = "If_Fe_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([864,1062],0,0,-1)
    {
    Name = "If_Fe_a"
    }
   -Wire-([864,1062],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([918,1098],0,80934304,170)
    {
    Name = "If_Fe_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([864,1098],0,0,-1)
    {
    Name = "If_Fe_b"
    }
   -Wire-([864,1098],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([918,1134],0,80935120,200)
    {
    Name = "If_Fe_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([864,1134],0,0,-1)
    {
    Name = "If_Fe_c"
    }
   -Wire-([864,1134],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3888,342],0,0,-1)
    {
    Name = "HP1224_1_B"
    }
   -Wire-([3384,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,342],0,0,-1)
    {
    Name = "HP1224_1_C"
    }
   0.datalabel([3564,342],0,0,-1)
    {
    Name = "HP1224_1_A"
    }
   -Wire-([3348,522],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3348,360],0,0,640)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3258,522],0,0,450)
    {
    INTR = "0"
    }
   -Wire-([3186,522],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,450],0,0,-1)
    {
    Name = "HP1224_2_B"
    }
   -Wire-([3384,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,450],0,0,-1)
    {
    Name = "HP1224_2_C"
    }
   0.datalabel([3564,450],0,0,-1)
    {
    Name = "HP1224_2_A"
    }
   0.flip_flop([3348,468],0,0,650)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,414],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3294,414],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3240,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3240,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,342],0,0,810)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3636,450],0,0,800)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,342],0,0,910)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,450],0,0,900)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3186,522],0,0,-1)
    {
    Name = "Uf_Fe_a"
    }
   0.var([3492,180],0,80941648,10)
    {
    Name = "tdelay_AC1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,180],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,180],0,0,-1)
    {
    Name = "tdelay_AC1"
    }
   0.var([3492,216],0,80942464,20)
    {
    Name = "tdelay_CB1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,216],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,216],0,0,-1)
    {
    Name = "tdelay_CB1"
    }
   0.var([3492,252],0,80943280,30)
    {
    Name = "tdelay_Miss1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,252],0,0,-1)
    {
    Name = "tdelay_Miss1"
    }
   0.bin_delay([3492,342],0,0,780)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,450],0,0,790)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3528,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -ControlPanel-([3672,162],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3672,162
    Extents = 0,0,252,126
    Slider(80941648)
    Slider(80942464)
    Slider(80943280)
    }
   -Sticky-([3186,144],0)
    {
    Name = ""
    Font = 1
    Bounds = 3186,144,3456,270
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP12/24:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   0.breaker3([630,1260],3,0,1210)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_1_A"
    NAMEB = "HP1224_1_B"
    NAMEC = "HP1224_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([774,1260],3,0,1200)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_2_A"
    NAMEB = "HP1224_2_B"
    NAMEC = "HP1224_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([918,1260],3,0,1190)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_3_A"
    NAMEB = "HP1224_3_B"
    NAMEC = "HP1224_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1062,1260],3,0,1180)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_4_A"
    NAMEB = "HP1224_4_B"
    NAMEC = "HP1224_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([828,1224],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([864,1224],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   0.breaker3([1278,1260],3,0,1170)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_5_A"
    NAMEB = "HP1224_5_B"
    NAMEC = "HP1224_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1494,1260],3,0,1160)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_6_A"
    NAMEB = "HP1224_6_B"
    NAMEC = "HP1224_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1728,1260],3,0,1150)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_7_A"
    NAMEB = "HP1224_7_B"
    NAMEC = "HP1224_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1944,1260],3,0,1140)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_8_A"
    NAMEB = "HP1224_8_B"
    NAMEC = "HP1224_8_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1440,1224],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([1476,1224],0,0,-1)
    {
    Vertex="0,0;468,0"
    }
   0.breakout([1152,1188],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1116,1134],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1152,1134],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1188,1134],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1152,1188],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1152,1224],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([828,1224],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1440,1224],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1962,936],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1962,972],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1962,1008],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   0.breaker3([2106,1260],3,0,1130)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_1_A"
    NAMEB = "SHC_1_B"
    NAMEC = "SHC_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2196,1260],3,0,1110)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_2_A"
    NAMEB = "SHC_2_B"
    NAMEC = "SHC_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2304,1260],3,0,1100)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_3_A"
    NAMEB = "SHC_3_B"
    NAMEC = "SHC_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2412,1260],3,0,1090)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_4_A"
    NAMEB = "SHC_4_B"
    NAMEC = "SHC_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2178,1224],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([2214,1224],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([2196,1224],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2196,1224],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker3([2556,1260],3,0,1070)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2412,1224],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.capacitor([2106,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2106,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2106,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2106,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2106,1584],1,0,-1)
    {
    }
   -Wire-([2196,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2304,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2412,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2556,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.breaker3([2682,1260],3,0,1050)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_6_A"
    NAMEB = "SHC_6_B"
    NAMEC = "SHC_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2826,1260],3,0,1030)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2682,1224],0,0,-1)
    {
    Vertex="0,0;414,0"
    }
   -Wire-([2682,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2826,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2556,1224],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2232,936],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2232,972],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2232,1008],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   0.breakout([2412,1188],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2376,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2412,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2448,1152],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2412,1188],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2196,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2196,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2196,1584],1,0,-1)
    {
    }
   -Wire-([2304,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2304,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2304,1584],1,0,-1)
    {
    }
   -Wire-([2412,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2412,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2412,1584],1,0,-1)
    {
    }
   -Wire-([2556,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2556,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2556,1584],1,0,-1)
    {
    }
   -Wire-([2682,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2682,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2682,1584],1,0,-1)
    {
    }
   -Wire-([2826,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2826,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2826,1584],1,0,-1)
    {
    }
   0.var_switch([3168,594],0,80955112,60)
    {
    Name = "HP1224_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,594],0,0,-1)
    {
    Name = "HP1224_3"
    }
   -Wire-([3204,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,594],0,0,-1)
    {
    Name = "HP1224_3_B"
    }
   -Wire-([3384,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,594],0,0,-1)
    {
    Name = "HP1224_3_C"
    }
   0.datalabel([3564,594],0,0,-1)
    {
    Name = "HP1224_3_A"
    }
   0.flip_flop([3348,612],0,0,460)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,666],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,594],0,0,670)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,594],0,0,890)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,594],0,0,660)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,720],0,80958784,80)
    {
    Name = "HP1224_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,720],0,0,-1)
    {
    Name = "HP1224_4"
    }
   -Wire-([3204,720],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,720],0,0,-1)
    {
    Name = "HP1224_4_B"
    }
   -Wire-([3384,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,720],0,0,-1)
    {
    Name = "HP1224_4_C"
    }
   0.datalabel([3564,720],0,0,-1)
    {
    Name = "HP1224_4_A"
    }
   0.flip_flop([3348,738],0,0,470)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,792],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,720],0,0,690)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,720],0,0,880)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,720],0,0,680)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,846],0,80962456,160)
    {
    Name = "HP1224_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,846],0,0,-1)
    {
    Name = "HP1224_5"
    }
   -Wire-([3204,846],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,846],0,0,-1)
    {
    Name = "HP1224_5_B"
    }
   -Wire-([3384,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,846],0,0,-1)
    {
    Name = "HP1224_5_C"
    }
   0.datalabel([3564,846],0,0,-1)
    {
    Name = "HP1224_5_A"
    }
   0.flip_flop([3348,864],0,0,480)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,918],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,846],0,0,710)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,846],0,0,870)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,846],0,0,700)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,972],0,80966128,210)
    {
    Name = "HP1224_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,972],0,0,-1)
    {
    Name = "HP1224_6"
    }
   -Wire-([3204,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,972],0,0,-1)
    {
    Name = "HP1224_6_B"
    }
   -Wire-([3384,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,972],0,0,-1)
    {
    Name = "HP1224_6_C"
    }
   0.datalabel([3564,972],0,0,-1)
    {
    Name = "HP1224_6_A"
    }
   0.flip_flop([3348,990],0,0,490)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,1044],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,972],0,0,730)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,972],0,0,860)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,972],0,0,720)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,1098],0,80969800,220)
    {
    Name = "HP1224_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1098],0,0,-1)
    {
    Name = "HP1224_7"
    }
   -Wire-([3204,1098],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1098],0,0,-1)
    {
    Name = "HP1224_7_B"
    }
   -Wire-([3384,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1098],0,0,-1)
    {
    Name = "HP1224_7_C"
    }
   0.datalabel([3564,1098],0,0,-1)
    {
    Name = "HP1224_7_A"
    }
   0.flip_flop([3348,1116],0,0,500)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,1170],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,1098],0,0,850)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1098],0,0,1120)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,1098],0,0,740)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,1224],0,80973472,230)
    {
    Name = "HP1224_8"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1224],0,0,-1)
    {
    Name = "HP1224_8"
    }
   -Wire-([3204,1224],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1224],0,0,-1)
    {
    Name = "HP1224_8_B"
    }
   -Wire-([3384,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1224],0,0,-1)
    {
    Name = "HP1224_8_C"
    }
   0.datalabel([3564,1224],0,0,-1)
    {
    Name = "HP1224_8_A"
    }
   0.flip_flop([3348,1242],0,0,510)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,1296],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,1224],0,0,840)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1224],0,0,990)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,1224],0,0,750)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3294,666],0,0,-1)
    {
    Vertex="0,0;0,-144"
    }
   -Wire-([3294,792],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,918],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,1044],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,1170],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,1296],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   0.var_switch([3168,1566],0,80977144,270)
    {
    Name = "SHC_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1566],0,0,-1)
    {
    Name = "SHC_1"
    }
   -Wire-([3204,1566],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3168,1674],0,80977960,280)
    {
    Name = "SHC_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1674],0,0,-1)
    {
    Name = "SHC_2"
    }
   -Wire-([3204,1674],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1566],0,0,-1)
    {
    Name = "SHC_1_B"
    }
   -Wire-([3384,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1566],0,0,-1)
    {
    Name = "SHC_1_C"
    }
   0.datalabel([3564,1566],0,0,-1)
    {
    Name = "SHC_1_A"
    }
   -Wire-([3348,1746],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3348,1584],0,0,520)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3258,1746],0,0,290)
    {
    INTR = "0"
    }
   -Wire-([3186,1746],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1674],0,0,-1)
    {
    Name = "SHC_2_B"
    }
   -Wire-([3384,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1674],0,0,-1)
    {
    Name = "SHC_2_C"
    }
   0.datalabel([3564,1674],0,0,-1)
    {
    Name = "SHC_2_A"
    }
   0.flip_flop([3348,1692],0,0,530)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,1638],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3294,1638],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3240,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3240,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,1566],0,0,830)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3636,1674],0,0,820)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1566],0,0,980)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1674],0,0,970)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3186,1746],0,0,-1)
    {
    Name = "Uf_Fe_a"
    }
   0.var([3492,1404],0,80984488,240)
    {
    Name = "tdelay_AC2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,1404],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,1404],0,0,-1)
    {
    Name = "tdelay_AC2"
    }
   0.var([3492,1440],0,80985304,250)
    {
    Name = "tdelay_CB2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,1440],0,0,-1)
    {
    Name = "tdelay_CB2"
    }
   0.var([3492,1476],0,80986120,260)
    {
    Name = "tdelay_Miss2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3528,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3600,1476],0,0,-1)
    {
    Name = "tdelay_Miss2"
    }
   0.bin_delay([3492,1566],0,0,760)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,1674],0,0,770)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3528,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3186,1368],0)
    {
    Name = ""
    Font = 1
    Bounds = 3186,1368,3456,1494
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for SHC:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   0.var_switch([3168,1818],0,80987752,300)
    {
    Name = "SHC_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1818],0,0,-1)
    {
    Name = "SHC_3"
    }
   -Wire-([3204,1818],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1818],0,0,-1)
    {
    Name = "SHC_3_B"
    }
   -Wire-([3384,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1818],0,0,-1)
    {
    Name = "SHC_3_C"
    }
   0.datalabel([3564,1818],0,0,-1)
    {
    Name = "SHC_3_A"
    }
   0.flip_flop([3348,1836],0,0,310)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,1890],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,1818],0,0,550)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1818],0,0,960)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,1818],0,0,540)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,1944],0,80991424,320)
    {
    Name = "SHC_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,1944],0,0,-1)
    {
    Name = "SHC_4"
    }
   -Wire-([3204,1944],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,1944],0,0,-1)
    {
    Name = "SHC_4_B"
    }
   -Wire-([3384,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,1944],0,0,-1)
    {
    Name = "SHC_4_C"
    }
   0.datalabel([3564,1944],0,0,-1)
    {
    Name = "SHC_4_A"
    }
   0.flip_flop([3348,1962],0,0,330)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,2016],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,1944],0,0,570)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,1944],0,0,950)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,1944],0,0,560)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,2070],0,80995096,340)
    {
    Name = "SHC_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,2070],0,0,-1)
    {
    Name = "SHC_5"
    }
   -Wire-([3204,2070],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,2070],0,0,-1)
    {
    Name = "SHC_5_B"
    }
   -Wire-([3384,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,2070],0,0,-1)
    {
    Name = "SHC_5_C"
    }
   0.datalabel([3564,2070],0,0,-1)
    {
    Name = "SHC_5_A"
    }
   0.flip_flop([3348,2088],0,0,370)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,2142],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,2070],0,0,590)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,2070],0,0,940)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,2070],0,0,580)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,2196],0,80998768,390)
    {
    Name = "SHC_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,2196],0,0,-1)
    {
    Name = "SHC_6"
    }
   -Wire-([3204,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,2196],0,0,-1)
    {
    Name = "SHC_6_B"
    }
   -Wire-([3384,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,2196],0,0,-1)
    {
    Name = "SHC_6_C"
    }
   0.datalabel([3564,2196],0,0,-1)
    {
    Name = "SHC_6_A"
    }
   0.flip_flop([3348,2214],0,0,420)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,2268],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,2196],0,0,610)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,2196],0,0,930)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,2196],0,0,600)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3168,2322],0,81002440,430)
    {
    Name = "SHC_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3240,2322],0,0,-1)
    {
    Name = "SHC_7"
    }
   -Wire-([3204,2322],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3888,2322],0,0,-1)
    {
    Name = "SHC_7_B"
    }
   -Wire-([3384,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3816,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3672,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3708,2322],0,0,-1)
    {
    Name = "SHC_7_C"
    }
   0.datalabel([3564,2322],0,0,-1)
    {
    Name = "SHC_7_A"
    }
   0.flip_flop([3348,2340],0,0,440)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3348,2394],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3636,2322],0,0,630)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3780,2322],0,0,920)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3492,2322],0,0,620)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3294,1890],0,0,-1)
    {
    Vertex="0,0;0,-144"
    }
   -Wire-([3294,2016],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,2142],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,2268],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3294,2394],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   0.annotation([1062,1062],0,0,-1)
    {
    AL1 = "HP 12/24"
    AL2 = "8*260 Mvar"
    }
   -Wire-([1188,1098],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1152,1098],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1116,1098],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2376,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2412,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2448,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -ControlPanel-([3672,1386],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3672,1386
    Extents = 0,0,252,126
    Slider(80984488)
    Slider(80985304)
    Slider(80986120)
    }
   0.breaker3([2934,1260],3,0,1020)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2934,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2934,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2934,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2934,1584],1,0,-1)
    {
    }
   0.ground([684,1530],1,0,-1)
    {
    }
   0.capacitor([630,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([630,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([720,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([684,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([630,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([630,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([630,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([720,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([630,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([630,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([630,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([684,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([828,1530],1,0,-1)
    {
    }
   0.capacitor([774,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([774,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([864,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([828,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([774,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([774,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([864,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([774,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([774,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([828,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([972,1530],1,0,-1)
    {
    }
   0.capacitor([918,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([918,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1008,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([972,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([918,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([918,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1008,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([918,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([918,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([972,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1116,1530],1,0,-1)
    {
    }
   0.capacitor([1062,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([1062,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1152,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1116,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([1062,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([1062,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1152,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1062,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1062,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1116,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1278,1566],1,0,-1)
    {
    }
   0.capacitor([1278,1296],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1278,1368],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1188,1440],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1368,1368],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1278,1440],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1368,1440],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1188,1512],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1278,1512],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1278,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1278,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1278,1404],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1278,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,1440],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1278,1422],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1368,1404],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1368,1476],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1278,1512],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1188,1548],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1188,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1494,1566],1,0,-1)
    {
    }
   0.capacitor([1494,1296],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1494,1368],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1404,1440],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1584,1368],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1494,1440],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1584,1440],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1404,1512],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1494,1512],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1494,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1494,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1494,1404],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1494,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1404,1440],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1494,1422],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1584,1404],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1584,1476],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1494,1512],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1404,1548],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1404,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1728,1566],1,0,-1)
    {
    }
   0.capacitor([1728,1296],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1728,1368],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1638,1440],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1818,1368],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1728,1440],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1818,1440],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1638,1512],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1728,1512],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1728,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1728,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1728,1404],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1728,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1638,1440],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1728,1422],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1818,1404],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1818,1476],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1728,1512],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1638,1548],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1638,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1944,1566],1,0,-1)
    {
    }
   0.capacitor([1944,1296],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1944,1368],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1854,1440],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2034,1368],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1944,1440],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2034,1440],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1854,1512],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1944,1512],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1944,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1944,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1944,1404],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1944,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1854,1440],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1944,1422],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2034,1422],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2034,1476],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1944,1512],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1854,1548],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1854,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([288,1260],3,0,1230)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_1_A"
    NAMEB = "HP1224_1_B"
    NAMEC = "HP1224_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([432,1260],3,0,1220)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_2_A"
    NAMEB = "HP1224_2_B"
    NAMEC = "HP1224_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([630,1224],0,0,-1)
    {
    Vertex="0,0;-342,0"
    }
   0.ground([342,1530],1,0,-1)
    {
    }
   0.capacitor([288,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([288,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([378,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([342,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([288,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([288,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([378,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([288,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([288,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([342,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([486,1530],1,0,-1)
    {
    }
   0.capacitor([432,1296],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([432,1404],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([522,1368],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([486,1458],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([432,1494],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([432,1332],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,1350],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([522,1404],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([432,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,1404],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([432,1422],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([486,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.capacitor([2196,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2304,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2412,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2556,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2682,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2826,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2934,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2106,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2196,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2304,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2412,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2556,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2682,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2826,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2934,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2988,1260],3,0,1010)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2988,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2988,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2988,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2988,1584],1,0,-1)
    {
    }
   0.breaker3([3096,1260],3,0,1000)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3096,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3096,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3096,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3096,1584],1,0,-1)
    {
    }
   0.capacitor([2988,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([3096,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2988,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([3096,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2484,1260],3,0,1080)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2484,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2484,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2484,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2484,1584],1,0,-1)
    {
    }
   0.capacitor([2484,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2484,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2610,1260],3,0,1060)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2610,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2610,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2610,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2610,1584],1,0,-1)
    {
    }
   0.capacitor([2610,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2610,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2754,1260],3,0,1040)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2754,1350],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2754,1386],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2754,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2754,1584],1,0,-1)
    {
    }
   0.capacitor([2754,1350],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2754,1494],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.xnode([558,2286],6,0,-1)
    {
    Name = "ACF_test_ChA"
    }
   0.xnode([558,2322],6,0,-1)
    {
    Name = "ACF_test_ChB"
    }
   0.xnode([558,2358],6,0,-1)
    {
    Name = "ACF_test_ChC"
    }
   -Wire-([558,2286],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,2322],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([558,2358],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1188,2412],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([1116,2322],1,0,-1)
    {
    }
   0.jumper([1152,2358],1,0,-1)
    {
    }
   -Wire-([2448,2412],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([2376,2322],1,0,-1)
    {
    }
   0.jumper([2412,2358],1,0,-1)
    {
    }
   -Wire-([2376,2412],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2412,2412],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.resistor([738,2286],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([738,2322],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([738,2358],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([738,2322],4,0,350)
    {
    View = "0"
    }
   0.nodeloop([774,2322],0,0,360)
    {
    View = "0"
    }
   0.power([738,2430],7,0,380)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([738,2466],7,82666216,400)
    {
    Name = "Pf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.pgb([774,2466],7,82666624,410)
    {
    Name = "Qf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.annotation([2322,2448],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "7*238 Mvar"
    }
   -Wire-([666,2286],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([666,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([666,2358],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([774,2286],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,2322],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,2358],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([864,2286],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   -Wire-([1116,2286],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1134,2286],0,0,-1)
    {
    Vertex="0,0;828,0"
    }
   -Wire-([864,2322],0,0,-1)
    {
    Vertex="0,0;1098,0"
    }
   -Wire-([864,2358],0,0,-1)
    {
    Vertex="0,0;1098,0"
    }
   -Wire-([1116,2448],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1152,2448],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,2448],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2376,2466],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2412,2466],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([828,2574],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([864,2574],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([1440,2574],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([1476,2574],0,0,-1)
    {
    Vertex="0,0;468,0"
    }
   0.breakout([1152,2538],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1116,2484],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1152,2484],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1188,2484],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1152,2538],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1152,2574],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([828,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1440,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1962,2286],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1962,2322],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1962,2358],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([2178,2574],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([2214,2574],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([2196,2574],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2196,2574],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2412,2574],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.capacitor([2106,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2106,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2106,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2106,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2106,2862],1,0,-1)
    {
    }
   -Wire-([2196,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2304,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2412,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2556,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2682,2574],0,0,-1)
    {
    Vertex="0,0;414,0"
    }
   -Wire-([2682,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2826,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2556,2574],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2232,2286],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2232,2322],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2232,2358],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   0.breakout([2412,2538],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2376,2502],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2412,2502],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2448,2502],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2412,2538],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2196,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2196,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2196,2862],1,0,-1)
    {
    }
   -Wire-([2304,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2304,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2304,2862],1,0,-1)
    {
    }
   -Wire-([2412,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2412,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2412,2862],1,0,-1)
    {
    }
   -Wire-([2556,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2556,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2556,2862],1,0,-1)
    {
    }
   -Wire-([2682,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2682,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2682,2862],1,0,-1)
    {
    }
   -Wire-([2826,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2826,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2826,2862],1,0,-1)
    {
    }
   0.annotation([1062,2412],0,0,-1)
    {
    AL1 = "HP 12/24"
    AL2 = "8*260 Mvar"
    }
   -Wire-([1188,2448],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1152,2448],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1116,2448],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2376,2466],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2412,2466],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2448,2466],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2934,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2934,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2934,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2934,2862],1,0,-1)
    {
    }
   0.ground([684,2808],1,0,-1)
    {
    }
   0.capacitor([630,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([630,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([720,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([684,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([630,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([630,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([630,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([720,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([630,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([630,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([630,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([684,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([828,2808],1,0,-1)
    {
    }
   0.capacitor([774,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([774,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([864,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([828,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([774,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([774,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([864,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([774,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([774,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([828,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([972,2808],1,0,-1)
    {
    }
   0.capacitor([918,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([918,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1008,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([972,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([918,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([918,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1008,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([918,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([918,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([972,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1116,2808],1,0,-1)
    {
    }
   0.capacitor([1062,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([1062,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1152,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1116,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([1062,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([1062,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1152,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1062,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1062,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1116,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1278,2844],1,0,-1)
    {
    }
   0.capacitor([1278,2574],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1278,2646],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1188,2718],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1368,2646],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1278,2718],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1368,2718],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1188,2790],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1278,2790],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1278,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1278,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1278,2682],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1278,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,2718],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1278,2700],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1368,2682],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1368,2754],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1278,2790],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1188,2826],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1188,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1494,2844],1,0,-1)
    {
    }
   0.capacitor([1494,2574],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1494,2646],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1404,2718],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1584,2646],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1494,2718],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1584,2718],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1404,2790],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1494,2790],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1494,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1494,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1494,2682],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1494,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1404,2718],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1494,2700],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1584,2682],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1584,2754],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1494,2790],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1404,2826],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1404,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1728,2844],1,0,-1)
    {
    }
   0.capacitor([1728,2574],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1728,2646],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1638,2718],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1818,2646],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1728,2718],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1818,2718],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1638,2790],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1728,2790],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1728,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1728,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1728,2682],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1728,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1638,2718],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1728,2700],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1818,2682],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1818,2754],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1728,2790],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1638,2826],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1638,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1944,2844],1,0,-1)
    {
    }
   0.capacitor([1944,2574],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1944,2646],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1854,2718],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2034,2646],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1944,2718],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2034,2718],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1854,2790],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1944,2790],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1944,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1944,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1944,2682],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1944,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1854,2718],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1944,2700],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2034,2700],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2034,2754],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1944,2790],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1854,2826],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1854,2754],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([630,2574],0,0,-1)
    {
    Vertex="0,0;-342,0"
    }
   0.ground([342,2808],1,0,-1)
    {
    }
   0.capacitor([288,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([288,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([378,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([342,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([288,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([288,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([378,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([288,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([288,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([288,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([342,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([486,2808],1,0,-1)
    {
    }
   0.capacitor([432,2574],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([432,2682],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([522,2646],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([486,2736],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([432,2772],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([432,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([522,2682],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([432,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([432,2682],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([432,2700],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([486,2772],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.capacitor([2196,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2304,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2412,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2556,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2682,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2826,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2934,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2106,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2196,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2304,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2412,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2556,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2682,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2826,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2934,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2988,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2988,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2988,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2988,2862],1,0,-1)
    {
    }
   -Wire-([3096,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3096,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3096,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3096,2862],1,0,-1)
    {
    }
   0.capacitor([2988,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([3096,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2988,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([3096,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2484,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2484,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2484,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2484,2862],1,0,-1)
    {
    }
   0.capacitor([2484,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2484,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2610,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2610,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2610,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2610,2862],1,0,-1)
    {
    }
   0.capacitor([2610,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2610,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2754,2628],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2754,2664],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2754,2808],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2754,2862],1,0,-1)
    {
    }
   0.capacitor([2754,2628],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2754,2772],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   }
  }
 Module("Fengxian_ACF")
  {
  Desc = ""
  FileDate = 1400042435
  Nodes = 
   {
   Electrical("ACF_Fe_a",36,-90)
    {
    }
   Electrical("ACF_Fe_b",0,-90)
    {
    }
   Electrical("ACF_Fe_c",-36,-90)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-56,-54,58,75)
   Line(-36,-90,-36,-54)
   Line(0,-90,0,-54)
   Line(36,-90,36,-54)
   Font(,Medium)
   Text(1,0,"AC Filters")
   Text(0,21,"Fengxian")
   Font(,Small)
   Text(41,-59,"A")
   Text(5,-59,"B")
   Text(-30,-59,"C")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   -Wire-([468,1062],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,1098],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,1134],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.var_switch([3078,468],0,82713952,40)
    {
    Name = "HP1224_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,468],0,0,-1)
    {
    Name = "HP1224_1"
    }
   -Wire-([3114,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3078,576],0,82714768,50)
    {
    Name = "HP1224_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,576],0,0,-1)
    {
    Name = "HP1224_2"
    }
   -Wire-([3114,576],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1098,1188],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([1026,1098],1,0,-1)
    {
    }
   0.jumper([1062,1134],1,0,-1)
    {
    }
   -Wire-([2358,1188],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.jumper2([2286,1098],1,0,-1)
    {
    }
   0.jumper([2322,1134],1,0,-1)
    {
    }
   -Wire-([2286,1188],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2322,1188],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.resistor([648,1062],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([648,1098],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([648,1134],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([648,1098],4,0,90)
    {
    View = "0"
    }
   0.nodeloop([684,1098],0,0,100)
    {
    View = "0"
    }
   0.power([648,1206],7,0,150)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([648,1242],7,82719664,170)
    {
    Name = "Pf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.pgb([684,1242],7,82720072,190)
    {
    Name = "Qf_Fe"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "-200.0"
    Max = "200.0"
    }
   0.annotation([2232,1224],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "7*238 Mvar"
    }
   -Wire-([576,1062],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,1134],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ammeter([810,1062],2,0,70)
    {
    Name = "If_Fe_a"
    }
   0.ammeter([810,1098],2,0,110)
    {
    Name = "If_Fe_b"
    }
   0.ammeter([810,1134],2,0,120)
    {
    Name = "If_Fe_c"
    }
   -Wire-([684,1062],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([684,1098],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([684,1134],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([810,1062],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([1026,1062],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1044,1062],0,0,-1)
    {
    Vertex="0,0;828,0"
    }
   -Wire-([810,1098],0,0,-1)
    {
    Vertex="0,0;1062,0"
    }
   -Wire-([810,1134],0,0,-1)
    {
    Vertex="0,0;1062,0"
    }
   0.voltmetergnd([1818,1062],4,0,130)
    {
    Name = "Uf_Fe_a"
    }
   -Wire-([1026,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1098,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2286,1242],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2322,1242],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([828,1188],0,82722520,140)
    {
    Name = "If_Fe_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([774,1188],0,0,-1)
    {
    Name = "If_Fe_a"
    }
   -Wire-([774,1188],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([828,1224],0,82723336,180)
    {
    Name = "If_Fe_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([774,1224],0,0,-1)
    {
    Name = "If_Fe_b"
    }
   -Wire-([774,1224],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([828,1260],0,82724152,200)
    {
    Name = "If_Fe_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([774,1260],0,0,-1)
    {
    Name = "If_Fe_c"
    }
   -Wire-([774,1260],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3798,468],0,0,-1)
    {
    Name = "HP1224_1_B"
    }
   -Wire-([3294,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,468],0,0,-1)
    {
    Name = "HP1224_1_C"
    }
   0.datalabel([3474,468],0,0,-1)
    {
    Name = "HP1224_1_A"
    }
   -Wire-([3258,648],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3258,486],0,0,590)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3168,648],0,0,400)
    {
    INTR = "0"
    }
   -Wire-([3096,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,576],0,0,-1)
    {
    Name = "HP1224_2_B"
    }
   -Wire-([3294,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,576],0,0,-1)
    {
    Name = "HP1224_2_C"
    }
   0.datalabel([3474,576],0,0,-1)
    {
    Name = "HP1224_2_A"
    }
   0.flip_flop([3258,594],0,0,600)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,540],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3204,540],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3150,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3150,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,468],0,0,760)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3546,576],0,0,750)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,468],0,0,860)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,576],0,0,850)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3096,648],0,0,-1)
    {
    Name = "Uf_Fe_a"
    }
   0.var([3402,306],0,82730680,10)
    {
    Name = "tdelay_AC1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,306],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,306],0,0,-1)
    {
    Name = "tdelay_AC1"
    }
   0.var([3402,342],0,82731496,20)
    {
    Name = "tdelay_CB1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,342],0,0,-1)
    {
    Name = "tdelay_CB1"
    }
   0.var([3402,378],0,82732312,30)
    {
    Name = "tdelay_Miss1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,378],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,378],0,0,-1)
    {
    Name = "tdelay_Miss1"
    }
   0.bin_delay([3402,468],0,0,730)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,576],0,0,740)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3438,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -ControlPanel-([3582,288],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3582,288
    Extents = 0,0,252,126
    Slider(82730680)
    Slider(82731496)
    Slider(82732312)
    }
   -Sticky-([3096,270],0)
    {
    Name = ""
    Font = 1
    Bounds = 3096,270,3366,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP12/24:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   0.xnode([468,1062],0,0,-1)
    {
    Name = "ACF_Fe_a"
    }
   0.xnode([468,1098],0,0,-1)
    {
    Name = "ACF_Fe_b"
    }
   0.xnode([468,1134],0,0,-1)
    {
    Name = "ACF_Fe_c"
    }
   0.breaker3([540,1386],3,0,1160)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_1_A"
    NAMEB = "HP1224_1_B"
    NAMEC = "HP1224_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([684,1386],3,0,1150)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_2_A"
    NAMEB = "HP1224_2_B"
    NAMEC = "HP1224_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([828,1386],3,0,1140)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_3_A"
    NAMEB = "HP1224_3_B"
    NAMEC = "HP1224_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([972,1386],3,0,1130)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_4_A"
    NAMEB = "HP1224_4_B"
    NAMEC = "HP1224_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([738,1350],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([774,1350],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   0.breaker3([1188,1386],3,0,1120)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_5_A"
    NAMEB = "HP1224_5_B"
    NAMEC = "HP1224_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1404,1386],3,0,1110)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_6_A"
    NAMEB = "HP1224_6_B"
    NAMEC = "HP1224_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1638,1386],3,0,1100)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_7_A"
    NAMEB = "HP1224_7_B"
    NAMEC = "HP1224_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1854,1386],3,0,1090)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_8_A"
    NAMEB = "HP1224_8_B"
    NAMEC = "HP1224_8_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1350,1350],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([1386,1350],0,0,-1)
    {
    Vertex="0,0;468,0"
    }
   0.breakout([1062,1314],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1026,1260],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1062,1260],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1098,1260],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1062,1314],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1062,1350],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([738,1350],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1350,1350],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1872,1062],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1872,1098],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   -Wire-([1872,1134],0,0,-1)
    {
    Vertex="0,0;270,0"
    }
   0.breaker3([2016,1386],3,0,1080)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_1_A"
    NAMEB = "SHC_1_B"
    NAMEC = "SHC_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2106,1386],3,0,1060)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_2_A"
    NAMEB = "SHC_2_B"
    NAMEC = "SHC_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2214,1386],3,0,1050)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_3_A"
    NAMEB = "SHC_3_B"
    NAMEC = "SHC_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2322,1386],3,0,1040)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_4_A"
    NAMEB = "SHC_4_B"
    NAMEC = "SHC_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2088,1350],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([2124,1350],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([2106,1350],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2106,1350],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker3([2466,1386],3,0,1020)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2322,1350],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.capacitor([2016,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2016,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2016,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2016,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2016,1710],1,0,-1)
    {
    }
   -Wire-([2106,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2214,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2322,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2466,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.breaker3([2592,1386],3,0,1000)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_6_A"
    NAMEB = "SHC_6_B"
    NAMEC = "SHC_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2736,1386],3,0,980)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2592,1350],0,0,-1)
    {
    Vertex="0,0;414,0"
    }
   -Wire-([2592,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2736,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2466,1350],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2142,1062],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2142,1098],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2142,1134],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   0.breakout([2322,1314],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2286,1278],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2322,1278],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2358,1278],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2322,1314],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2106,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2106,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2106,1710],1,0,-1)
    {
    }
   -Wire-([2214,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2214,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2214,1710],1,0,-1)
    {
    }
   -Wire-([2322,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2322,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2322,1710],1,0,-1)
    {
    }
   -Wire-([2466,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2466,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2466,1710],1,0,-1)
    {
    }
   -Wire-([2592,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2592,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2592,1710],1,0,-1)
    {
    }
   -Wire-([2736,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2736,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2736,1710],1,0,-1)
    {
    }
   0.var_switch([3078,720],0,82745368,60)
    {
    Name = "HP1224_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,720],0,0,-1)
    {
    Name = "HP1224_3"
    }
   -Wire-([3114,720],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,720],0,0,-1)
    {
    Name = "HP1224_3_B"
    }
   -Wire-([3294,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,720],0,0,-1)
    {
    Name = "HP1224_3_C"
    }
   0.datalabel([3474,720],0,0,-1)
    {
    Name = "HP1224_3_A"
    }
   0.flip_flop([3258,738],0,0,410)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,792],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,720],0,0,620)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,720],0,0,840)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,720],0,0,610)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,846],0,82749040,80)
    {
    Name = "HP1224_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,846],0,0,-1)
    {
    Name = "HP1224_4"
    }
   -Wire-([3114,846],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,846],0,0,-1)
    {
    Name = "HP1224_4_B"
    }
   -Wire-([3294,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,846],0,0,-1)
    {
    Name = "HP1224_4_C"
    }
   0.datalabel([3474,846],0,0,-1)
    {
    Name = "HP1224_4_A"
    }
   0.flip_flop([3258,864],0,0,420)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,918],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,846],0,0,640)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,846],0,0,830)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,846],0,0,630)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,972],0,150000848,160)
    {
    Name = "HP1224_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,972],0,0,-1)
    {
    Name = "HP1224_5"
    }
   -Wire-([3114,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,972],0,0,-1)
    {
    Name = "HP1224_5_B"
    }
   -Wire-([3294,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,972],0,0,-1)
    {
    Name = "HP1224_5_C"
    }
   0.datalabel([3474,972],0,0,-1)
    {
    Name = "HP1224_5_A"
    }
   0.flip_flop([3258,990],0,0,430)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,1044],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,972],0,0,660)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,972],0,0,820)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,972],0,0,650)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,1098],0,150004520,210)
    {
    Name = "HP1224_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1098],0,0,-1)
    {
    Name = "HP1224_6"
    }
   -Wire-([3114,1098],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1098],0,0,-1)
    {
    Name = "HP1224_6_B"
    }
   -Wire-([3294,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1098],0,0,-1)
    {
    Name = "HP1224_6_C"
    }
   0.datalabel([3474,1098],0,0,-1)
    {
    Name = "HP1224_6_A"
    }
   0.flip_flop([3258,1116],0,0,440)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,1170],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,1098],0,0,680)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1098],0,0,810)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,1098],0,0,670)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,1224],0,150008192,220)
    {
    Name = "HP1224_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1224],0,0,-1)
    {
    Name = "HP1224_7"
    }
   -Wire-([3114,1224],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1224],0,0,-1)
    {
    Name = "HP1224_7_B"
    }
   -Wire-([3294,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1224],0,0,-1)
    {
    Name = "HP1224_7_C"
    }
   0.datalabel([3474,1224],0,0,-1)
    {
    Name = "HP1224_7_A"
    }
   0.flip_flop([3258,1242],0,0,450)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,1296],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,1224],0,0,800)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1224],0,0,1070)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,1224],0,0,690)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,1224],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,1350],0,150011864,230)
    {
    Name = "HP1224_8"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1350],0,0,-1)
    {
    Name = "HP1224_8"
    }
   -Wire-([3114,1350],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1350],0,0,-1)
    {
    Name = "HP1224_8_B"
    }
   -Wire-([3294,1350],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1350],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1350],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1350],0,0,-1)
    {
    Name = "HP1224_8_C"
    }
   0.datalabel([3474,1350],0,0,-1)
    {
    Name = "HP1224_8_A"
    }
   0.flip_flop([3258,1368],0,0,460)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,1422],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,1350],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,1350],0,0,790)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1350],0,0,940)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,1350],0,0,700)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,1350],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3204,792],0,0,-1)
    {
    Vertex="0,0;0,-144"
    }
   -Wire-([3204,918],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,1044],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,1170],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,1296],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,1422],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   0.var_switch([3078,1692],0,150015536,270)
    {
    Name = "SHC_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1692],0,0,-1)
    {
    Name = "SHC_1"
    }
   -Wire-([3114,1692],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3078,1800],0,150016352,280)
    {
    Name = "SHC_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1800],0,0,-1)
    {
    Name = "SHC_2"
    }
   -Wire-([3114,1800],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1692],0,0,-1)
    {
    Name = "SHC_1_B"
    }
   -Wire-([3294,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1692],0,0,-1)
    {
    Name = "SHC_1_C"
    }
   0.datalabel([3474,1692],0,0,-1)
    {
    Name = "SHC_1_A"
    }
   -Wire-([3258,1872],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3258,1710],0,0,470)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3168,1872],0,0,290)
    {
    INTR = "0"
    }
   -Wire-([3096,1872],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1800],0,0,-1)
    {
    Name = "SHC_2_B"
    }
   -Wire-([3294,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1800],0,0,-1)
    {
    Name = "SHC_2_C"
    }
   0.datalabel([3474,1800],0,0,-1)
    {
    Name = "SHC_2_A"
    }
   0.flip_flop([3258,1818],0,0,480)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,1764],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3204,1764],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3150,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3150,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,1692],0,0,780)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3546,1800],0,0,770)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1692],0,0,930)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1800],0,0,920)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3096,1872],0,0,-1)
    {
    Name = "Uf_Fe_a"
    }
   0.var([3402,1530],0,150022880,240)
    {
    Name = "tdelay_AC2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,1530],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,1530],0,0,-1)
    {
    Name = "tdelay_AC2"
    }
   0.var([3402,1566],0,150023696,250)
    {
    Name = "tdelay_CB2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,1566],0,0,-1)
    {
    Name = "tdelay_CB2"
    }
   0.var([3402,1602],0,150024512,260)
    {
    Name = "tdelay_Miss2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3438,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3510,1602],0,0,-1)
    {
    Name = "tdelay_Miss2"
    }
   0.bin_delay([3402,1692],0,0,710)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,1800],0,0,720)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3438,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3096,1494],0)
    {
    Name = ""
    Font = 1
    Bounds = 3096,1494,3366,1620
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for SHC:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   0.var_switch([3078,1944],0,150026144,300)
    {
    Name = "SHC_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,1944],0,0,-1)
    {
    Name = "SHC_3"
    }
   -Wire-([3114,1944],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,1944],0,0,-1)
    {
    Name = "SHC_3_B"
    }
   -Wire-([3294,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,1944],0,0,-1)
    {
    Name = "SHC_3_C"
    }
   0.datalabel([3474,1944],0,0,-1)
    {
    Name = "SHC_3_A"
    }
   0.flip_flop([3258,1962],0,0,310)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,2016],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,1944],0,0,500)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,1944],0,0,910)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,1944],0,0,490)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,2070],0,150029816,320)
    {
    Name = "SHC_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,2070],0,0,-1)
    {
    Name = "SHC_4"
    }
   -Wire-([3114,2070],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,2070],0,0,-1)
    {
    Name = "SHC_4_B"
    }
   -Wire-([3294,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,2070],0,0,-1)
    {
    Name = "SHC_4_C"
    }
   0.datalabel([3474,2070],0,0,-1)
    {
    Name = "SHC_4_A"
    }
   0.flip_flop([3258,2088],0,0,330)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,2142],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,2070],0,0,520)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,2070],0,0,900)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,2070],0,0,510)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,2196],0,150033488,340)
    {
    Name = "SHC_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,2196],0,0,-1)
    {
    Name = "SHC_5"
    }
   -Wire-([3114,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,2196],0,0,-1)
    {
    Name = "SHC_5_B"
    }
   -Wire-([3294,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,2196],0,0,-1)
    {
    Name = "SHC_5_C"
    }
   0.datalabel([3474,2196],0,0,-1)
    {
    Name = "SHC_5_A"
    }
   0.flip_flop([3258,2214],0,0,350)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,2268],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,2196],0,0,540)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,2196],0,0,890)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,2196],0,0,530)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,2322],0,150037160,360)
    {
    Name = "SHC_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,2322],0,0,-1)
    {
    Name = "SHC_6"
    }
   -Wire-([3114,2322],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,2322],0,0,-1)
    {
    Name = "SHC_6_B"
    }
   -Wire-([3294,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,2322],0,0,-1)
    {
    Name = "SHC_6_C"
    }
   0.datalabel([3474,2322],0,0,-1)
    {
    Name = "SHC_6_A"
    }
   0.flip_flop([3258,2340],0,0,370)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,2394],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,2322],0,0,560)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,2322],0,0,880)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,2322],0,0,550)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3078,2448],0,150040832,380)
    {
    Name = "SHC_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3150,2448],0,0,-1)
    {
    Name = "SHC_7"
    }
   -Wire-([3114,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3798,2448],0,0,-1)
    {
    Name = "SHC_7_B"
    }
   -Wire-([3294,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3726,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3582,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3618,2448],0,0,-1)
    {
    Name = "SHC_7_C"
    }
   0.datalabel([3474,2448],0,0,-1)
    {
    Name = "SHC_7_A"
    }
   0.flip_flop([3258,2466],0,0,390)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3258,2520],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3150,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3546,2448],0,0,580)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3690,2448],0,0,870)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3402,2448],0,0,570)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3438,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3204,2016],0,0,-1)
    {
    Vertex="0,0;0,-144"
    }
   -Wire-([3204,2142],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,2268],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,2394],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3204,2520],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   0.annotation([972,1188],0,0,-1)
    {
    AL1 = "HP 12/24"
    AL2 = "8*260 Mvar"
    }
   -Wire-([1098,1224],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1062,1224],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1026,1224],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2286,1242],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2322,1242],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2358,1242],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -ControlPanel-([3582,1512],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3582,1512
    Extents = 0,0,252,126
    Slider(150022880)
    Slider(150023696)
    Slider(150024512)
    }
   0.breaker3([2844,1386],3,0,970)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2844,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2844,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2844,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2844,1710],1,0,-1)
    {
    }
   0.ground([594,1656],1,0,-1)
    {
    }
   0.capacitor([540,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([540,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([630,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([594,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([540,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([540,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([540,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([630,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([540,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([540,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([540,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([594,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([738,1656],1,0,-1)
    {
    }
   0.capacitor([684,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([684,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([774,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([738,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([684,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([684,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([684,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([774,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([684,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([684,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([684,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([738,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([882,1656],1,0,-1)
    {
    }
   0.capacitor([828,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([828,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([918,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([882,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([828,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([828,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([828,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([918,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([828,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([828,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([828,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([882,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1026,1656],1,0,-1)
    {
    }
   0.capacitor([972,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([972,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1062,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1026,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([972,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([972,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([972,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1062,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([972,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([972,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([972,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1026,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1188,1692],1,0,-1)
    {
    }
   0.capacitor([1188,1422],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1188,1494],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1098,1566],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1278,1494],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1188,1566],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1278,1566],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1098,1638],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1188,1638],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1188,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1188,1530],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1188,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1098,1566],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1188,1548],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1278,1530],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1278,1602],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1188,1638],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1098,1674],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1098,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1404,1692],1,0,-1)
    {
    }
   0.capacitor([1404,1422],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1404,1494],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1314,1566],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1494,1494],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1404,1566],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1494,1566],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1314,1638],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1404,1638],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1404,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1404,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1404,1530],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1404,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1314,1566],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1404,1548],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1494,1530],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1494,1602],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1404,1638],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1314,1674],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1314,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1638,1692],1,0,-1)
    {
    }
   0.capacitor([1638,1422],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1638,1494],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1548,1566],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1728,1494],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1638,1566],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1728,1566],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1548,1638],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1638,1638],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1638,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1638,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1638,1530],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1638,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1548,1566],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1638,1548],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1728,1530],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1728,1602],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1638,1638],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1548,1674],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1548,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1854,1692],1,0,-1)
    {
    }
   0.capacitor([1854,1422],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1854,1494],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1764,1566],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1944,1494],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1854,1566],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1944,1566],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1764,1638],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1854,1638],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1854,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1854,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1854,1530],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1854,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1764,1566],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1854,1548],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1944,1548],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1944,1602],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1854,1638],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1764,1674],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1764,1602],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([198,1386],3,0,1180)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_1_A"
    NAMEB = "HP1224_1_B"
    NAMEC = "HP1224_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([342,1386],3,0,1170)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1224_2_A"
    NAMEB = "HP1224_2_B"
    NAMEC = "HP1224_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([540,1350],0,0,-1)
    {
    Vertex="0,0;-342,0"
    }
   0.ground([252,1656],1,0,-1)
    {
    }
   0.capacitor([198,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([198,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([288,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([252,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([198,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([198,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([288,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([198,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([198,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([198,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([252,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([396,1656],1,0,-1)
    {
    }
   0.capacitor([342,1422],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([342,1530],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([432,1494],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([396,1584],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([342,1620],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([342,1458],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([342,1476],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([432,1530],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([342,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([342,1530],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([342,1548],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([396,1620],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.capacitor([2106,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2214,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2322,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2466,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2592,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2736,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([2844,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2016,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2106,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2214,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2322,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2466,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2592,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2736,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2844,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2898,1386],3,0,960)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2898,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2898,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2898,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2898,1710],1,0,-1)
    {
    }
   0.breaker3([3006,1386],3,0,950)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3006,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3006,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3006,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3006,1710],1,0,-1)
    {
    }
   0.capacitor([2898,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.capacitor([3006,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2898,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([3006,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2394,1386],3,0,1030)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2394,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2394,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2394,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2394,1710],1,0,-1)
    {
    }
   0.capacitor([2394,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2394,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2520,1386],3,0,1010)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2520,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2520,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2520,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2520,1710],1,0,-1)
    {
    }
   0.capacitor([2520,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2520,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.breaker3([2664,1386],3,0,990)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2664,1476],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2664,1512],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2664,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2664,1710],1,0,-1)
    {
    }
   0.capacitor([2664,1476],1,0,-1)
    {
    C = "2.772[uF]"
    }
   0.inductor([2664,1620],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   }
  }
 Module("Fulong_ACF")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("ACF_Fu_a",36,-90)
    {
    }
   Electrical("ACF_Fu_b",0,-90)
    {
    }
   Electrical("ACF_Fu_c",-36,-90)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-55,-54,59,75)
   Line(36,-90,36,-54)
   Line(0,-89,0,-53)
   Line(-36,-90,-36,-54)
   Font(,Medium)
   Text(2,36,"AC Filters")
   Text(1,22,"")
   Text(2,6,"Fulong")
   Font(,Small)
   Text(42,-59,"A")
   Text(5,-59,"B")
   Text(-30,-59,"C")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   -Wire-([522,252],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([522,288],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([522,324],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.jumper2([972,288],1,0,-1)
    {
    }
   0.jumper([1008,324],1,0,-1)
    {
    }
   0.breaker3([774,612],3,0,1110)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_1_A"
    NAMEB = "BP1113_1_B"
    NAMEC = "BP1113_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.annotation([1566,414],0,0,-1)
    {
    AL1 = "HP24/36"
    AL2 = "4*220 Mvar"
    }
   0.jumper2([1620,288],1,0,-1)
    {
    }
   0.jumper([1656,324],1,0,-1)
    {
    }
   -Wire-([1692,396],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([1656,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1620,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([630,252],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([630,288],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([630,324],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([630,288],4,0,20)
    {
    View = "0"
    }
   0.nodeloop([666,288],0,0,30)
    {
    View = "0"
    }
   0.power([630,396],7,0,70)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([630,432],7,150095096,80)
    {
    Name = "Pf_Fu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "150"
    }
   0.pgb([666,432],7,150095504,90)
    {
    Name = "Qf_Fu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "300"
    }
   0.var_switch([3402,702],0,150095912,160)
    {
    Name = "BP1113_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,702],0,0,-1)
    {
    Name = "BP1113_3"
    }
   -Wire-([3438,702],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.annotation([2142,414],0,0,-1)
    {
    AL1 = "HP3"
    AL2 = "220 Mvar"
    }
   0.jumper2([2358,288],1,0,-1)
    {
    }
   0.jumper([2394,324],1,0,-1)
    {
    }
   -Wire-([2430,396],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([2394,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2358,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.var_switch([3402,558],0,150097952,140)
    {
    Name = "BP1113_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,558],0,0,-1)
    {
    Name = "BP1113_2"
    }
   -Wire-([3438,558],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3402,450],0,150098768,130)
    {
    Name = "BP1113_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,450],0,0,-1)
    {
    Name = "BP1113_1"
    }
   -Wire-([3438,450],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1044,396],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([972,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1008,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.ammeter([900,252],2,0,10)
    {
    Name = "If_Fu_a"
    }
   0.ammeter([900,288],2,0,40)
    {
    Name = "If_Fu_b"
    }
   0.ammeter([900,324],2,0,60)
    {
    Name = "If_Fu_c"
    }
   -Wire-([774,252],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,288],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([774,324],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([900,324],0,0,-1)
    {
    Vertex="0,0;1044,0"
    }
   -Wire-([2214,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([864,144],0,150100808,1180)
    {
    Name = "If_Fu_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([810,144],0,0,-1)
    {
    Name = "If_Fu_a"
    }
   -Wire-([810,144],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([864,180],0,150101624,1170)
    {
    Name = "If_Fu_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([810,180],0,0,-1)
    {
    Name = "If_Fu_b"
    }
   -Wire-([810,180],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([864,216],0,150102440,1160)
    {
    Name = "If_Fu_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([810,216],0,0,-1)
    {
    Name = "If_Fu_c"
    }
   -Wire-([810,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmetergnd([1422,252],4,0,50)
    {
    Name = "Uf_Fu_a"
    }
   -Wire-([774,252],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([774,288],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([774,324],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([2430,396],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2358,396],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2358,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2430,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1620,450],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1692,450],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1008,396],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1044,396],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([972,396],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([4122,450],0,0,-1)
    {
    Name = "BP1113_1_B"
    }
   -Wire-([3618,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,450],0,0,-1)
    {
    Name = "BP1113_1_C"
    }
   0.datalabel([3798,450],0,0,-1)
    {
    Name = "BP1113_1_A"
    }
   -Wire-([3582,630],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3582,468],0,0,470)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3492,630],0,0,150)
    {
    INTR = "0"
    }
   -Wire-([3420,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,558],0,0,-1)
    {
    Name = "BP1113_2_B"
    }
   -Wire-([3618,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,558],0,0,-1)
    {
    Name = "BP1113_2_C"
    }
   0.datalabel([3798,558],0,0,-1)
    {
    Name = "BP1113_2_A"
    }
   0.flip_flop([3582,576],0,0,480)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3582,522],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3528,522],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3474,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3474,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,450],0,0,810)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3870,558],0,0,800)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,450],0,0,1000)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,558],0,0,960)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3420,630],0,0,-1)
    {
    Name = "Uf_Fu_a"
    }
   0.datalabel([4122,702],0,0,-1)
    {
    Name = "BP1113_3_B"
    }
   -Wire-([3618,702],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,702],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,702],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,702],0,0,-1)
    {
    Name = "BP1113_3_C"
    }
   0.datalabel([3798,702],0,0,-1)
    {
    Name = "BP1113_3_A"
    }
   0.flip_flop([3582,720],0,0,170)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,702],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,702],0,0,500)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,702],0,0,950)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,630],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([3564,774],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([3726,288],0,150111824,100)
    {
    Name = "tdelay_AC1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,288],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,288],0,0,-1)
    {
    Name = "tdelay_AC1"
    }
   0.var([3726,324],0,150112640,110)
    {
    Name = "tdelay_CB1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,324],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,324],0,0,-1)
    {
    Name = "tdelay_CB1"
    }
   0.var([3726,360],0,150113456,120)
    {
    Name = "tdelay_Miss1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,360],0,0,-1)
    {
    Name = "tdelay_Miss1"
    }
   0.bin_delay([3726,450],0,0,680)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,558],0,0,690)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,702],0,0,490)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,450],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,702],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3420,252],0)
    {
    Name = ""
    Font = 1
    Bounds = 3420,252,3690,378
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter BP11/13:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([3906,270],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3906,270
    Extents = 0,0,252,126
    Slider(150111824)
    Slider(150112640)
    Slider(150113456)
    }
   -Wire-([972,432],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1008,432],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1044,432],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breakout([1008,522],3,0,-1)
    {
    Dis = "1"
    }
   0.breaker3([918,612],3,0,1100)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_2_A"
    NAMEB = "BP1113_2_B"
    NAMEC = "BP1113_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1062,612],3,0,1090)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_3_A"
    NAMEB = "BP1113_3_B"
    NAMEC = "BP1113_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1206,612],3,0,1070)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_4_A"
    NAMEB = "BP1113_4_B"
    NAMEC = "BP1113_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1008,522],0,0,-1)
    {
    Vertex="0,0;0,54;-36,54"
    }
   -Wire-([972,576],0,0,-1)
    {
    Vertex="0,0;-792,0"
    }
   -Wire-([1008,576],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   0.var_switch([3402,828],0,150117128,180)
    {
    Name = "BP1113_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,828],0,0,-1)
    {
    Name = "BP1113_4"
    }
   -Wire-([3438,828],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,828],0,0,-1)
    {
    Name = "BP1113_4_B"
    }
   -Wire-([3618,828],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,828],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,828],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,828],0,0,-1)
    {
    Name = "BP1113_4_C"
    }
   0.datalabel([3798,828],0,0,-1)
    {
    Name = "BP1113_4_A"
    }
   0.flip_flop([3582,846],0,0,190)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,828],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,828],0,0,520)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,828],0,0,920)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3564,900],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([3726,828],0,0,510)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,828],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3564,900],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.breaker3([1440,576],3,0,1080)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_1_A"
    NAMEB = "HP2436_1_B"
    NAMEC = "HP2436_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1674,576],3,0,1060)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_2_A"
    NAMEB = "HP2436_2_B"
    NAMEC = "HP2436_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1890,576],3,0,1050)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_3_A"
    NAMEB = "HP2436_3_B"
    NAMEC = "HP2436_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2124,576],3,0,1040)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_4_A"
    NAMEB = "HP2436_4_B"
    NAMEC = "HP2436_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1638,540],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([1674,540],0,0,-1)
    {
    Vertex="0,0;630,0"
    }
   0.breakout([1656,486],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1656,396],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1656,540],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1656,486],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1656,540],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.var_switch([3402,1422],0,150122840,260)
    {
    Name = "HP2436_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,1422],0,0,-1)
    {
    Name = "HP2436_3"
    }
   -Wire-([3438,1422],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3402,1278],0,150123656,240)
    {
    Name = "HP2436_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,1278],0,0,-1)
    {
    Name = "HP2436_2"
    }
   -Wire-([3438,1278],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3402,1170],0,150124472,230)
    {
    Name = "HP2436_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,1170],0,0,-1)
    {
    Name = "HP2436_1"
    }
   -Wire-([3438,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,1170],0,0,-1)
    {
    Name = "HP2436_1_B"
    }
   -Wire-([3618,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,1170],0,0,-1)
    {
    Name = "HP2436_1_C"
    }
   0.datalabel([3798,1170],0,0,-1)
    {
    Name = "HP2436_1_A"
    }
   -Wire-([3582,1350],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3582,1188],0,0,530)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3492,1350],0,0,250)
    {
    INTR = "0"
    }
   -Wire-([3420,1350],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,1278],0,0,-1)
    {
    Name = "HP2436_2_B"
    }
   -Wire-([3618,1278],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,1278],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,1278],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,1278],0,0,-1)
    {
    Name = "HP2436_2_C"
    }
   0.datalabel([3798,1278],0,0,-1)
    {
    Name = "HP2436_2_A"
    }
   0.flip_flop([3582,1296],0,0,540)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3582,1242],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3528,1242],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3474,1278],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3474,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,1170],0,0,790)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3870,1278],0,0,780)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,1170],0,0,910)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,1278],0,0,900)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3420,1350],0,0,-1)
    {
    Name = "Uf_Fu_a"
    }
   0.datalabel([4122,1422],0,0,-1)
    {
    Name = "HP2436_3_B"
    }
   -Wire-([3618,1422],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,1422],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,1422],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,1422],0,0,-1)
    {
    Name = "HP2436_3_C"
    }
   0.datalabel([3798,1422],0,0,-1)
    {
    Name = "HP2436_3_A"
    }
   0.flip_flop([3582,1440],0,0,270)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,1422],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,1422],0,0,560)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,1422],0,0,890)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,1350],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([3564,1494],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([3726,1008],0,78986128,200)
    {
    Name = "tdelay_AC2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1008],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1008],0,0,-1)
    {
    Name = "tdelay_AC2"
    }
   0.var([3726,1044],0,78986944,210)
    {
    Name = "tdelay_CB2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1044],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1044],0,0,-1)
    {
    Name = "tdelay_CB2"
    }
   0.var([3726,1080],0,78987760,220)
    {
    Name = "tdelay_Miss2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1080],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1080],0,0,-1)
    {
    Name = "tdelay_Miss2"
    }
   0.bin_delay([3726,1170],0,0,700)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,1278],0,0,710)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,1422],0,0,550)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,1278],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,1422],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3420,972],0)
    {
    Name = ""
    Font = 1
    Bounds = 3420,972,3690,1098
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP24/36:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([3906,990],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3906,990
    Extents = 0,0,252,126
    Slider(78986128)
    Slider(78986944)
    Slider(78987760)
    }
   0.var_switch([3402,1548],0,78989800,280)
    {
    Name = "HP2436_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,1548],0,0,-1)
    {
    Name = "HP2436_4"
    }
   -Wire-([3438,1548],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,1548],0,0,-1)
    {
    Name = "HP2436_4_B"
    }
   -Wire-([3618,1548],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,1548],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,1548],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,1548],0,0,-1)
    {
    Name = "HP2436_4_C"
    }
   0.datalabel([3798,1548],0,0,-1)
    {
    Name = "HP2436_4_A"
    }
   0.flip_flop([3582,1566],0,0,290)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,1548],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,1548],0,0,580)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,1548],0,0,880)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3564,1620],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([3726,1548],0,0,570)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,1548],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3564,1620],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([900,252],0,0,-1)
    {
    Vertex="0,0;1314,0"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;1386,0"
    }
   -Wire-([1944,324],0,0,-1)
    {
    Vertex="0,0;342,0"
    }
   0.breakout([2394,486],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2394,396],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker3([2394,576],3,0,1030)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.var_switch([3402,1890],0,78994288,330)
    {
    Name = "HP3_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,1890],0,0,-1)
    {
    Name = "HP3_1"
    }
   -Wire-([3438,1890],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,1890],0,0,-1)
    {
    Name = "HP3_1_B"
    }
   -Wire-([3618,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,1890],0,0,-1)
    {
    Name = "HP3_1_C"
    }
   0.datalabel([3798,1890],0,0,-1)
    {
    Name = "HP3_1_A"
    }
   0.flip_flop([3582,1908],0,0,590)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3582,1962],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3474,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,1890],0,0,770)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,1890],0,0,870)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.var([3726,1728],0,78997552,300)
    {
    Name = "tdelay_AC3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1728],0,0,-1)
    {
    Name = "tdelay_AC3"
    }
   0.var([3726,1764],0,78998368,310)
    {
    Name = "tdelay_CB3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1764],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1764],0,0,-1)
    {
    Name = "tdelay_CB3"
    }
   0.var([3726,1800],0,78999184,320)
    {
    Name = "tdelay_Miss3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,1800],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,1800],0,0,-1)
    {
    Name = "tdelay_Miss3"
    }
   0.bin_delay([3726,1890],0,0,720)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3420,1692],0)
    {
    Name = ""
    Font = 1
    Bounds = 3420,1692,3690,1818
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP3:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([3906,1710],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3906,1710
    Extents = 0,0,252,126
    Slider(78997552)
    Slider(78998368)
    Slider(78999184)
    }
   0.zerodetect([3492,1962],0,0,340)
    {
    INTR = "0"
    }
   -Wire-([3420,1962],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3420,1962],0,0,-1)
    {
    Name = "Uf_Fu_a"
    }
   -Wire-([2394,522],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2394,540],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.annotation([2772,396],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "5*220 Mvar"
    }
   0.jumper2([2826,288],1,0,-1)
    {
    }
   0.jumper([2862,324],1,0,-1)
    {
    }
   -Wire-([2898,396],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([2862,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2826,396],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2826,450],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2898,450],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.breakout([2862,486],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2862,396],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2286,252],0,0,-1)
    {
    Vertex="0,0;540,0"
    }
   -Wire-([2286,288],0,0,-1)
    {
    Vertex="0,0;612,0"
    }
   -Wire-([2826,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2286,324],0,0,-1)
    {
    Vertex="0,0;612,0"
    }
   0.breaker3([2574,576],3,0,1020)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_1_A"
    NAMEB = "SHC_1_B"
    NAMEC = "SHC_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2718,576],3,0,1010)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_2_A"
    NAMEB = "SHC_2_B"
    NAMEC = "SHC_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2862,576],3,0,990)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_3_A"
    NAMEB = "SHC_3_B"
    NAMEC = "SHC_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3006,576],3,0,980)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_4_A"
    NAMEB = "SHC_4_B"
    NAMEC = "SHC_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2772,540],0,0,-1)
    {
    Vertex="0,0;-198,0"
    }
   -Wire-([2808,540],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([2790,540],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2862,486],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2790,540],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker3([3150,576],3,0,970)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3006,540],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.capacitor([2574,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.inductor([2574,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2574,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2574,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2574,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2574,900],1,0,-1)
    {
    }
   -Wire-([2718,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2718,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2718,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2718,900],1,0,-1)
    {
    }
   -Wire-([2862,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2862,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2862,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2862,900],1,0,-1)
    {
    }
   -Wire-([3006,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3006,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3006,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3006,900],1,0,-1)
    {
    }
   -Wire-([3150,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3150,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3150,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3150,900],1,0,-1)
    {
    }
   0.var_switch([3402,2520],0,79007752,410)
    {
    Name = "SHC_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,2520],0,0,-1)
    {
    Name = "SHC_3"
    }
   -Wire-([3438,2520],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3402,2376],0,79008568,390)
    {
    Name = "SHC_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,2376],0,0,-1)
    {
    Name = "SHC_2"
    }
   -Wire-([3438,2376],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3402,2268],0,79009384,380)
    {
    Name = "SHC_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,2268],0,0,-1)
    {
    Name = "SHC_1"
    }
   -Wire-([3438,2268],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,2268],0,0,-1)
    {
    Name = "SHC_1_B"
    }
   -Wire-([3618,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,2268],0,0,-1)
    {
    Name = "SHC_1_C"
    }
   0.datalabel([3798,2268],0,0,-1)
    {
    Name = "SHC_1_A"
    }
   -Wire-([3582,2448],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([3582,2286],0,0,600)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3492,2448],0,0,400)
    {
    INTR = "0"
    }
   -Wire-([3420,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,2376],0,0,-1)
    {
    Name = "SHC_2_B"
    }
   -Wire-([3618,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,2376],0,0,-1)
    {
    Name = "SHC_2_C"
    }
   0.datalabel([3798,2376],0,0,-1)
    {
    Name = "SHC_2_A"
    }
   0.flip_flop([3582,2394],0,0,610)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3582,2340],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3528,2340],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3474,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3474,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,2268],0,0,760)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3870,2376],0,0,750)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,2268],0,0,860)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,2376],0,0,850)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3420,2448],0,0,-1)
    {
    Name = "Uf_Fu_a"
    }
   0.datalabel([4122,2520],0,0,-1)
    {
    Name = "SHC_3_B"
    }
   -Wire-([3618,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,2520],0,0,-1)
    {
    Name = "SHC_3_C"
    }
   0.datalabel([3798,2520],0,0,-1)
    {
    Name = "SHC_3_A"
    }
   0.flip_flop([3582,2538],0,0,420)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,2520],0,0,630)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,2520],0,0,840)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3528,2448],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([3564,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([3726,2106],0,79018360,350)
    {
    Name = "tdelay_AC4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,2106],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,2106],0,0,-1)
    {
    Name = "tdelay_AC4"
    }
   0.var([3726,2142],0,79019176,360)
    {
    Name = "tdelay_CB4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,2142],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,2142],0,0,-1)
    {
    Name = "tdelay_CB4"
    }
   0.var([3726,2178],0,79019992,370)
    {
    Name = "tdelay_Miss4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([3762,2178],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,2178],0,0,-1)
    {
    Name = "tdelay_Miss4"
    }
   0.bin_delay([3726,2268],0,0,730)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,2376],0,0,740)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([3726,2520],0,0,620)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3762,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3420,2070],0)
    {
    Name = ""
    Font = 1
    Bounds = 3420,2070,3690,2196
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for SHC:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([3906,2088],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3906,2088
    Extents = 0,0,252,126
    Slider(79018360)
    Slider(79019176)
    Slider(79019992)
    }
   0.var_switch([3402,2646],0,79022032,430)
    {
    Name = "SHC_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,2646],0,0,-1)
    {
    Name = "SHC_4"
    }
   -Wire-([3438,2646],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,2646],0,0,-1)
    {
    Name = "SHC_4_B"
    }
   -Wire-([3618,2646],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,2646],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,2646],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,2646],0,0,-1)
    {
    Name = "SHC_4_C"
    }
   0.datalabel([3798,2646],0,0,-1)
    {
    Name = "SHC_4_A"
    }
   0.flip_flop([3582,2664],0,0,440)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,2646],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,2646],0,0,650)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,2646],0,0,830)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3564,2718],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([3726,2646],0,0,640)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,2646],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3564,2718],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([3402,2772],0,79025704,450)
    {
    Name = "SHC_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3474,2772],0,0,-1)
    {
    Name = "SHC_5"
    }
   -Wire-([3438,2772],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4122,2772],0,0,-1)
    {
    Name = "SHC_5_B"
    }
   -Wire-([3618,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3906,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4050,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3942,2772],0,0,-1)
    {
    Name = "SHC_5_C"
    }
   0.datalabel([3798,2772],0,0,-1)
    {
    Name = "SHC_5_A"
    }
   0.flip_flop([3582,2790],0,0,460)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3474,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([3870,2772],0,0,670)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4014,2772],0,0,820)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3564,2844],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([3726,2772],0,0,660)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([3762,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3564,2844],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.annotation([918,432],0,0,-1)
    {
    AL1 = "BP 11/13"
    AL2 = "4*220 Mvar"
    }
   0.breaker3([180,612],3,0,1150)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_1_A"
    NAMEB = "BP1113_1_B"
    NAMEC = "BP1113_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([324,612],3,0,1140)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_2_A"
    NAMEB = "BP1113_2_B"
    NAMEC = "BP1113_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([468,612],3,0,1130)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_3_A"
    NAMEB = "BP1113_3_B"
    NAMEC = "BP1113_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([612,612],3,0,1120)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "BP1113_4_A"
    NAMEB = "BP1113_4_B"
    NAMEC = "BP1113_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ground([234,882],1,0,-1)
    {
    }
   0.capacitor([180,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([180,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([270,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([234,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([180,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([180,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([180,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([270,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([180,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([180,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([180,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([234,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([378,882],1,0,-1)
    {
    }
   0.capacitor([324,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([324,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([414,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([378,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([324,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([324,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([324,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([414,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([324,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([324,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([324,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([378,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([522,882],1,0,-1)
    {
    }
   0.capacitor([468,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([468,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([558,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([522,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([468,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([468,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([468,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([558,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([468,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([468,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([468,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([522,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([666,882],1,0,-1)
    {
    }
   0.capacitor([612,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([612,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([702,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([666,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([612,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([612,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([612,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([702,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([612,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([612,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([612,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([666,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([828,882],1,0,-1)
    {
    }
   0.capacitor([774,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([774,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([864,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([828,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([774,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([774,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([864,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([774,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([774,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([774,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([828,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([972,882],1,0,-1)
    {
    }
   0.capacitor([918,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([918,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1008,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([972,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([918,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([918,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1008,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([918,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([918,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([918,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([972,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1116,882],1,0,-1)
    {
    }
   0.capacitor([1062,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([1062,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1152,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1116,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([1062,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([1062,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1152,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1062,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1062,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1062,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1116,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1260,882],1,0,-1)
    {
    }
   0.capacitor([1206,648],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([1206,756],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1296,720],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1260,810],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([1206,846],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([1206,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1206,702],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1296,756],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1206,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1206,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1206,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1260,846],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1440,882],1,0,-1)
    {
    }
   0.capacitor([1440,612],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1440,684],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1350,756],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1530,684],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1440,756],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1530,756],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1350,828],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1440,828],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1440,648],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1440,666],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1440,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1440,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1350,756],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1440,738],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1530,720],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1530,792],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1440,828],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1350,864],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1350,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1674,882],1,0,-1)
    {
    }
   0.capacitor([1674,612],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1674,684],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1584,756],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1764,684],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1674,756],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1764,756],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1584,828],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1674,828],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1674,648],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1674,666],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1674,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1674,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1584,756],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1674,738],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1764,720],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1764,792],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1674,828],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1584,864],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1584,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1890,882],1,0,-1)
    {
    }
   0.capacitor([1890,612],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1890,684],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1800,756],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1980,684],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1890,756],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1980,756],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1800,828],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1890,828],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1890,648],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1890,666],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1890,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1890,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1800,756],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1890,738],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1980,720],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1980,792],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1890,828],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1800,864],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1800,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2124,882],1,0,-1)
    {
    }
   0.capacitor([2124,612],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([2124,684],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([2034,756],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2214,684],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([2124,756],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2214,756],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([2034,828],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([2124,828],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([2124,648],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2124,666],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2124,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2124,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2034,756],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([2124,738],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2214,792],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([2124,828],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([2034,864],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([2034,792],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2304,540],0,0,-1)
    {
    Vertex="0,0;0,432;-864,432"
    }
   0.breaker3([1440,1008],3,0,940)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_1_A"
    NAMEB = "HP2436_1_B"
    NAMEC = "HP2436_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ground([1440,1314],1,0,-1)
    {
    }
   0.capacitor([1440,1044],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1440,1116],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1350,1188],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1530,1116],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1440,1188],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1530,1188],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1350,1260],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1440,1260],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1440,1080],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1440,1098],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1440,1152],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1440,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1350,1188],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1440,1170],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1530,1152],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1530,1224],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1440,1260],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1350,1296],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1350,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([1692,1008],3,0,930)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_2_A"
    NAMEB = "HP2436_2_B"
    NAMEC = "HP2436_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "2"
    BOpen2 = "2"
    BOpen3 = "2"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ground([1692,1314],1,0,-1)
    {
    }
   0.capacitor([1692,1044],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1692,1116],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1602,1188],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1782,1116],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1692,1188],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1782,1188],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1602,1260],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1692,1260],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1692,1080],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1692,1098],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1692,1152],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1692,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1602,1188],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1692,1170],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1782,1152],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1782,1224],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1692,1260],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1602,1296],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1602,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.capacitor([2718,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.capacitor([2862,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.capacitor([3006,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.capacitor([3150,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.inductor([2718,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([2862,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([3006,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.inductor([3150,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([2394,666],1,0,-1)
    {
    C = "2.772 [uF]"
    }
   0.inductor([2394,810],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   -Wire-([2394,666],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2394,702],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2394,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2394,900],1,0,-1)
    {
    }
   -Wire-([2214,720],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.xnode([522,252],0,0,-1)
    {
    Name = "ACF_Fu_a"
    }
   0.xnode([522,288],0,0,-1)
    {
    Name = "ACF_Fu_b"
    }
   0.xnode([522,324],0,0,-1)
    {
    Name = "ACF_Fu_c"
    }
   }
  }
 Module("Chongqing_ACF")
  {
  Desc = ""
  FileDate = 1400042432
  Nodes = 
   {
   Electrical("ACF_Ch_A",-36,-54)
    {
    }
   Electrical("ACF_Ch_B",0,-54)
    {
    }
   Electrical("ACF_Ch_C",36,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-57,-39,56,104)
   Pen(ByNode,ByNode,ByNode)
   Line(-36,-54,-36,-39)
   Line(0,-54,0,-39)
   Line(36,-54,36,-39)
   Font(,Medium)
   Text(1,27,"Chongqing")
   Text(0,53,"AC Filters")
   Font(,Small)
   Text(-26,-42,"A")
   Text(10,-42,"B")
   Text(46,-42,"C")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   0.xnode([198,612],6,0,-1)
    {
    Name = "ACF_Ch_A"
    }
   0.xnode([198,648],6,0,-1)
    {
    Name = "ACF_Ch_B"
    }
   0.xnode([198,684],6,0,-1)
    {
    Name = "ACF_Ch_C"
    }
   -Wire-([198,612],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([198,648],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([198,684],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.jumper2([612,648],1,0,-1)
    {
    }
   0.jumper([648,684],1,0,-1)
    {
    }
   0.breaker3([936,972],3,0,1610)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_5_A"
    NAMEB = "HP1113_5_B"
    NAMEC = "HP1113_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.annotation([1836,774],0,0,-1)
    {
    AL1 = "HP3/24/36"
    AL2 = "6*240 Mvar"
    }
   0.jumper2([1890,648],1,0,-1)
    {
    }
   0.jumper([1926,684],1,0,-1)
    {
    }
   -Wire-([1962,756],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([1926,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1890,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([306,612],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([306,648],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([306,684],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([306,648],4,0,20)
    {
    View = "0"
    }
   0.nodeloop([342,648],0,0,30)
    {
    View = "0"
    }
   0.power([306,756],7,0,80)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([306,792],7,79085680,100)
    {
    Name = "Pf_Ch"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "150"
    }
   0.pgb([342,792],7,79086088,110)
    {
    Name = "Qf_Ch"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "300"
    }
   0.var_switch([4374,720],0,79086496,210)
    {
    Name = "BP1113_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,720],0,0,-1)
    {
    Name = "HP1113_3"
    }
   -Wire-([4410,720],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4374,576],0,79087312,170)
    {
    Name = "BP1113_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,576],0,0,-1)
    {
    Name = "HP1113_2"
    }
   -Wire-([4410,576],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4374,468],0,79088128,140)
    {
    Name = "BP1113_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,468],0,0,-1)
    {
    Name = "HP1113_1"
    }
   -Wire-([4410,468],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,756],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([612,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([648,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.ammeter([576,612],2,0,10)
    {
    Name = "If_Ch_a"
    }
   0.ammeter([576,648],2,0,40)
    {
    Name = "If_Ch_b"
    }
   0.ammeter([576,684],2,0,50)
    {
    Name = "If_Ch_c"
    }
   -Wire-([450,612],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([450,648],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([450,684],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([576,684],0,0,-1)
    {
    Vertex="0,0;2574,0"
    }
   0.pgb([540,504],0,79090168,1680)
    {
    Name = "If_Ch_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([486,504],0,0,-1)
    {
    Name = "If_Ch_a"
    }
   -Wire-([486,504],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([540,540],0,79090984,1670)
    {
    Name = "If_Ch_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([486,540],0,0,-1)
    {
    Name = "If_Ch_b"
    }
   -Wire-([486,540],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([540,576],0,79091800,1660)
    {
    Name = "If_Ch_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([486,576],0,0,-1)
    {
    Name = "If_Ch_c"
    }
   -Wire-([486,576],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmetergnd([1692,612],4,0,70)
    {
    Name = "Uf_Ch_a"
    }
   -Wire-([450,612],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([450,648],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([450,684],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([1890,810],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1962,810],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([648,756],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([684,756],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([612,756],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([5094,468],0,0,-1)
    {
    Name = "HP1113_1_B"
    }
   -Wire-([4590,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,468],0,0,-1)
    {
    Name = "HP1113_1_C"
    }
   0.datalabel([4770,468],0,0,-1)
    {
    Name = "HP1113_1_A"
    }
   -Wire-([4554,648],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([4554,486],0,0,640)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([4464,648],0,0,190)
    {
    INTR = "0"
    }
   -Wire-([4392,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5094,576],0,0,-1)
    {
    Name = "HP1113_2_B"
    }
   -Wire-([4590,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,576],0,0,-1)
    {
    Name = "HP1113_2_C"
    }
   0.datalabel([4770,576],0,0,-1)
    {
    Name = "HP1113_2_A"
    }
   0.flip_flop([4554,594],0,0,650)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4554,540],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4500,540],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([4446,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4446,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4842,468],0,0,1070)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4842,576],0,0,1180)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,468],0,0,1190)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,576],0,0,1600)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([4392,648],0,0,-1)
    {
    Name = "Uf_Ch_a"
    }
   0.datalabel([5094,720],0,0,-1)
    {
    Name = "HP1113_3_B"
    }
   -Wire-([4590,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,720],0,0,-1)
    {
    Name = "HP1113_3_C"
    }
   0.datalabel([4770,720],0,0,-1)
    {
    Name = "HP1113_3_A"
    }
   0.flip_flop([4554,738],0,0,220)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4446,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4842,720],0,0,690)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,720],0,0,1510)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4500,648],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([4536,792],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([4698,306],0,79101184,60)
    {
    Name = "tdelay_AC1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4734,306],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4806,306],0,0,-1)
    {
    Name = "tdelay_AC1"
    }
   0.var([4698,342],0,79102000,90)
    {
    Name = "tdelay_CB1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4734,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4806,342],0,0,-1)
    {
    Name = "tdelay_CB1"
    }
   0.var([4698,378],0,79102816,120)
    {
    Name = "tdelay_Miss1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4734,378],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4806,378],0,0,-1)
    {
    Name = "tdelay_Miss1"
    }
   0.bin_delay([4698,468],0,0,1060)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4698,576],0,0,1080)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4698,720],0,0,680)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4734,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4734,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4734,720],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([4392,270],0)
    {
    Name = ""
    Font = 1
    Bounds = 4392,270,4662,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter BP11/13:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([4878,288],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4878,288
    Extents = 0,0,252,126
    Slider(79101184)
    Slider(79102000)
    Slider(79102816)
    }
   -Wire-([612,792],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([648,792],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([684,792],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breakout([648,882],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([648,882],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1080,936],0,0,-1)
    {
    Vertex="0,0;-720,0"
    }
   0.var_switch([4374,846],0,79105264,250)
    {
    Name = "BP1113_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,846],0,0,-1)
    {
    Name = "HP1113_4"
    }
   -Wire-([4410,846],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5094,846],0,0,-1)
    {
    Name = "HP1113_4_B"
    }
   -Wire-([4590,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,846],0,0,-1)
    {
    Name = "HP1113_4_C"
    }
   0.datalabel([4770,846],0,0,-1)
    {
    Name = "HP1113_4_A"
    }
   0.flip_flop([4554,864],0,0,270)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4446,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4842,846],0,0,730)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,846],0,0,1370)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4536,918],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([4698,846],0,0,710)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4734,846],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4536,918],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.breaker3([1350,990],3,0,1580)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_1_A"
    NAMEB = "HP2436_1_B"
    NAMEC = "HP2436_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1818,990],3,0,1560)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_3_A"
    NAMEB = "HP2436_3_B"
    NAMEC = "HP2436_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2052,990],3,0,1540)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_4_A"
    NAMEB = "HP2436_4_B"
    NAMEC = "HP2436_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1818,936],0,0,-1)
    {
    Vertex="0,0;-468,0"
    }
   -Wire-([1818,936],0,0,-1)
    {
    Vertex="0,0;702,0"
    }
   0.breakout([1926,846],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1926,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1926,846],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   0.var_switch([5346,738],0,79110568,240)
    {
    Name = "HP2436_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,738],0,0,-1)
    {
    Name = "HP2436_3"
    }
   -Wire-([5382,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([5346,594],0,79111384,200)
    {
    Name = "HP2436_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,594],0,0,-1)
    {
    Name = "HP2436_2"
    }
   -Wire-([5382,594],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([5346,486],0,79112200,180)
    {
    Name = "HP2436_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,486],0,0,-1)
    {
    Name = "HP2436_1"
    }
   -Wire-([5382,486],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,486],0,0,-1)
    {
    Name = "HP2436_1_B"
    }
   -Wire-([5562,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,486],0,0,-1)
    {
    Name = "HP2436_1_C"
    }
   0.datalabel([5742,486],0,0,-1)
    {
    Name = "HP2436_1_A"
    }
   -Wire-([5526,666],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([5526,504],0,0,660)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([5436,666],0,0,230)
    {
    INTR = "0"
    }
   -Wire-([5364,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,594],0,0,-1)
    {
    Name = "HP2436_2_B"
    }
   -Wire-([5562,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,594],0,0,-1)
    {
    Name = "HP2436_2_C"
    }
   0.datalabel([5742,594],0,0,-1)
    {
    Name = "HP2436_2_A"
    }
   0.flip_flop([5526,612],0,0,670)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5526,558],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([5472,558],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([5418,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5418,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,486],0,0,1100)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5814,594],0,0,1160)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,486],0,0,1170)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,594],0,0,1550)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([5364,666],0,0,-1)
    {
    Name = "Uf_Ch_a"
    }
   0.datalabel([6066,738],0,0,-1)
    {
    Name = "HP2436_3_B"
    }
   -Wire-([5562,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,738],0,0,-1)
    {
    Name = "HP2436_3_C"
    }
   0.datalabel([5742,738],0,0,-1)
    {
    Name = "HP2436_3_A"
    }
   0.flip_flop([5526,756],0,0,260)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,738],0,0,720)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,738],0,0,1380)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5472,666],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([5508,810],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([5670,324],0,79147224,130)
    {
    Name = "tdelay_AC2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,324],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,324],0,0,-1)
    {
    Name = "tdelay_AC2"
    }
   0.var([5670,360],0,79148040,150)
    {
    Name = "tdelay_CB2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,360],0,0,-1)
    {
    Name = "tdelay_CB2"
    }
   0.var([5670,396],0,79148856,160)
    {
    Name = "tdelay_Miss2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,396],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,396],0,0,-1)
    {
    Name = "tdelay_Miss2"
    }
   0.bin_delay([5670,486],0,0,1090)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,594],0,0,1110)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,738],0,0,700)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5706,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5706,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([5364,288],0)
    {
    Name = ""
    Font = 1
    Bounds = 5364,288,5634,414
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP24/36:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([5850,306],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 5850,306
    Extents = 0,0,252,126
    Slider(79147224)
    Slider(79148040)
    Slider(79148856)
    }
   0.var_switch([5346,864],0,79150896,280)
    {
    Name = "HP2436_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,864],0,0,-1)
    {
    Name = "HP2436_4"
    }
   -Wire-([5382,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,864],0,0,-1)
    {
    Name = "HP2436_4_B"
    }
   -Wire-([5562,864],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,864],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,864],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,864],0,0,-1)
    {
    Name = "HP2436_4_C"
    }
   0.datalabel([5742,864],0,0,-1)
    {
    Name = "HP2436_4_A"
    }
   0.flip_flop([5526,882],0,0,300)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,864],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,864],0,0,760)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,864],0,0,1360)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,936],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,864],0,0,740)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,864],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,936],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([576,612],0,0,-1)
    {
    Vertex="0,0;2574,0"
    }
   -Wire-([576,648],0,0,-1)
    {
    Vertex="0,0;2574,0"
    }
   0.annotation([2862,756],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "12*240 Mvar"
    }
   0.jumper2([2916,648],1,0,-1)
    {
    }
   0.jumper([2952,684],1,0,-1)
    {
    }
   -Wire-([2988,756],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([2952,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2916,756],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2916,810],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2988,810],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.breakout([2952,846],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2952,756],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker3([2736,936],3,0,1530)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_1_A"
    NAMEB = "SHC_1_B"
    NAMEC = "SHC_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2808,936],3,0,1520)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_2_A"
    NAMEB = "SHC_2_B"
    NAMEC = "SHC_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2880,936],3,0,1490)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_3_A"
    NAMEB = "SHC_3_B"
    NAMEC = "SHC_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2952,936],3,0,1480)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_4_A"
    NAMEB = "SHC_4_B"
    NAMEC = "SHC_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2808,900],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([2826,900],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([2808,900],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2952,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker3([3024,936],3,0,1470)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3024,900],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.var_switch([5346,1818],0,79158240,440)
    {
    Name = "SHC_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,1818],0,0,-1)
    {
    Name = "SHC_3"
    }
   -Wire-([5382,1818],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([5346,1674],0,79159056,420)
    {
    Name = "SHC_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,1674],0,0,-1)
    {
    Name = "SHC_2"
    }
   -Wire-([5382,1674],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([5346,1566],0,79159872,410)
    {
    Name = "SHC_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,1566],0,0,-1)
    {
    Name = "SHC_1"
    }
   -Wire-([5382,1566],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,1566],0,0,-1)
    {
    Name = "SHC_1_B"
    }
   -Wire-([5562,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,1566],0,0,-1)
    {
    Name = "SHC_1_C"
    }
   0.datalabel([5742,1566],0,0,-1)
    {
    Name = "SHC_1_A"
    }
   -Wire-([5526,1746],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([5526,1584],0,0,840)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([5436,1746],0,0,430)
    {
    INTR = "0"
    }
   -Wire-([5364,1746],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,1674],0,0,-1)
    {
    Name = "SHC_2_B"
    }
   -Wire-([5562,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,1674],0,0,-1)
    {
    Name = "SHC_2_C"
    }
   0.datalabel([5742,1674],0,0,-1)
    {
    Name = "SHC_2_A"
    }
   0.flip_flop([5526,1692],0,0,850)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5526,1638],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([5472,1638],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([5418,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5418,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,1566],0,0,1150)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5814,1674],0,0,1140)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,1566],0,0,1310)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,1674],0,0,1300)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([5364,1746],0,0,-1)
    {
    Name = "Uf_Ch_a"
    }
   0.datalabel([6066,1818],0,0,-1)
    {
    Name = "SHC_3_B"
    }
   -Wire-([5562,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,1818],0,0,-1)
    {
    Name = "SHC_3_C"
    }
   0.datalabel([5742,1818],0,0,-1)
    {
    Name = "SHC_3_A"
    }
   0.flip_flop([5526,1836],0,0,450)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,1818],0,0,870)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,1818],0,0,1290)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5472,1746],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([5508,1890],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([5670,1404],0,79168848,380)
    {
    Name = "tdelay_AC4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,1404],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,1404],0,0,-1)
    {
    Name = "tdelay_AC4"
    }
   0.var([5670,1440],0,79169664,390)
    {
    Name = "tdelay_CB4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,1440],0,0,-1)
    {
    Name = "tdelay_CB4"
    }
   0.var([5670,1476],0,79170480,400)
    {
    Name = "tdelay_Miss4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5706,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5778,1476],0,0,-1)
    {
    Name = "tdelay_Miss4"
    }
   0.bin_delay([5670,1566],0,0,1120)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,1674],0,0,1130)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,1818],0,0,860)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,1566],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5706,1674],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5706,1818],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([5364,1368],0)
    {
    Name = ""
    Font = 1
    Bounds = 5364,1368,5634,1494
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for SHC:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([5850,1386],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 5850,1386
    Extents = 0,0,252,126
    Slider(79168848)
    Slider(79169664)
    Slider(79170480)
    }
   0.var_switch([5346,1944],0,79172520,460)
    {
    Name = "SHC_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,1944],0,0,-1)
    {
    Name = "SHC_4"
    }
   -Wire-([5382,1944],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,1944],0,0,-1)
    {
    Name = "SHC_4_B"
    }
   -Wire-([5562,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,1944],0,0,-1)
    {
    Name = "SHC_4_C"
    }
   0.datalabel([5742,1944],0,0,-1)
    {
    Name = "SHC_4_A"
    }
   0.flip_flop([5526,1962],0,0,470)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,1944],0,0,890)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,1944],0,0,1280)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2016],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,1944],0,0,880)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,1944],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,2016],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,2070],0,79176192,480)
    {
    Name = "SHC_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2070],0,0,-1)
    {
    Name = "SHC_5"
    }
   -Wire-([5382,2070],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,2070],0,0,-1)
    {
    Name = "SHC_5_B"
    }
   -Wire-([5562,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2070],0,0,-1)
    {
    Name = "SHC_5_C"
    }
   0.datalabel([5742,2070],0,0,-1)
    {
    Name = "SHC_5_A"
    }
   0.flip_flop([5526,2088],0,0,490)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,2070],0,0,910)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2070],0,0,1270)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2142],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2070],0,0,900)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,2142],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.annotation([558,792],0,0,-1)
    {
    AL1 = "HP 11/13"
    AL2 = "6*240 Mvar"
    }
   0.breaker3([360,972],3,0,1650)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_1_A"
    NAMEB = "HP1113_1_B"
    NAMEC = "HP1113_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([504,972],3,0,1640)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_2_A"
    NAMEB = "HP1113_2_B"
    NAMEC = "HP1113_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([648,972],3,0,1630)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_3_A"
    NAMEB = "HP1113_3_B"
    NAMEC = "HP1113_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([792,972],3,0,1620)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_4_A"
    NAMEB = "HP1113_4_B"
    NAMEC = "HP1113_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([2286,990],3,0,1500)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_5_A"
    NAMEB = "HP2436_5_B"
    NAMEC = "HP2436_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3168,936],3,0,1440)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3096,936],3,0,1450)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_6_A"
    NAMEB = "SHC_6_B"
    NAMEC = "SHC_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.datalabel([6066,2196],0,0,-1)
    {
    Name = "SHC_6_B"
    }
   -Wire-([5562,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2196],0,0,-1)
    {
    Name = "SHC_6_C"
    }
   0.datalabel([5742,2196],0,0,-1)
    {
    Name = "SHC_6_A"
    }
   0.flip_flop([5526,2214],0,0,510)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5814,2196],0,0,930)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2196],0,0,1260)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2268],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2196],0,0,920)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([6066,2448],0,0,-1)
    {
    Name = "SHC_8_B"
    }
   -Wire-([5562,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2448],0,0,-1)
    {
    Name = "SHC_8_C"
    }
   0.datalabel([5742,2448],0,0,-1)
    {
    Name = "SHC_8_A"
    }
   0.flip_flop([5526,2466],0,0,550)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5814,2448],0,0,970)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2448],0,0,1240)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2520],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2448],0,0,960)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,2268],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([5508,2394],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,2196],0,79188840,500)
    {
    Name = "SHC_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2196],0,0,-1)
    {
    Name = "SHC_6"
    }
   -Wire-([5382,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5418,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([5346,2448],0,79189656,540)
    {
    Name = "SHC_8"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2448],0,0,-1)
    {
    Name = "SHC_8"
    }
   -Wire-([5382,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5418,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([4374,972],0,79190472,290)
    {
    Name = "BP1113_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,972],0,0,-1)
    {
    Name = "HP1113_5"
    }
   -Wire-([4410,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5094,972],0,0,-1)
    {
    Name = "HP1113_5_B"
    }
   -Wire-([4590,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,972],0,0,-1)
    {
    Name = "HP1113_5_C"
    }
   0.datalabel([4770,972],0,0,-1)
    {
    Name = "HP1113_5_A"
    }
   0.flip_flop([4554,990],0,0,310)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4446,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4842,972],0,0,770)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,972],0,0,1350)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4536,1044],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([4698,972],0,0,750)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4734,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4536,1044],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,990],0,79194144,320)
    {
    Name = "HP2436_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,990],0,0,-1)
    {
    Name = "HP2436_5"
    }
   -Wire-([5382,990],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,990],0,0,-1)
    {
    Name = "HP2436_5_B"
    }
   -Wire-([5562,990],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,990],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,990],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,990],0,0,-1)
    {
    Name = "HP2436_5_C"
    }
   0.datalabel([5742,990],0,0,-1)
    {
    Name = "HP2436_5_A"
    }
   0.flip_flop([5526,1008],0,0,340)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,990],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,990],0,0,800)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,990],0,0,1340)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,1062],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,990],0,0,780)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,990],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,1062],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.breaker3([1080,972],3,0,1590)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_6_A"
    NAMEB = "HP1113_6_B"
    NAMEC = "HP1113_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1584,990],3,0,1570)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_2_A"
    NAMEB = "HP2436_2_B"
    NAMEC = "HP2436_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1818,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1350,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1584,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2052,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2286,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.breaker3([2520,990],3,0,1460)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_6_A"
    NAMEB = "HP2436_6_B"
    NAMEC = "HP2436_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2520,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.breaker3([3240,936],3,0,1430)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_8_A"
    NAMEB = "SHC_8_B"
    NAMEC = "SHC_8_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3312,936],3,0,1420)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_9_A"
    NAMEB = "SHC_9_B"
    NAMEC = "SHC_9_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3384,936],3,0,1410)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_10_A"
    NAMEB = "SHC_10_B"
    NAMEC = "SHC_10_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3168,900],0,0,-1)
    {
    Vertex="0,0;360,0"
    }
   0.breaker3([3528,936],3,0,1390)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_12_A"
    NAMEB = "SHC_12_B"
    NAMEC = "SHC_12_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3456,936],3,0,1400)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_11_A"
    NAMEB = "SHC_11_B"
    NAMEC = "SHC_11_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.var_switch([4374,1098],0,79201080,330)
    {
    Name = "BP1113_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4446,1098],0,0,-1)
    {
    Name = "HP1113_6"
    }
   -Wire-([4410,1098],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5094,1098],0,0,-1)
    {
    Name = "HP1113_6_B"
    }
   -Wire-([4590,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4878,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5022,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4914,1098],0,0,-1)
    {
    Name = "HP1113_6_C"
    }
   0.datalabel([4770,1098],0,0,-1)
    {
    Name = "HP1113_6_A"
    }
   0.flip_flop([4554,1116],0,0,350)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4446,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4842,1098],0,0,810)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4986,1098],0,0,1330)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4536,1170],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([4698,1098],0,0,790)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4734,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4536,1170],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,1116],0,79204752,360)
    {
    Name = "HP2436_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,1116],0,0,-1)
    {
    Name = "HP2436_6"
    }
   -Wire-([5382,1116],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,1116],0,0,-1)
    {
    Name = "HP2436_6_B"
    }
   -Wire-([5562,1116],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,1116],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,1116],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,1116],0,0,-1)
    {
    Name = "HP2436_6_C"
    }
   0.datalabel([5742,1116],0,0,-1)
    {
    Name = "HP2436_6_A"
    }
   0.flip_flop([5526,1134],0,0,370)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,1116],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,1116],0,0,830)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,1116],0,0,1320)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,1188],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,1116],0,0,820)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,1116],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,1188],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,2574],0,79208424,560)
    {
    Name = "SHC_9"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2574],0,0,-1)
    {
    Name = "SHC_9"
    }
   -Wire-([5382,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,2574],0,0,-1)
    {
    Name = "SHC_9_B"
    }
   -Wire-([5562,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2574],0,0,-1)
    {
    Name = "SHC_9_C"
    }
   0.datalabel([5742,2574],0,0,-1)
    {
    Name = "SHC_9_A"
    }
   0.flip_flop([5526,2592],0,0,570)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,2574],0,0,990)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2574],0,0,1230)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2646],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2574],0,0,980)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([6066,2700],0,0,-1)
    {
    Name = "SHC_10_B"
    }
   -Wire-([5562,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2700],0,0,-1)
    {
    Name = "SHC_10_C"
    }
   0.datalabel([5742,2700],0,0,-1)
    {
    Name = "SHC_10_A"
    }
   0.flip_flop([5526,2718],0,0,590)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5814,2700],0,0,1010)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2700],0,0,1220)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2772],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2700],0,0,1000)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([6066,2322],0,0,-1)
    {
    Name = "SHC_7_B"
    }
   -Wire-([5562,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2322],0,0,-1)
    {
    Name = "SHC_7_C"
    }
   0.datalabel([5742,2322],0,0,-1)
    {
    Name = "SHC_7_A"
    }
   0.flip_flop([5526,2340],0,0,530)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5814,2322],0,0,950)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2322],0,0,1250)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5508,2394],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5670,2322],0,0,940)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,2772],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([5508,2520],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([5346,2700],0,79217808,580)
    {
    Name = "SHC_10"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2700],0,0,-1)
    {
    Name = "SHC_10"
    }
   -Wire-([5382,2700],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5418,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([5346,2322],0,79218624,520)
    {
    Name = "SHC_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2322],0,0,-1)
    {
    Name = "SHC_7"
    }
   -Wire-([5382,2322],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5418,2322],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([5346,2952],0,79219440,620)
    {
    Name = "SHC_12"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2952],0,0,-1)
    {
    Name = "SHC_12"
    }
   -Wire-([5382,2952],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([5346,2826],0,79220256,600)
    {
    Name = "SHC_11"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([5418,2826],0,0,-1)
    {
    Name = "SHC_11"
    }
   -Wire-([5382,2826],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([6066,2826],0,0,-1)
    {
    Name = "SHC_11_B"
    }
   -Wire-([5562,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2826],0,0,-1)
    {
    Name = "SHC_11_C"
    }
   0.datalabel([5742,2826],0,0,-1)
    {
    Name = "SHC_11_A"
    }
   0.flip_flop([5526,2844],0,0,610)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.datalabel([6066,2952],0,0,-1)
    {
    Name = "SHC_12_B"
    }
   -Wire-([5562,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5850,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5994,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5886,2952],0,0,-1)
    {
    Name = "SHC_12_C"
    }
   0.datalabel([5742,2952],0,0,-1)
    {
    Name = "SHC_12_A"
    }
   0.flip_flop([5526,2970],0,0,630)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5418,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5418,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5814,2826],0,0,1030)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5814,2952],0,0,1050)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2826],0,0,1210)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5958,2952],0,0,1200)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,2826],0,0,1020)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5670,2952],0,0,1040)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5706,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5706,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5508,2646],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([5526,3024],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-126"
    }
   -Wire-([5526,2898],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-126"
    }
   0.capacitor([3528,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3528,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3528,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3528,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3528,1260],1,0,-1)
    {
    }
   0.inductor([3528,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.ground([2520,1296],1,0,-1)
    {
    }
   0.capacitor([2520,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([2520,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([2430,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2610,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([2520,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2610,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([2430,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([2520,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([2520,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2520,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2520,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2520,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2430,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([2520,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2610,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2610,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([2520,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([2430,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([2430,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1134,1242],1,0,-1)
    {
    }
   0.capacitor([1080,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([1080,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1170,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1134,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([1080,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([1080,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1080,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1170,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1080,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1080,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1080,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1134,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([990,1242],1,0,-1)
    {
    }
   0.capacitor([936,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([936,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([1026,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([990,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([936,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([936,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([936,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1026,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([936,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([936,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([936,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([990,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([846,1242],1,0,-1)
    {
    }
   0.capacitor([792,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([792,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([882,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([846,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([792,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([792,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([792,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([882,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([792,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([792,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([792,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([846,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([702,1242],1,0,-1)
    {
    }
   0.capacitor([648,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([648,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([738,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([702,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([648,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([648,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([648,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([738,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([648,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([648,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([648,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([702,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([558,1242],1,0,-1)
    {
    }
   0.capacitor([504,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([504,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([594,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([558,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([504,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([504,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([504,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([594,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([504,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([504,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([504,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([558,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([414,1242],1,0,-1)
    {
    }
   0.capacitor([360,1008],1,0,-1)
    {
    C = "2.753[uF]"
    }
   0.inductor([360,1116],5,0,-1)
    {
    L = "0.024218 [H]"
    }
   0.resistor([450,1080],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([414,1170],1,0,-1)
    {
    C = "120.545 [uF]"
    }
   0.inductor([360,1206],5,0,-1)
    {
    L = "0.000625 [H]"
    }
   -Wire-([360,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,1062],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([450,1116],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([360,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([360,1116],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([360,1134],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([414,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2286,1296],1,0,-1)
    {
    }
   0.capacitor([2286,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([2286,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([2196,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2376,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([2286,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2376,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([2196,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([2286,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([2286,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2286,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2286,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2286,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2196,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([2286,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2376,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2376,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([2286,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([2196,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([2196,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2052,1296],1,0,-1)
    {
    }
   0.capacitor([2052,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([2052,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1962,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([2142,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([2052,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([2142,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1962,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([2052,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([2052,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2052,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2052,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2052,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1962,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([2052,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2142,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2142,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([2052,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1962,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1962,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1818,1296],1,0,-1)
    {
    }
   0.capacitor([1818,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1818,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1728,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1908,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1818,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1908,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1728,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1818,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1818,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1818,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1818,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1818,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1728,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1818,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1908,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1908,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1818,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1728,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1728,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1584,1296],1,0,-1)
    {
    }
   0.capacitor([1584,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1584,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1494,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1674,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1584,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1674,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1494,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1584,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1584,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1584,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1584,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1584,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1494,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1584,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1674,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1674,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1584,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1494,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1494,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1350,1296],1,0,-1)
    {
    }
   0.capacitor([1350,1026],1,0,-1)
    {
    C = "2.466 [uF]"
    }
   0.inductor([1350,1098],1,0,-1)
    {
    L = "0.220122 [H]"
    }
   0.capacitor([1260,1170],1,0,-1)
    {
    C = "0.149 [uF]"
    }
   0.resistor([1440,1098],1,0,-1)
    {
    R = "600 [ohm]"
    }
   0.inductor([1350,1170],1,0,-1)
    {
    L = "0.169656 [H]"
    }
   0.resistor([1440,1170],1,0,-1)
    {
    R = "2000 [ohm]"
    }
   0.capacitor([1260,1242],1,0,-1)
    {
    C = "0.181 [uF]"
    }
   0.inductor([1350,1242],1,0,-1)
    {
    L = "0.062133 [H]"
    }
   -Wire-([1350,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1350,1080],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1350,1134],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1350,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1260,1170],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   -Wire-([1350,1152],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1440,1152],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1440,1206],0,0,-1)
    {
    Vertex="0,0;0,36;-90,36"
    }
   -Wire-([1350,1242],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([1260,1278],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1260,1206],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.capacitor([3456,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3456,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3456,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3456,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3456,1260],1,0,-1)
    {
    }
   0.inductor([3456,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3384,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3384,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3384,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3384,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3384,1260],1,0,-1)
    {
    }
   0.inductor([3384,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3312,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3312,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3312,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3312,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3312,1260],1,0,-1)
    {
    }
   0.inductor([3312,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3240,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3240,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3240,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3240,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3240,1260],1,0,-1)
    {
    }
   0.inductor([3240,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3168,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3168,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3168,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3168,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3168,1260],1,0,-1)
    {
    }
   0.inductor([3168,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3096,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3096,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3096,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3096,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3096,1260],1,0,-1)
    {
    }
   0.inductor([3096,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([3024,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([3024,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3024,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3024,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3024,1260],1,0,-1)
    {
    }
   0.inductor([3024,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([2952,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2952,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2952,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2952,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2952,1260],1,0,-1)
    {
    }
   0.inductor([2952,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([2880,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2880,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2880,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2880,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2880,1260],1,0,-1)
    {
    }
   0.inductor([2880,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([2808,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2808,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2808,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2808,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2808,1260],1,0,-1)
    {
    }
   0.inductor([2808,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   0.capacitor([2736,1026],1,0,-1)
    {
    C = "2.772[uF]"
    }
   -Wire-([2736,1026],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2736,1062],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([2736,1206],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([2736,1260],1,0,-1)
    {
    }
   0.inductor([2736,1170],1,0,-1)
    {
    L = "0.00282 [H]"
    }
   }
  }
 Module("Huaidong_ACF")
  {
  Desc = ""
  FileDate = 1400042432
  Nodes = 
   {
   Electrical("ACF_Hu_A",-36,-54)
    {
    }
   Electrical("ACF_Hu_B",0,-54)
    {
    }
   Electrical("ACF_Hu_c",36,-54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-64,-38,67,101)
   Pen(ByNode,ByNode,ByNode)
   Line(-36,-54,-36,-39)
   Line(0,-54,0,-39)
   Line(36,-54,36,-39)
   Font(,Medium)
   Text(1,22,"Huaidong")
   Text(0,49,"AC Filters")
   Font(,Small)
   Text(-26,-42,"A")
   Text(10,-42,"B")
   Text(46,-42,"C")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   0.xnode([252,918],6,0,-1)
    {
    Name = "ACF_Hu_A"
    }
   0.xnode([252,954],6,0,-1)
    {
    Name = "ACF_Hu_B"
    }
   0.xnode([252,990],6,0,-1)
    {
    Name = "ACF_Hu_C"
    }
   -Wire-([252,918],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([252,954],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([252,990],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.jumper2([666,954],1,0,-1)
    {
    }
   0.jumper([702,990],1,0,-1)
    {
    }
   0.breaker3([990,1278],3,0,1530)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_5_A"
    NAMEB = "HP1113_5_B"
    NAMEC = "HP1113_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.annotation([1530,1080],0,0,-1)
    {
    AL1 = "HP24/36"
    AL2 = "5*240 Mvar"
    }
   0.jumper2([1584,954],1,0,-1)
    {
    }
   0.jumper([1620,990],1,0,-1)
    {
    }
   -Wire-([1656,1062],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([1620,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1584,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([360,918],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([360,954],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([360,990],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.nodeloop([360,954],4,0,130)
    {
    View = "0"
    }
   0.nodeloop([396,954],0,0,150)
    {
    View = "0"
    }
   0.power([360,1062],7,0,200)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([360,1098],7,115585800,230)
    {
    Name = "Pf_Hu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "150"
    }
   0.pgb([396,1098],7,115586208,240)
    {
    Name = "Qf_Hu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "300"
    }
   0.var_switch([3906,486],0,115586616,110)
    {
    Name = "BP1113_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,486],0,0,-1)
    {
    Name = "HP1113_3"
    }
   -Wire-([3942,486],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.annotation([2412,1062],0,0,-1)
    {
    AL1 = "HP3"
    AL2 = "5*240 Mvar"
    }
   0.jumper2([2448,954],1,0,-1)
    {
    }
   0.jumper([2484,990],1,0,-1)
    {
    }
   -Wire-([2520,1062],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([2484,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2448,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.var_switch([3906,342],0,115588656,80)
    {
    Name = "BP1113_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,342],0,0,-1)
    {
    Name = "HP1113_2"
    }
   -Wire-([3942,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3906,234],0,115589472,50)
    {
    Name = "BP1113_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,234],0,0,-1)
    {
    Name = "HP1113_1"
    }
   -Wire-([3942,234],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([738,1062],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([666,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([702,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.ammeter([630,918],2,0,120)
    {
    Name = "If_Hu_a"
    }
   0.ammeter([630,954],2,0,170)
    {
    Name = "If_Hu_b"
    }
   0.ammeter([630,990],2,0,180)
    {
    Name = "If_Hu_c"
    }
   -Wire-([504,918],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([504,954],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([504,990],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([630,990],0,0,-1)
    {
    Vertex="0,0;1476,0"
    }
   0.pgb([594,810],0,115591512,1600)
    {
    Name = "If_Hu_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([540,810],0,0,-1)
    {
    Name = "If_Hu_a"
    }
   -Wire-([540,810],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([594,846],0,115592328,1590)
    {
    Name = "If_Hu_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([540,846],0,0,-1)
    {
    Name = "If_Hu_b"
    }
   -Wire-([540,846],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.pgb([594,882],0,115593144,1580)
    {
    Name = "If_Hu_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([540,882],0,0,-1)
    {
    Name = "If_Hu_c"
    }
   -Wire-([540,882],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmetergnd([1386,918],4,0,190)
    {
    Name = "Uf_Hu_a"
    }
   -Wire-([504,918],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([504,954],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([504,990],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([2520,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2448,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2448,1098],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2520,1098],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1584,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([1656,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([702,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([738,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([666,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([4626,234],0,0,-1)
    {
    Name = "HP1113_1_B"
    }
   -Wire-([4122,234],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,234],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,234],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,234],0,0,-1)
    {
    Name = "HP1113_1_C"
    }
   0.datalabel([4302,234],0,0,-1)
    {
    Name = "HP1113_1_A"
    }
   -Wire-([4086,414],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([4086,252],0,0,840)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([3996,414],0,0,550)
    {
    INTR = "0"
    }
   -Wire-([3924,414],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,342],0,0,-1)
    {
    Name = "HP1113_2_B"
    }
   -Wire-([4122,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,342],0,0,-1)
    {
    Name = "HP1113_2_C"
    }
   0.datalabel([4302,342],0,0,-1)
    {
    Name = "HP1113_2_A"
    }
   0.flip_flop([4086,360],0,0,850)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4086,306],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4032,306],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3978,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3978,234],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,234],0,0,1100)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4374,342],0,0,1090)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,234],0,0,1230)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,342],0,0,1220)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([3924,414],0,0,-1)
    {
    Name = "Uf_Hu_a"
    }
   0.datalabel([4626,486],0,0,-1)
    {
    Name = "HP1113_3_B"
    }
   -Wire-([4122,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,486],0,0,-1)
    {
    Name = "HP1113_3_C"
    }
   0.datalabel([4302,486],0,0,-1)
    {
    Name = "HP1113_3_A"
    }
   0.flip_flop([4086,504],0,0,560)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,486],0,0,890)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,486],0,0,1190)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4032,414],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([4068,558],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([4230,72],0,115602528,10)
    {
    Name = "tdelay_AC1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,72],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,72],0,0,-1)
    {
    Name = "tdelay_AC1"
    }
   0.var([4230,108],0,115603344,20)
    {
    Name = "tdelay_CB1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,108],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,108],0,0,-1)
    {
    Name = "tdelay_CB1"
    }
   0.var([4230,144],0,115604160,30)
    {
    Name = "tdelay_Miss1"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,144],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,144],0,0,-1)
    {
    Name = "tdelay_Miss1"
    }
   0.bin_delay([4230,234],0,0,1030)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,342],0,0,1040)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,486],0,0,880)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,234],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4266,342],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4266,486],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3924,36],0)
    {
    Name = ""
    Font = 1
    Bounds = 3924,36,4194,162
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter BP11/13:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([4410,54],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4410,54
    Extents = 0,0,252,126
    Slider(115602528)
    Slider(115603344)
    Slider(115604160)
    }
   -Wire-([666,1098],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([702,1098],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([738,1098],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breakout([702,1188],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([702,1188],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([990,1242],0,0,-1)
    {
    Vertex="0,0;-576,0"
    }
   0.var_switch([3906,612],0,115606608,160)
    {
    Name = "BP1113_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,612],0,0,-1)
    {
    Name = "HP1113_4"
    }
   -Wire-([3942,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,612],0,0,-1)
    {
    Name = "HP1113_4_B"
    }
   -Wire-([4122,612],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,612],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,612],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,612],0,0,-1)
    {
    Name = "HP1113_4_C"
    }
   0.datalabel([4302,612],0,0,-1)
    {
    Name = "HP1113_4_A"
    }
   0.flip_flop([4086,630],0,0,590)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,612],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,612],0,0,930)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,612],0,0,1170)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4068,684],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([4230,612],0,0,910)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,612],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4068,684],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.breaker3([1332,1278],3,0,1520)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_1_A"
    NAMEB = "HP2436_1_B"
    NAMEC = "HP2436_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1476,1278],3,0,1510)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_2_A"
    NAMEB = "HP2436_2_B"
    NAMEC = "HP2436_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1620,1278],3,0,1500)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_3_A"
    NAMEB = "HP2436_3_B"
    NAMEC = "HP2436_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([1764,1278],3,0,1490)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_4_A"
    NAMEB = "HP2436_4_B"
    NAMEC = "HP2436_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([1476,1242],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([1620,1242],0,0,-1)
    {
    Vertex="0,0;288,0"
    }
   0.breakout([1620,1152],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([1620,1062],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1476,1242],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1620,1152],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   0.var_switch([4878,504],0,115612320,140)
    {
    Name = "HP2436_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,504],0,0,-1)
    {
    Name = "HP2436_3"
    }
   -Wire-([4914,504],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4878,360],0,115613136,100)
    {
    Name = "HP2436_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,360],0,0,-1)
    {
    Name = "HP2436_2"
    }
   -Wire-([4914,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4878,252],0,115613952,90)
    {
    Name = "HP2436_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,252],0,0,-1)
    {
    Name = "HP2436_1"
    }
   -Wire-([4914,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,252],0,0,-1)
    {
    Name = "HP2436_1_B"
    }
   -Wire-([5094,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,252],0,0,-1)
    {
    Name = "HP2436_1_C"
    }
   0.datalabel([5274,252],0,0,-1)
    {
    Name = "HP2436_1_A"
    }
   -Wire-([5058,432],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([5058,270],0,0,860)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([4968,432],0,0,570)
    {
    INTR = "0"
    }
   -Wire-([4896,432],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,360],0,0,-1)
    {
    Name = "HP2436_2_B"
    }
   -Wire-([5094,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,360],0,0,-1)
    {
    Name = "HP2436_2_C"
    }
   0.datalabel([5274,360],0,0,-1)
    {
    Name = "HP2436_2_A"
    }
   0.flip_flop([5058,378],0,0,870)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5058,324],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([5004,324],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([4950,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4950,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,252],0,0,1080)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5346,360],0,0,1070)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,252],0,0,1210)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,360],0,0,1200)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([4896,432],0,0,-1)
    {
    Name = "Uf_Hu_a"
    }
   0.datalabel([5598,504],0,0,-1)
    {
    Name = "HP2436_3_B"
    }
   -Wire-([5094,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,504],0,0,-1)
    {
    Name = "HP2436_3_C"
    }
   0.datalabel([5274,504],0,0,-1)
    {
    Name = "HP2436_3_A"
    }
   0.flip_flop([5058,522],0,0,580)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,504],0,0,920)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,504],0,0,1180)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5004,432],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([5040,576],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([5202,90],0,115622928,40)
    {
    Name = "tdelay_AC2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,90],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,90],0,0,-1)
    {
    Name = "tdelay_AC2"
    }
   0.var([5202,126],0,115623744,60)
    {
    Name = "tdelay_CB2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,126],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,126],0,0,-1)
    {
    Name = "tdelay_CB2"
    }
   0.var([5202,162],0,115624560,70)
    {
    Name = "tdelay_Miss2"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,162],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,162],0,0,-1)
    {
    Name = "tdelay_Miss2"
    }
   0.bin_delay([5202,252],0,0,1050)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5202,360],0,0,1060)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5202,504],0,0,900)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5238,360],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5238,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([4896,54],0)
    {
    Name = ""
    Font = 1
    Bounds = 4896,54,5166,180
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP24/36:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([5382,72],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 5382,72
    Extents = 0,0,252,126
    Slider(115622928)
    Slider(115623744)
    Slider(115624560)
    }
   0.var_switch([4878,630],0,115626600,210)
    {
    Name = "HP2436_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,630],0,0,-1)
    {
    Name = "HP2436_4"
    }
   -Wire-([4914,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,630],0,0,-1)
    {
    Name = "HP2436_4_B"
    }
   -Wire-([5094,630],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,630],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,630],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,630],0,0,-1)
    {
    Name = "HP2436_4_C"
    }
   0.datalabel([5274,630],0,0,-1)
    {
    Name = "HP2436_4_A"
    }
   0.flip_flop([5058,648],0,0,600)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,630],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,630],0,0,960)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,630],0,0,1160)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,702],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,630],0,0,940)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,630],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,702],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([630,918],0,0,-1)
    {
    Vertex="0,0;1818,0"
    }
   -Wire-([630,954],0,0,-1)
    {
    Vertex="0,0;1818,0"
    }
   -Wire-([2106,990],0,0,-1)
    {
    Vertex="0,0;342,0"
    }
   0.breakout([2484,1152],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([2484,1062],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker3([2232,1296],3,0,1470)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.var_switch([3906,1332],0,115631088,300)
    {
    Name = "HP3_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,1332],0,0,-1)
    {
    Name = "HP3_1"
    }
   -Wire-([3942,1332],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,1332],0,0,-1)
    {
    Name = "HP3_1_B"
    }
   -Wire-([4122,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,1332],0,0,-1)
    {
    Name = "HP3_1_C"
    }
   0.datalabel([4302,1332],0,0,-1)
    {
    Name = "HP3_1_A"
    }
   0.flip_flop([4086,1350],0,0,630)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4086,1404],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3978,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,1332],0,0,1130)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,1332],0,0,1350)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.var([4230,1170],0,115634352,260)
    {
    Name = "tdelay_AC3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,1170],0,0,-1)
    {
    Name = "tdelay_AC3"
    }
   0.var([4230,1206],0,115635168,270)
    {
    Name = "tdelay_CB3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,1206],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,1206],0,0,-1)
    {
    Name = "tdelay_CB3"
    }
   0.var([4230,1242],0,115635984,280)
    {
    Name = "tdelay_Miss3"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([4266,1242],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4338,1242],0,0,-1)
    {
    Name = "tdelay_Miss3"
    }
   0.bin_delay([4230,1332],0,0,1000)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([3924,1134],0)
    {
    Name = ""
    Font = 1
    Bounds = 3924,1134,4194,1260
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for filter HP3:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([4410,1152],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4410,1152
    Extents = 0,0,252,126
    Slider(115634352)
    Slider(115635168)
    Slider(115635984)
    }
   0.zerodetect([3996,1404],0,0,330)
    {
    INTR = "0"
    }
   -Wire-([3924,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3924,1404],0,0,-1)
    {
    Name = "Uf_Hu_a"
    }
   -Wire-([2484,1188],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2484,1224],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.annotation([3150,1062],0,0,-1)
    {
    AL1 = "SHC"
    AL2 = "7*240 Mvar"
    }
   0.jumper2([3204,954],1,0,-1)
    {
    }
   0.jumper([3240,990],1,0,-1)
    {
    }
   -Wire-([3276,1062],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([3240,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([3204,1062],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([3204,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3276,1116],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.breakout([3240,1152],3,0,-1)
    {
    Dis = "1"
    }
   -Wire-([3240,1062],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2448,918],0,0,-1)
    {
    Vertex="0,0;756,0"
    }
   -Wire-([2448,954],0,0,-1)
    {
    Vertex="0,0;918,0"
    }
   -Wire-([3204,918],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([2448,990],0,0,-1)
    {
    Vertex="0,0;918,0"
    }
   0.breaker3([3024,1242],3,0,1440)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_1_A"
    NAMEB = "SHC_1_B"
    NAMEC = "SHC_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3096,1242],3,0,1430)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_2_A"
    NAMEB = "SHC_2_B"
    NAMEC = "SHC_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3168,1242],3,0,1410)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_3_A"
    NAMEB = "SHC_3_B"
    NAMEC = "SHC_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3240,1242],3,0,1400)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_4_A"
    NAMEB = "SHC_4_B"
    NAMEC = "SHC_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3096,1206],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3114,1206],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([3096,1206],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3240,1152],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker3([3312,1242],3,0,1380)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_5_A"
    NAMEB = "SHC_5_B"
    NAMEC = "SHC_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([3312,1206],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.capacitor([3024,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3024,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3024,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3024,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3024,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3024,1566],1,0,-1)
    {
    }
   0.var_switch([4878,1584],0,115642920,410)
    {
    Name = "SHC_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1584],0,0,-1)
    {
    Name = "SHC_3"
    }
   -Wire-([4914,1584],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4878,1440],0,115643736,370)
    {
    Name = "SHC_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1440],0,0,-1)
    {
    Name = "SHC_2"
    }
   -Wire-([4914,1440],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4878,1332],0,115644552,340)
    {
    Name = "SHC_1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1332],0,0,-1)
    {
    Name = "SHC_1"
    }
   -Wire-([4914,1332],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,1332],0,0,-1)
    {
    Name = "SHC_1_B"
    }
   -Wire-([5094,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1332],0,0,-1)
    {
    Name = "SHC_1_C"
    }
   0.datalabel([5274,1332],0,0,-1)
    {
    Name = "SHC_1_A"
    }
   -Wire-([5058,1512],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.flip_flop([5058,1350],0,0,640)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.zerodetect([4968,1512],0,0,390)
    {
    INTR = "0"
    }
   -Wire-([4896,1512],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,1440],0,0,-1)
    {
    Name = "SHC_2_B"
    }
   -Wire-([5094,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1440],0,0,-1)
    {
    Name = "SHC_2_C"
    }
   0.datalabel([5274,1440],0,0,-1)
    {
    Name = "SHC_2_A"
    }
   0.flip_flop([5058,1458],0,0,670)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([5058,1404],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([5004,1404],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([4950,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4950,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,1332],0,0,1120)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5346,1440],0,0,1110)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1332],0,0,1340)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1440],0,0,1320)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   0.datalabel([4896,1512],0,0,-1)
    {
    Name = "Uf_Hu_a"
    }
   0.datalabel([5598,1584],0,0,-1)
    {
    Name = "SHC_3_B"
    }
   -Wire-([5094,1584],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1584],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1584],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1584],0,0,-1)
    {
    Name = "SHC_3_C"
    }
   0.datalabel([5274,1584],0,0,-1)
    {
    Name = "SHC_3_A"
    }
   0.flip_flop([5058,1602],0,0,420)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,1584],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,1584],0,0,710)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1584],0,0,1300)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5004,1512],0,0,-1)
    {
    Vertex="0,0;0,144;36,144"
    }
   -Wire-([5040,1656],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([5202,1170],0,115653528,290)
    {
    Name = "tdelay_AC4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,1170],0,0,-1)
    {
    Name = "tdelay_AC4"
    }
   0.var([5202,1206],0,115654344,310)
    {
    Name = "tdelay_CB4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.00333"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,1206],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,1206],0,0,-1)
    {
    Name = "tdelay_CB4"
    }
   0.var([5202,1242],0,115655160,320)
    {
    Name = "tdelay_Miss4"
    Group = ""
    Display = "0"
    Max = "0.01"
    Min = "0.0"
    Value = "0.0"
    Units = "sec"
    Collect = "1"
    }
   -Wire-([5238,1242],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5310,1242],0,0,-1)
    {
    Name = "tdelay_Miss4"
    }
   0.bin_delay([5202,1332],0,0,1010)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5202,1440],0,0,1020)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5202,1584],0,0,700)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5238,1440],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5238,1584],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Sticky-([4896,1134],0)
    {
    Name = ""
    Font = 1
    Bounds = 4896,1134,5166,1260
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Breaker operating mechanism for SHC:

Synchronized to close at voltage zero.

Phase A is reference.
Phase B is closed 120 degr after = 6.666 msec.
Phase C is closed 60 degr after = 3.333 msec."
    }
   -ControlPanel-([5382,1152],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 5382,1152
    Extents = 0,0,252,126
    Slider(115653528)
    Slider(115654344)
    Slider(115655160)
    }
   0.var_switch([4878,1710],0,115657200,450)
    {
    Name = "SHC_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1710],0,0,-1)
    {
    Name = "SHC_4"
    }
   -Wire-([4914,1710],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,1710],0,0,-1)
    {
    Name = "SHC_4_B"
    }
   -Wire-([5094,1710],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1710],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1710],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1710],0,0,-1)
    {
    Name = "SHC_4_C"
    }
   0.datalabel([5274,1710],0,0,-1)
    {
    Name = "SHC_4_A"
    }
   0.flip_flop([5058,1728],0,0,460)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,1710],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,1710],0,0,750)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1710],0,0,1280)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,1782],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,1710],0,0,740)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,1710],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,1782],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([4878,1836],0,115660872,490)
    {
    Name = "SHC_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1836],0,0,-1)
    {
    Name = "SHC_5"
    }
   -Wire-([4914,1836],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,1836],0,0,-1)
    {
    Name = "SHC_5_B"
    }
   -Wire-([5094,1836],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1836],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1836],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1836],0,0,-1)
    {
    Name = "SHC_5_C"
    }
   0.datalabel([5274,1836],0,0,-1)
    {
    Name = "SHC_5_A"
    }
   0.flip_flop([5058,1854],0,0,500)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,1836],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,1836],0,0,790)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1836],0,0,1260)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,1908],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,1836],0,0,780)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,1836],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,1908],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.annotation([612,1098],0,0,-1)
    {
    AL1 = "HP 11/13"
    AL2 = "5*240 Mvar"
    }
   0.breaker3([414,1278],3,0,1570)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_1_A"
    NAMEB = "HP1113_1_B"
    NAMEC = "HP1113_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([558,1278],3,0,1560)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_2_A"
    NAMEB = "HP1113_2_B"
    NAMEC = "HP1113_2_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([702,1278],3,0,1550)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_3_A"
    NAMEB = "HP1113_3_B"
    NAMEC = "HP1113_3_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([846,1278],3,0,1540)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP1113_4_A"
    NAMEB = "HP1113_4_B"
    NAMEC = "HP1113_4_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ground([468,1548],1,0,-1)
    {
    }
   0.capacitor([414,1314],1,0,-1)
    {
    C = "1.279 [uF]"
    }
   0.inductor([414,1422],5,0,-1)
    {
    L = "0.053922 [H]"
    }
   0.resistor([504,1386],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([468,1476],1,0,-1)
    {
    C = "48.2 [uF]"
    }
   0.inductor([414,1512],5,0,-1)
    {
    L = "0.001510 [H]"
    }
   -Wire-([414,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([504,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([414,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([414,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([414,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([468,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([1908,1278],3,0,1480)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP2436_5_A"
    NAMEB = "HP2436_5_B"
    NAMEC = "HP2436_5_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3456,1242],3,0,1360)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_7_A"
    NAMEB = "SHC_7_B"
    NAMEC = "SHC_7_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.breaker3([3384,1242],3,0,1370)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "SHC_6_A"
    NAMEB = "SHC_6_B"
    NAMEC = "SHC_6_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ground([1386,1548],1,0,-1)
    {
    }
   0.capacitor([1332,1314],1,0,-1)
    {
    C = "1.287 [uF]"
    }
   0.inductor([1332,1422],5,0,-1)
    {
    L = "0.009117 [H]"
    }
   0.resistor([1422,1386],1,0,-1)
    {
    R = "500 [ohm]"
    }
   0.capacitor([1386,1476],1,0,-1)
    {
    C = "7.717 [uF]"
    }
   0.inductor([1332,1512],5,0,-1)
    {
    L = "0.001519 [H]"
    }
   -Wire-([1332,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1332,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1422,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1332,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1332,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1332,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1386,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2268,1584],1,0,-1)
    {
    }
   0.capacitor([2232,1350],1,0,-1)
    {
    C = "1.2885 [uF]"
    }
   0.inductor([2232,1476],5,0,-1)
    {
    L = "0.98295 [H]"
    }
   0.resistor([2304,1476],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([2232,1512],1,0,-1)
    {
    C = "10.3079 [uF]"
    }
   -Wire-([2232,1386],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2232,1404],0,0,-1)
    {
    Vertex="0,0;72,0;72,72"
    }
   -Wire-([2304,1512],0,0,-1)
    {
    Vertex="0,0;0,72;-72,72"
    }
   -Wire-([2232,1548],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2232,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2232,1224],0,0,-1)
    {
    Vertex="0,0;504,0"
    }
   -Wire-([2232,1332],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2232,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([2358,1296],3,0,1460)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2358,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([2484,1296],3,0,1450)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2484,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([2610,1296],3,0,1420)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2610,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.breaker3([2736,1296],3,0,1390)
    {
    Ctrl = "1"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "1"
    ViewB = "1"
    DisPQ = "0"
    NAME = "Z1P1"
    NAMEA = "HP3_1_A"
    NAMEB = "HP3_1_B"
    NAMEC = "HP3_1_C"
    ROFF = "1.0E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [sec]"
    TDB = "0.0 [sec]"
    TDC = "0.0 [sec]"
    TDRA = "0.05 [sec]"
    TDRB = "0.05 [sec]"
    TDRC = "0.05 [sec]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   -Wire-([2736,1224],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([5598,1962],0,0,-1)
    {
    Name = "SHC_6_B"
    }
   -Wire-([5094,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,1962],0,0,-1)
    {
    Name = "SHC_6_C"
    }
   0.datalabel([5274,1962],0,0,-1)
    {
    Name = "SHC_6_A"
    }
   0.flip_flop([5058,1980],0,0,520)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5346,1962],0,0,810)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,1962],0,0,1250)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,1962],0,0,800)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5598,2088],0,0,-1)
    {
    Name = "SHC_7_B"
    }
   -Wire-([5094,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,2088],0,0,-1)
    {
    Name = "SHC_7_C"
    }
   0.datalabel([5274,2088],0,0,-1)
    {
    Name = "SHC_7_A"
    }
   0.flip_flop([5058,2106],0,0,540)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   0.bin_delay([5346,2088],0,0,830)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC4"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,2088],0,0,1240)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,2160],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,2088],0,0,820)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss4"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,2034],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([5040,2160],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([4878,1962],0,115682088,510)
    {
    Name = "SHC_6"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,1962],0,0,-1)
    {
    Name = "SHC_6"
    }
   -Wire-([4914,1962],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4950,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([4878,2088],0,115682904,530)
    {
    Name = "SHC_7"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,2088],0,0,-1)
    {
    Name = "SHC_7"
    }
   -Wire-([4914,2088],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4950,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3906,738],0,115683720,220)
    {
    Name = "BP1113_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,738],0,0,-1)
    {
    Name = "HP1113_5"
    }
   -Wire-([3942,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,738],0,0,-1)
    {
    Name = "HP1113_5_B"
    }
   -Wire-([4122,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,738],0,0,-1)
    {
    Name = "HP1113_5_C"
    }
   0.datalabel([4302,738],0,0,-1)
    {
    Name = "HP1113_5_A"
    }
   0.flip_flop([4086,756],0,0,610)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,738],0,0,970)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC1"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,738],0,0,1150)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4068,810],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([4230,738],0,0,950)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss1"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,738],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4068,810],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   0.var_switch([3906,1476],0,115687392,350)
    {
    Name = "HP3_2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,1476],0,0,-1)
    {
    Name = "HP3_2"
    }
   -Wire-([3942,1476],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,1476],0,0,-1)
    {
    Name = "HP3_2_B"
    }
   -Wire-([4122,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,1476],0,0,-1)
    {
    Name = "HP3_2_C"
    }
   0.datalabel([4302,1476],0,0,-1)
    {
    Name = "HP3_2_A"
    }
   0.flip_flop([4086,1494],0,0,360)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,1476],0,0,660)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,1476],0,0,1330)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,1476],0,0,650)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,1476],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3906,1602],0,115691064,380)
    {
    Name = "HP3_3"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,1602],0,0,-1)
    {
    Name = "HP3_3"
    }
   -Wire-([3942,1602],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,1602],0,0,-1)
    {
    Name = "HP3_3_B"
    }
   -Wire-([4122,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,1602],0,0,-1)
    {
    Name = "HP3_3_C"
    }
   0.datalabel([4302,1602],0,0,-1)
    {
    Name = "HP3_3_A"
    }
   0.flip_flop([4086,1620],0,0,400)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,1602],0,0,690)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,1602],0,0,1310)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,1602],0,0,680)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,1602],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3906,1728],0,115694736,430)
    {
    Name = "HP3_4"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,1728],0,0,-1)
    {
    Name = "HP3_4"
    }
   -Wire-([3942,1728],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,1728],0,0,-1)
    {
    Name = "HP3_4_B"
    }
   -Wire-([4122,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,1728],0,0,-1)
    {
    Name = "HP3_4_C"
    }
   0.datalabel([4302,1728],0,0,-1)
    {
    Name = "HP3_4_A"
    }
   0.flip_flop([4086,1746],0,0,440)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,1728],0,0,730)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,1728],0,0,1290)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,1728],0,0,720)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,1728],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([3906,1854],0,115698408,470)
    {
    Name = "HP3_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([3978,1854],0,0,-1)
    {
    Name = "HP3_5"
    }
   -Wire-([3942,1854],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4626,1854],0,0,-1)
    {
    Name = "HP3_5_B"
    }
   -Wire-([4122,1854],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4554,1854],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4410,1854],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4446,1854],0,0,-1)
    {
    Name = "HP3_5_C"
    }
   0.datalabel([4302,1854],0,0,-1)
    {
    Name = "HP3_5_A"
    }
   0.flip_flop([4086,1872],0,0,480)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([3978,1854],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([4374,1854],0,0,770)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4518,1854],0,0,1270)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB3"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([4230,1854],0,0,760)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss3"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([4266,1854],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([4878,756],0,115702080,250)
    {
    Name = "HP2436_5"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "IN"
    Toff = "OUT"
    }
   0.datalabel([4950,756],0,0,-1)
    {
    Name = "HP2436_5"
    }
   -Wire-([4914,756],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5598,756],0,0,-1)
    {
    Name = "HP2436_5_B"
    }
   -Wire-([5094,756],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5382,756],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5526,756],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5418,756],0,0,-1)
    {
    Name = "HP2436_5_C"
    }
   0.datalabel([5274,756],0,0,-1)
    {
    Name = "HP2436_5_A"
    }
   0.flip_flop([5058,774],0,0,620)
    {
    Type = "2"
    QInit = "1"
    Clock = "1"
    INTR = "0"
    }
   -Wire-([4950,756],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.bin_delay([5346,756],0,0,990)
    {
    T = "0.0 [s]"
    Toff = "tdelay_AC2"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([5490,756],0,0,1140)
    {
    T = "0.0 [s]"
    Toff = "tdelay_CB2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5040,828],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([5202,756],0,0,980)
    {
    T = "0.0 [s]"
    Toff = "tdelay_Miss2"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([5238,756],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,828],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-126"
    }
   -Wire-([4086,1548],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-144"
    }
   -Wire-([4086,1674],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-126"
    }
   -Wire-([4086,1800],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-126"
    }
   -Wire-([4086,1926],0,0,-1)
    {
    Vertex="0,0;-54,0;-54,-126"
    }
   0.ground([612,1548],1,0,-1)
    {
    }
   0.capacitor([558,1314],1,0,-1)
    {
    C = "1.279 [uF]"
    }
   0.inductor([558,1422],5,0,-1)
    {
    L = "0.053922 [H]"
    }
   0.resistor([648,1386],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([612,1476],1,0,-1)
    {
    C = "48.2 [uF]"
    }
   0.inductor([558,1512],5,0,-1)
    {
    L = "0.001510 [H]"
    }
   -Wire-([558,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([558,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([648,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([558,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([558,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([558,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([612,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([756,1548],1,0,-1)
    {
    }
   0.capacitor([702,1314],1,0,-1)
    {
    C = "1.279 [uF]"
    }
   0.inductor([702,1422],5,0,-1)
    {
    L = "0.053922 [H]"
    }
   0.resistor([792,1386],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([756,1476],1,0,-1)
    {
    C = "48.2 [uF]"
    }
   0.inductor([702,1512],5,0,-1)
    {
    L = "0.001510 [H]"
    }
   -Wire-([702,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([702,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([792,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([702,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([702,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([702,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([756,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([900,1548],1,0,-1)
    {
    }
   0.capacitor([846,1314],1,0,-1)
    {
    C = "1.279 [uF]"
    }
   0.inductor([846,1422],5,0,-1)
    {
    L = "0.053922 [H]"
    }
   0.resistor([936,1386],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([900,1476],1,0,-1)
    {
    C = "48.2 [uF]"
    }
   0.inductor([846,1512],5,0,-1)
    {
    L = "0.001510 [H]"
    }
   -Wire-([846,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([846,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([936,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([846,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([846,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([846,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([900,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1044,1548],1,0,-1)
    {
    }
   0.capacitor([990,1314],1,0,-1)
    {
    C = "1.279 [uF]"
    }
   0.inductor([990,1422],5,0,-1)
    {
    L = "0.053922 [H]"
    }
   0.resistor([1080,1386],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([1044,1476],1,0,-1)
    {
    C = "48.2 [uF]"
    }
   0.inductor([990,1512],5,0,-1)
    {
    L = "0.001510 [H]"
    }
   -Wire-([990,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([990,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1080,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([990,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([990,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([990,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1044,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2394,1584],1,0,-1)
    {
    }
   0.capacitor([2358,1350],1,0,-1)
    {
    C = "1.2885 [uF]"
    }
   0.inductor([2358,1476],5,0,-1)
    {
    L = "0.98295 [H]"
    }
   0.resistor([2430,1476],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([2358,1512],1,0,-1)
    {
    C = "10.3079 [uF]"
    }
   -Wire-([2358,1386],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2358,1404],0,0,-1)
    {
    Vertex="0,0;72,0;72,72"
    }
   -Wire-([2430,1512],0,0,-1)
    {
    Vertex="0,0;0,72;-72,72"
    }
   -Wire-([2358,1548],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2358,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2358,1332],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([2520,1584],1,0,-1)
    {
    }
   0.capacitor([2484,1350],1,0,-1)
    {
    C = "1.2885 [uF]"
    }
   0.inductor([2484,1476],5,0,-1)
    {
    L = "0.98295 [H]"
    }
   0.resistor([2556,1476],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([2484,1512],1,0,-1)
    {
    C = "10.3079 [uF]"
    }
   -Wire-([2484,1386],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2484,1404],0,0,-1)
    {
    Vertex="0,0;72,0;72,72"
    }
   -Wire-([2556,1512],0,0,-1)
    {
    Vertex="0,0;0,72;-72,72"
    }
   -Wire-([2484,1548],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2484,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2484,1332],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([2646,1584],1,0,-1)
    {
    }
   0.capacitor([2610,1350],1,0,-1)
    {
    C = "1.2885 [uF]"
    }
   0.inductor([2610,1476],5,0,-1)
    {
    L = "0.98295 [H]"
    }
   0.resistor([2682,1476],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([2610,1512],1,0,-1)
    {
    C = "10.3079 [uF]"
    }
   -Wire-([2610,1386],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2610,1404],0,0,-1)
    {
    Vertex="0,0;72,0;72,72"
    }
   -Wire-([2682,1512],0,0,-1)
    {
    Vertex="0,0;0,72;-72,72"
    }
   -Wire-([2610,1548],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2610,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2610,1332],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([2772,1584],1,0,-1)
    {
    }
   0.capacitor([2736,1350],1,0,-1)
    {
    C = "1.2885 [uF]"
    }
   0.inductor([2736,1476],5,0,-1)
    {
    L = "0.98295 [H]"
    }
   0.resistor([2808,1476],1,0,-1)
    {
    R = "1000 [ohm]"
    }
   0.capacitor([2736,1512],1,0,-1)
    {
    C = "10.3079 [uF]"
    }
   -Wire-([2736,1386],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2736,1404],0,0,-1)
    {
    Vertex="0,0;72,0;72,72"
    }
   -Wire-([2808,1512],0,0,-1)
    {
    Vertex="0,0;0,72;-72,72"
    }
   -Wire-([2736,1548],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2736,1476],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2736,1332],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.capacitor([3096,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3096,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3096,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3096,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3096,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3096,1566],1,0,-1)
    {
    }
   0.capacitor([3168,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3168,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3168,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3168,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3168,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3168,1566],1,0,-1)
    {
    }
   0.capacitor([3240,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3240,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3240,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3240,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3240,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3240,1566],1,0,-1)
    {
    }
   0.capacitor([3312,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3312,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3312,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3312,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3312,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3312,1566],1,0,-1)
    {
    }
   0.capacitor([3384,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3384,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3384,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3384,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3384,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3384,1566],1,0,-1)
    {
    }
   0.capacitor([3456,1332],1,0,-1)
    {
    C = "1.2892 [uF]"
    }
   0.inductor([3456,1476],1,0,-1)
    {
    L = "0.002 [H]"
    }
   -Wire-([3456,1332],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3456,1368],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([3456,1512],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([3456,1566],1,0,-1)
    {
    }
   0.ground([1530,1548],1,0,-1)
    {
    }
   0.capacitor([1476,1314],1,0,-1)
    {
    C = "1.287 [uF]"
    }
   0.inductor([1476,1422],5,0,-1)
    {
    L = "0.009117 [H]"
    }
   0.resistor([1566,1386],1,0,-1)
    {
    R = "500 [ohm]"
    }
   0.capacitor([1530,1476],1,0,-1)
    {
    C = "7.717 [uF]"
    }
   0.inductor([1476,1512],5,0,-1)
    {
    L = "0.001519 [H]"
    }
   -Wire-([1476,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1476,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1566,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1476,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1476,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1476,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1530,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1674,1548],1,0,-1)
    {
    }
   0.capacitor([1620,1314],1,0,-1)
    {
    C = "1.287 [uF]"
    }
   0.inductor([1620,1422],5,0,-1)
    {
    L = "0.009117 [H]"
    }
   0.resistor([1710,1386],1,0,-1)
    {
    R = "500 [ohm]"
    }
   0.capacitor([1674,1476],1,0,-1)
    {
    C = "7.717 [uF]"
    }
   0.inductor([1620,1512],5,0,-1)
    {
    L = "0.001519 [H]"
    }
   -Wire-([1620,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1620,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1710,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1620,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1620,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1620,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1674,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1818,1548],1,0,-1)
    {
    }
   0.capacitor([1764,1314],1,0,-1)
    {
    C = "1.287 [uF]"
    }
   0.inductor([1764,1422],5,0,-1)
    {
    L = "0.009117 [H]"
    }
   0.resistor([1854,1386],1,0,-1)
    {
    R = "500 [ohm]"
    }
   0.capacitor([1818,1476],1,0,-1)
    {
    C = "7.717 [uF]"
    }
   0.inductor([1764,1512],5,0,-1)
    {
    L = "0.001519 [H]"
    }
   -Wire-([1764,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1764,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1854,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1764,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1764,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1764,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1818,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([1962,1548],1,0,-1)
    {
    }
   0.capacitor([1908,1314],1,0,-1)
    {
    C = "1.287 [uF]"
    }
   0.inductor([1908,1422],5,0,-1)
    {
    L = "0.009117 [H]"
    }
   0.resistor([1998,1386],1,0,-1)
    {
    R = "500 [ohm]"
    }
   0.capacitor([1962,1476],1,0,-1)
    {
    C = "7.717 [uF]"
    }
   0.inductor([1908,1512],5,0,-1)
    {
    L = "0.001519 [H]"
    }
   -Wire-([1908,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1908,1368],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1998,1422],0,0,-1)
    {
    Vertex="0,0;0,126;-90,126"
    }
   -Wire-([1908,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1908,1422],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1908,1440],0,0,-1)
    {
    Vertex="0,0;54,0;54,36"
    }
   -Wire-([1962,1512],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   }
  }
 Module("Untitled_4")
  {
  Desc = ""
  FileDate = 1398154457
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"plot2")
   }


  Page(C/A2,Landscape,16,[651,363],5)
   {
   -Sticky-([252,18],0)
    {
    Name = ""
    Font = 1
    Bounds = 252,18,360,54
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "������ ��1 YY�� ��ѹ��"
    }
   -Sticky-([234,702],0)
    {
    Name = ""
    Font = 1
    Bounds = 234,702,342,738
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "������ ��2 yy��  ��ѹ��"
    }
   -Plot-([18,738],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [18,738]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(114127680,"UyytransvalveA2",0,,,)
     Curve(114128496,"UyytransvalveB2",0,,,)
     Curve(114129312,"UyytransvalveC2",0,,,)
     }
    }
   -Sticky-([864,18],0)
    {
    Name = ""
    Font = 1
    Bounds = 864,18,972,54
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "YY�����Ե㵽1100kVĸ��"
    }
   -Sticky-([1458,18],0)
    {
    Name = ""
    Font = 1
    Bounds = 1458,18,1566,54
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "Y��ѹ���׹ܶԦ���ѹ���׹�"
    }
   -Sticky-([2070,18],0)
    {
    Name = ""
    Font = 1
    Bounds = 2070,18,2178,54
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "1100kVֱ�����߶Ե�"
    }
   -Sticky-([2700,18],0)
    {
    Name = ""
    Font = 1
    Bounds = 2700,18,2808,54
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "6�������е㵽��"
    }
   -Sticky-([864,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 864,360,972,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "YY�����Ե㵽��"
    }
   -Sticky-([2070,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 2070,360,2178,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "1100kVĸ�߶�Y��ѹ���׹�"
    }
   -Sticky-([1458,702],0)
    {
    Name = ""
    Font = 1
    Bounds = 1458,702,1566,738
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "�ߵ�ѹ����֮��"
    }
   -Sticky-([252,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 252,360,360,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "������ ��1 Yd�� ��ѹ��"
    }
   -Sticky-([252,1044],0)
    {
    Name = ""
    Font = 1
    Bounds = 252,1044,360,1080
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "������ ��2 yd��  ��ѹ��"
    }
   -Plot-([18,1080],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [18,1080]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(114130128,"UydtransvalveA2",0,,,)
     Curve(114130944,"UydtransvalveB2",0,,,)
     Curve(114131760,"UydtransvalveC2",0,,,)
     }
    }
   -Sticky-([864,702],0)
    {
    Name = ""
    Font = 1
    Bounds = 864,702,972,738
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "����ѹ���׹�-ֱ��������"
    }
   -Plot-([1224,396],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [1224,396]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98693928,"UvalvemidYytrans",0,,,)
     }
    }
   -Sticky-([1440,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 1440,360,1548,396
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "Y��ѹ���׹�-6�������е㼫��"
    }
   -Plot-([630,738],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [630,738]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98692704,"UmidYdTrans",0,,,)
     }
    }
   -Plot-([1854,720],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,1278,702]
    Posn = [1854,720]
    Icon = [-1,-1]
    Extents = 0,0,1278,702
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,1278,639],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98591520,"UMH",0,,,)
     Curve(98691480,"UdyyTransvalveA",0,,,)
     Curve(98610288,"Ud",0,,,)
     Curve(98690256,"UyyydH",0,,,)
     Curve(98693928,"UvalvemidYytrans",0,,,)
     Curve(98600088,"Uconverter",0,,,)
     Curve(98689032,"UdyyTransMid",0,,,)
     Curve(98608656,"Uyytransmid",0,,,)
     Curve(98692704,"UmidYdTrans",0,,,)
     }
    }
   -Plot-([18,396],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [18,396]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98605800,"UydtransvalveA",0,,,)
     Curve(98606616,"UydtransvalveB",0,,,)
     Curve(98607432,"UydtransvalveC",0,,,)
     }
    }
   -Plot-([630,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [630,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98689032,"UdyyTransMid",0,,,)
     }
    }
   -Plot-([1836,396],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [1836,396]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98691480,"UdyyTransvalveA",0,,,)
     }
    }
   -Plot-([630,396],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [630,396]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98608656,"Uyytransmid",0,,,)
     }
    }
   -Plot-([1224,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [1224,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98690256,"UyyydH",0,,,)
     }
    }
   -Plot-([1836,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [1836,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98610288,"Ud",0,,,)
     Curve(97989864,"Ud_Fu_P1",0,,-2,)
     Curve(136842792,"Ud_Fe_P1",0,,-2,)
     }
    }
   -Plot-([18,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [18,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98603352,"UyytransvalveA",0,,,)
     Curve(98604168,"UyytransvalveB",0,,,)
     Curve(98604984,"UyytransvalveC",0,,,)
     }
    }
   -Plot-([2466,54],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [2466,54]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98591520,"UMH",0,,,)
     }
    }
   -Plot-([1224,738],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [1224,738]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = "T(s)"
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"U(kV)")
     {
     Options = 1
     Units = ""
     Curve(98600088,"Uconverter",0,,,)
     }
    }
   }
  }
 Module("plot")
  {
  Desc = ""
  FileDate = 1398154457
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,0,"plot")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   -Plot-([36,414],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [36,414]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(98644560,"ES1P1V31",0,,,)
     Curve(98645376,"ES1P1V33",0,,,)
     Curve(98646192,"ES1P1V35",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(98647008,"IS1P1V31",0,,,)
     Curve(98647824,"IS1P1V33",0,,,)
     Curve(98648640,"IS1P1V35",0,,,)
     }
    }
   -Plot-([1962,828],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [1962,828]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82138344,"ES2AA",0,,,)
     Curve(82139160,"ES2AB",0,,,)
     Curve(82139976,"ES2AC",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82140792,"IS2AA",0,,,)
     Curve(82141608,"IS2AB",0,,,)
     Curve(82142424,"IS2AC",0,,,)
     }
    }
   -Plot-([2574,846],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [2574,846]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82133448,"ES2P1CBL",0,,,)
     Curve(82135080,"ES2P1ML",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82134264,"IS2P1CBL",0,,,)
     Curve(82135896,"IS2P1ML",0,,,)
     }
    }
   -Plot-([2574,414],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [2574,414]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(75107008,"ES2P1CBH",0,,,)
     Curve(75111952,"ES2P1MH",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(75109480,"IS2P1CBH",0,,,)
     Curve(75114544,"IS2P1MH",0,,,)
     }
    }
   -Plot-([2574,0],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [2574,0]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82143240,"ES2P1DB1",0,,,)
     Curve(82144056,"ES2P1DB2",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82144872,"IS2P1DB1",0,,,)
     Curve(82145688,"IS2P1DB2",0,,,)
     }
    }
   -Plot-([648,1278],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,630]
    Posn = [648,1278]
    Icon = [-1,-1]
    Extents = 0,0,576,630
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98659248,"ES1P1CBL",0,,,)
     Curve(98660880,"ES1P1ML",0,,,)
     }
    Graph([0,189],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98660064,"IS1P1CBL",0,,,)
     Curve(98661696,"IS1P1ML",0,,,)
     }
    Graph([0,378],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98612328,"U_mid",0,,,)
     Curve(98622120,"UML",0,,,)
     }
    }
   -Plot-([648,630],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,630]
    Posn = [648,630]
    Icon = [-1,-1]
    Extents = 0,0,576,630
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98657616,"ES1P1CBH",0,,,)
     Curve(78564952,"ES1P1MH",0,,,)
     }
    Graph([0,189],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98658432,"IS1P1CBH",0,,,)
     Curve(78567408,"IS1P1MH",0,,,)
     }
    Graph([0,378],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(98610288,"Ud",0,,,)
     Curve(98591520,"UMH",0,,,)
     }
    }
   -Plot-([648,0],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,594]
    Posn = [648,0]
    Icon = [-1,-1]
    Extents = 0,0,576,594
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,177],"y")
     {
     Options = 1
     Units = ""
     Curve(98654352,"ES1P1DB1",0,,,)
     Curve(98655168,"ES1P1DB2",0,,,)
     }
    Graph([0,177],[0,0,576,177],"y")
     {
     Options = 1
     Units = ""
     Curve(98655984,"IS1P1DB1",0,,,)
     Curve(98656800,"IS1P1DB2",0,,,)
     }
    Graph([0,354],[0,0,576,177],"y")
     {
     Options = 1
     Units = ""
     Curve(97989864,"Ud_Fu_P1",0,,,)
     }
    }
   -Plot-([3168,1260],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [3168,1260]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82146504,"ES2P1CBN1",0,,,)
     Curve(82148136,"ES2P1E",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82147320,"IS2P1CBN1",0,,,)
     Curve(82148952,"IS2P1E",0,,,)
     }
    }
   -Plot-([3168,630],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,630]
    Posn = [3168,630]
    Icon = [-1,-1]
    Extents = 0,0,576,630
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(104404864,"ES2EL",0,,,)
     Curve(104406496,"ES2EM",0,,,)
     }
    Graph([0,189],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(104405680,"IS2EL",0,,,)
     Curve(104407312,"IS2EM",0,,,)
     }
    Graph([0,378],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(104408128,"US2EL",0,,,)
     Curve(104408944,"US2EM",0,,,)
     }
    }
   -Plot-([1962,0],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [1962,0]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82128552,"ES2P1V11",0,,,)
     Curve(82129368,"ES2P1V13",0,,,)
     Curve(82130184,"ES2P1V15",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82131000,"IS2P1V11",0,,,)
     Curve(82131816,"IS2P1V13",0,,,)
     Curve(82132632,"IS2P1V15",0,,,)
     }
    }
   -Plot-([1962,414],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [1962,414]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(82123656,"ES2P1V31",0,,,)
     Curve(82124472,"ES2P1V33",0,,,)
     Curve(82125288,"ES2P1V35",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(82126104,"IS2P1V31",0,,,)
     Curve(82126920,"IS2P1V33",0,,,)
     Curve(82127736,"IS2P1V35",0,,,)
     }
    }
   -Plot-([1242,0],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,594,594]
    Posn = [1242,0]
    Icon = [-1,-1]
    Extents = 0,0,594,594
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,594,177],"y")
     {
     Options = 1
     Units = ""
     Curve(98662512,"ES1P1CBN2",0,,,)
     }
    Graph([0,177],[0,0,594,177],"y")
     {
     Options = 1
     Units = ""
     Curve(98663328,"IS1P1CBN2",0,,,)
     }
    Graph([0,354],[0,0,594,177],"y")
     {
     Options = 1
     Units = ""
     Curve(98611104,"Udn",0,,,)
     }
    }
   -Plot-([1242,612],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,594,648]
    Posn = [1242,612]
    Icon = [-1,-1]
    Extents = 0,0,594,648
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,594,195],"y")
     {
     Options = 1
     Units = ""
     Curve(104398336,"ES1EL",0,,,)
     Curve(104399968,"ES1EM",0,,,)
     }
    Graph([0,195],[0,0,594,195],"y")
     {
     Options = 1
     Units = ""
     Curve(104399152,"IS1EL",0,,,)
     Curve(104400784,"IS1EM",0,,,)
     }
    Graph([0,390],[0,0,594,195],"y")
     {
     Options = 1
     Units = ""
     Curve(104402416,"US1EL",0,,,)
     Curve(104403232,"US1EM",0,,,)
     }
    }
   -Plot-([1242,1260],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,594,414]
    Posn = [1242,1260]
    Icon = [-1,-1]
    Extents = 0,0,594,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,594,176],"y")
     {
     Options = 1
     Units = ""
     Curve(98669040,"ES1P1CBN1",0,,,)
     Curve(98670672,"ES1P1E",0,,,)
     }
    Graph([0,176],[0,0,594,175],"y")
     {
     Options = 1
     Units = ""
     Curve(98669856,"IS1P1CBN1",0,,,)
     Curve(98671488,"IS1P1E",0,,,)
     }
    }
   -Plot-([36,18],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,396]
    Posn = [36,18]
    Icon = [-1,-1]
    Extents = 0,0,576,396
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,167],"y")
     {
     Options = 1
     Units = ""
     Curve(98649456,"ES1P1V11",0,,,)
     Curve(98650272,"ES1P1V13",0,,,)
     Curve(98651088,"ES1P1V15",0,,,)
     }
    Graph([0,167],[0,0,576,166],"y")
     {
     Options = 1
     Units = ""
     Curve(98651904,"IS1P1V11",0,,,)
     Curve(98652720,"IS1P1V13",0,,,)
     Curve(98653536,"IS1P1V15",0,,,)
     }
    }
   -Plot-([3168,0],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,630]
    Posn = [3168,0]
    Icon = [-1,-1]
    Extents = 0,0,576,630
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(82136712,"ES2P1CBN2",0,,,)
     }
    Graph([0,189],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(82137528,"IS2P1CBN2",0,,,)
     }
    Graph([0,378],[0,0,576,189],"y")
     {
     Options = 1
     Units = ""
     Curve(82150176,"US2P1CBN2",0,,,)
     }
    }
   -Plot-([36,828],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,576,414]
    Posn = [36,828]
    Icon = [-1,-1]
    Extents = 0,0,576,414
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,176],"y")
     {
     Options = 1
     Units = ""
     Curve(98664144,"ES1P1AA",0,,,)
     Curve(98664960,"ES1P1AB",0,,,)
     Curve(98665776,"ES1P1AC",0,,,)
     }
    Graph([0,176],[0,0,576,175],"y")
     {
     Options = 1
     Units = ""
     Curve(98666592,"IS1P1AA",0,,,)
     Curve(98667408,"IS1P1AB",0,,,)
     Curve(98668224,"IS1P1AC",0,,,)
     }
    }
   }
  }
 Module("DCTFR1")
  {
  Desc = ""
  FileDate = 1398154457
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-45,-42,81,70)
   Font(,Large)
   Text(17,6,"Runtime")
   Font(,Medium)
   Text(16,32,"XS800")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   -Plot-([1044,1548],0)
    {
    Title = "Firing Angles - Fulong"
    Draw = 1
    Area = [0,0,792,1278]
    Posn = [1044,1548]
    Icon = [-1,-1]
    Extents = 0,0,792,1278
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,405],"y")
     {
     Options = 1
     Units = ""
     Curve(98120016,"Alpha_Meas_Fu_P1_B1",0,,,)
     Curve(98123280,"Alpha_Meas_Fu_P1_B2",0,,,)
     Curve(116092416,"Alpha_Meas_Fu_P2_B1",0,,,)
     Curve(116094048,"Alpha_Meas_Fu_P2_B2",0,,,)
     }
    Graph([0,405],[0,0,792,405],"y")
     {
     Options = 1
     Units = ""
     Curve(98120424,"Overlap_Fu_P1_B1",0,,,)
     Curve(98123688,"Overlap_Fu_P1_B2",0,,,)
     Curve(116092824,"Overlap_Fu_P2_B1",0,,,)
     Curve(116094456,"Overlap_Fu_P2_B2",0,,,)
     }
    Graph([0,810],[0,0,792,405],"y")
     {
     Options = 1
     Units = ""
     Curve(98120832,"Gamma_Fu_P1_B1",0,,,)
     Curve(98124096,"Gamma_Fu_P1_B2",0,,,)
     Curve(116093232,"Gamma_Fu_P2_B1",0,,,)
     Curve(116094864,"Gamma_Fu_P2_B2",0,,,)
     }
    }
   -Plot-([1836,1548],0)
    {
    Title = "Firing Angles - Fengxian"
    Draw = 1
    Area = [0,0,792,1278]
    Posn = [1836,1548]
    Icon = [-1,-1]
    Extents = 0,0,792,1278
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,304],"y")
     {
     Options = 1
     Units = ""
     Curve(136933368,"Alpha_Ord_Fe_P1_B1",0,,,)
     Curve(136935000,"Alpha_Ord_Fe_P1_B2",0,,,)
     Curve(115068728,"Alpha_Ord_Fe_P2_B1",0,,,)
     Curve(115070360,"Alpha_Ord_Fe_P2_B2",0,,,)
     }
    Graph([0,304],[0,0,792,304],"y")
     {
     Options = 1
     Units = ""
     Curve(136933776,"Alpha_Meas_Fe_P1_B1",0,,,)
     Curve(136935408,"Alpha_Meas_Fe_P1_B2",0,,,)
     Curve(115069136,"Alpha_Meas_Fe_P2_B1",0,,,)
     Curve(115070768,"Alpha_Meas_Fe_P2_B2",0,,,)
     }
    Graph([0,608],[0,0,792,304],"y")
     {
     Options = 1
     Units = ""
     Curve(136934184,"Overlap_Fe_P1_B1",0,,,)
     Curve(136935816,"Overlap_Fe_P1_B2",0,,,)
     Curve(115069544,"Overlap_Fe_P2_B1",0,,,)
     Curve(115071176,"Overlap_Fe_P2_B2",0,,,)
     }
    Graph([0,912],[0,0,792,303],"y")
     {
     Options = 1
     Units = ""
     Curve(136934592,"Gamma_Fe_P1_B1",0,,,)
     Curve(136936224,"Gamma_Fe_P1_B2",0,,-2,)
     Curve(115069952,"Gamma_Fe_P2_B1",0,,-2,)
     Curve(115071584,"Gamma_Fe_P2_B2",0,,-2,)
     }
    }
   -Plot-([1836,126],0)
    {
    Title = "AC Quantities - Fengxian"
    Draw = 1
    Area = [0,0,792,1386]
    Posn = [1836,126]
    Icon = [-1,-1]
    Extents = 0,0,792,1386
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(136837080,"U_Fe_P1_RMS",0,,,)
     Curve(114237024,"U_Fe_P2_RMS",0,,,)
     }
    Graph([0,265],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(136837896,"U_Fe_P1_a",0,,,)
     Curve(136841160,"U_Fe_P1_b",0,,,)
     Curve(136841976,"U_Fe_P1_c",0,,,)
     }
    Graph([0,530],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(114212136,"U_Fe_P2_a",0,,,)
     Curve(114215400,"U_Fe_P2_b",0,,,)
     Curve(114216216,"U_Fe_P2_c",0,,,)
     }
    Graph([0,795],[0,0,792,264],"y")
     {
     Options = 1
     Units = ""
     Curve(82228920,"P_Fe",0,,,)
     }
    Graph([0,1059],[0,0,792,264],"y")
     {
     Options = 1
     Units = ""
     Curve(82229328,"Q_Fe",0,,,)
     }
    }
   -Plot-([1044,126],0)
    {
    Title = "AC Quantities - Fulong"
    Draw = 1
    Area = [0,0,792,1386]
    Posn = [1044,126]
    Icon = [-1,-1]
    Extents = 0,0,792,1386
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(97913160,"U_Fu_P1_RMS",0,,,)
     Curve(115993680,"U_Fu_P2_RMS",0,,,)
     }
    Graph([0,265],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(97913976,"U_Fu_P1_a",0,,,)
     Curve(97917240,"U_Fu_P1_b",0,,,)
     Curve(97918056,"U_Fu_P1_c",0,,,)
     }
    Graph([0,530],[0,0,792,265],"y")
     {
     Options = 1
     Units = ""
     Curve(115994496,"U_Fu_P2_a",0,,,)
     Curve(115997760,"U_Fu_P2_b",0,,,)
     Curve(115998576,"U_Fu_P2_c",0,,,)
     }
    Graph([0,795],[0,0,792,264],"y")
     {
     Options = 1
     Units = ""
     Curve(109377776,"P_Fu",0,,,)
     }
    Graph([0,1059],[0,0,792,264],"y")
     {
     Options = 1
     Units = ""
     Curve(109378184,"Q_Fu",0,,,)
     }
    }
   -Plot-([2700,972],0)
    {
    Title = "DC Quantities - Fulong"
    Draw = 1
    Area = [0,0,792,990]
    Posn = [2700,972]
    Icon = [-1,-1]
    Extents = 0,0,792,990
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     Curve(136842792,"Ud_Fe_P1",0,,,)
     Curve(114217032,"Ud_Fe_P2",0,,,)
     Curve(97989864,"Ud_Fu_P1",0,,,)
     Curve(116003472,"Ud_Fu_P2",0,,,)
     }
    Graph([0,232],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     Curve(97990680,"Idn_Fu_P1",0,,,)
     Curve(116004288,"Idn_Fu_P2",0,,,)
     Curve(136843608,"Idn_Fe_P1",0,1,,)
     Curve(114217848,"Idn_Fe_P2",0,,,)
     }
    Graph([0,464],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     Curve(98089008,"Pd_Fu_P1",0,,,)
     Curve(116089152,"Pd_Fu_P2",0,,,)
     }
    Graph([0,696],[0,0,792,231],"y")
     {
     Options = 1
     Units = ""
     Curve(97992720,"Pd_Fu",0,,,)
     }
    }
   -Plot-([3492,972],0)
    {
    Title = "DC Quantities - Fengxian"
    Draw = 1
    Area = [0,0,792,990]
    Posn = [3492,972]
    Icon = [-1,-1]
    Extents = 0,0,792,990
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     }
    Graph([0,232],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     }
    Graph([0,464],[0,0,792,232],"y")
     {
     Options = 1
     Units = ""
     Curve(136930104,"Pd_Fe_P1",0,,,)
     Curve(115065464,"Pd_Fe_P2",0,,,)
     }
    Graph([0,696],[0,0,792,231],"y")
     {
     Options = 1
     Units = ""
     Curve(136845240,"Pd_Fe",0,,,)
     }
    }
   -Plot-([2664,126],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [2664,126]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(150095096,"Pf_Fu",0,,,)
     Curve(150095504,"Qf_Fu",0,,,)
     }
    }
   -Plot-([3240,414],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [3240,414]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(79085680,"Pf_Ch",0,,,)
     Curve(79086088,"Qf_Ch",0,,,)
     }
    }
   -Plot-([3240,126],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [3240,126]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(115585800,"Pf_Hu",0,,,)
     Curve(115586208,"Qf_Hu",0,,,)
     }
    }
   -Plot-([2664,414],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [2664,414]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(82719664,"Pf_Fe",0,,,)
     Curve(82720072,"Qf_Fe",0,,,)
     }
    }
   }
  }
 Module("Sequences_XS800")
  {
  Desc = ""
  FileDate = 1400042432
  Nodes = 
   {
   }

  Graphics = 
   {
   Rectangle(-140,-36,117,43)
   Font(,Large)
   Text(-14,8,"Sequences")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   0.datalabel([576,1170],6,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   0.logic_mult([756,936],0,0,1170)
    {
    Type = "0"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([684,918],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,954],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,972],6,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   0.datalabel([576,900],6,0,-1)
    {
    Name = "MET_RET_XS800"
    }
   0.inv([648,972],0,0,840)
    {
    INTR = "0"
    }
   -Wire-([612,1170],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,936],6,0,-1)
    {
    Name = "POLE_XS800"
    }
   -Wire-([612,936],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([612,900],0,0,-1)
    {
    Vertex="0,0;72,0;72,18"
    }
   -Wire-([684,972],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.logic_mult([756,1062],0,0,1290)
    {
    Type = "0"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([684,1044],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1080],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1098],6,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   0.datalabel([576,1026],6,0,-1)
    {
    Name = "MET_RET_XS800"
    }
   0.inv([648,1098],0,0,860)
    {
    INTR = "0"
    }
   -Wire-([576,1098],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1062],6,0,-1)
    {
    Name = "POLE_XS800"
    }
   -Wire-([612,1026],0,0,-1)
    {
    Vertex="0,0;72,0;72,18"
    }
   -Wire-([684,1098],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.inv([648,1062],0,0,850)
    {
    INTR = "0"
    }
   -Wire-([576,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.logic_mult([756,1278],0,0,870)
    {
    Type = "0"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([684,1260],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1296],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1314],6,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   0.datalabel([576,1242],6,0,-1)
    {
    Name = "MET_RET_XS800"
    }
   0.inv([648,1314],0,0,540)
    {
    INTR = "0"
    }
   -Wire-([576,1314],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1278],6,0,-1)
    {
    Name = "POLE_XS800"
    }
   -Wire-([684,1314],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.inv([648,1242],0,0,450)
    {
    INTR = "0"
    }
   -Wire-([576,1278],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1278],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,1242],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1242],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic_mult([756,1404],0,0,990)
    {
    Type = "0"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([684,1386],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1422],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1440],6,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   0.datalabel([576,1368],6,0,-1)
    {
    Name = "MET_RET_XS800"
    }
   0.inv([648,1440],0,0,590)
    {
    INTR = "0"
    }
   -Wire-([576,1440],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([576,1404],6,0,-1)
    {
    Name = "POLE_XS800"
    }
   -Wire-([684,1440],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.inv([648,1368],0,0,580)
    {
    INTR = "0"
    }
   -Wire-([576,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1368],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.inv([648,1278],0,0,490)
    {
    INTR = "0"
    }
   0.Sequencer_SetVar([882,1170],0,0,400)
    {
    Variable = "MRTB"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1098,1170],0,0,420)
    {
    Variable = "WN_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1206,1170],0,0,430)
    {
    Variable = "P1_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1314,1170],0,0,440)
    {
    Variable = "P1_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1422,1170],0,0,460)
    {
    Variable = "NBS_P1_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1530,1170],0,0,470)
    {
    Variable = "NBS_P1_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1638,1170],0,0,480)
    {
    Variable = "P1_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1746,1170],0,0,500)
    {
    Variable = "P1_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1854,1170],0,0,510)
    {
    Variable = "P2_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([1962,1170],0,0,520)
    {
    Variable = "P2_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([2070,1170],0,0,530)
    {
    Variable = "NBS_P2_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([2178,1170],0,0,550)
    {
    Variable = "NBS_P2_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([2286,1170],0,0,560)
    {
    Variable = "P2_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([2394,1170],0,0,570)
    {
    Variable = "P2_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([882,1062],0,0,1310)
    {
    Variable = "MRTB"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1098,1062],0,0,1350)
    {
    Variable = "WN_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1206,1062],0,0,1360)
    {
    Variable = "P1_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1314,1062],0,0,1370)
    {
    Variable = "P1_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1422,1062],0,0,1380)
    {
    Variable = "NBS_P1_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1530,1062],0,0,1390)
    {
    Variable = "NBS_P1_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1638,1062],0,0,1400)
    {
    Variable = "P1_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1746,1062],0,0,1410)
    {
    Variable = "P1_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1854,1062],0,0,1420)
    {
    Variable = "P2_WP_Q12_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1962,1062],0,0,1430)
    {
    Variable = "P2_WP_Q12_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2070,1062],0,0,1440)
    {
    Variable = "NBS_P2_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2178,1062],0,0,1450)
    {
    Variable = "NBS_P2_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2286,1062],0,0,1460)
    {
    Variable = "P2_WP_Q11_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2394,1062],0,0,1470)
    {
    Variable = "P2_WP_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([882,936],0,0,1180)
    {
    Variable = "MRTB"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1098,936],0,0,1200)
    {
    Variable = "WN_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1206,936],0,0,1210)
    {
    Variable = "P1_WP_Q11_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1314,936],0,0,1220)
    {
    Variable = "P1_WP_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1422,936],0,0,1230)
    {
    Variable = "NBS_P1_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1530,936],0,0,1240)
    {
    Variable = "NBS_P1_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1638,936],0,0,1250)
    {
    Variable = "P1_WP_Q12_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1746,936],0,0,1260)
    {
    Variable = "P1_WP_Q12_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1854,936],0,0,1270)
    {
    Variable = "P2_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1962,936],0,0,1280)
    {
    Variable = "P2_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2070,936],0,0,1300)
    {
    Variable = "NBS_P2_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2178,936],0,0,1320)
    {
    Variable = "NBS_P2_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2286,936],0,0,1340)
    {
    Variable = "P2_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2394,936],0,0,1480)
    {
    Variable = "P2_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([882,1278],0,0,880)
    {
    Variable = "MRTB"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1098,1278],0,0,900)
    {
    Variable = "WN_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1206,1278],0,0,910)
    {
    Variable = "P1_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1314,1278],0,0,920)
    {
    Variable = "P1_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1422,1278],0,0,930)
    {
    Variable = "NBS_P1_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1530,1278],0,0,940)
    {
    Variable = "NBS_P1_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1638,1278],0,0,950)
    {
    Variable = "P1_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1746,1278],0,0,960)
    {
    Variable = "P1_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1854,1278],0,0,970)
    {
    Variable = "P2_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1962,1278],0,0,980)
    {
    Variable = "P2_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2070,1278],0,0,1000)
    {
    Variable = "NBS_P2_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2178,1278],0,0,1020)
    {
    Variable = "NBS_P2_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2286,1278],0,0,1040)
    {
    Variable = "P2_WP_Q11_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2394,1278],0,0,1570)
    {
    Variable = "P2_WP_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([882,1404],0,0,1010)
    {
    Variable = "MRTB"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1098,1404],0,0,1050)
    {
    Variable = "WN_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1206,1404],0,0,1060)
    {
    Variable = "P1_WP_Q11_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1314,1404],0,0,1070)
    {
    Variable = "P1_WP_Q11_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1422,1404],0,0,1080)
    {
    Variable = "NBS_P1_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1530,1404],0,0,1090)
    {
    Variable = "NBS_P1_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1638,1404],0,0,1100)
    {
    Variable = "P1_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1746,1404],0,0,1110)
    {
    Variable = "P1_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1854,1404],0,0,1120)
    {
    Variable = "P2_WP_Q12_Fu"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([1962,1404],0,0,1130)
    {
    Variable = "P2_WP_Q12_Fe"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2070,1404],0,0,1140)
    {
    Variable = "NBS_P2_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2178,1404],0,0,1150)
    {
    Variable = "NBS_P2_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2286,1404],0,0,1160)
    {
    Variable = "P2_WP_Q11_Fu"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([2394,1404],0,0,1530)
    {
    Variable = "P2_WP_Q11_Fe"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   -Wire-([792,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,1278],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([792,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.Sequencer_SetVar([990,1404],0,0,1030)
    {
    Variable = "GRTS"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([990,1278],0,0,890)
    {
    Variable = "GRTS"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([990,1062],0,0,1330)
    {
    Variable = "GRTS"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   0.Sequencer_SetVar([990,1170],0,0,410)
    {
    Variable = "GRTS"
    VarType = "0"
    RValue = "1"
    IValue = "2"
    State = "1"
    }
   0.Sequencer_SetVar([990,936],0,0,1190)
    {
    Variable = "GRTS"
    VarType = "0"
    RValue = "0"
    IValue = "2"
    State = "0"
    }
   -Wire-([648,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1098],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1242],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1278],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1314],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,1440],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([684,1170],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.radiolink([288,1188],2,0,390)
    {
    Source = "Main"
    Name = "Bipole_Mode_XS800"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   -Wire-([288,1116],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([288,1152],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([306,1188],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.radiolink([288,1152],2,0,380)
    {
    Source = "Main"
    Name = "Pole_XS800"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.radiolink([288,1116],2,0,370)
    {
    Source = "Main"
    Name = "Met_ret_XS800"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.datalabel([360,1116],2,0,-1)
    {
    Name = "Met_ret_XS800"
    }
   0.datalabel([360,1152],2,0,-1)
    {
    Name = "Pole_XS800"
    }
   0.datalabel([360,1188],2,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   -Wire-([306,1116],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([306,1152],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([306,1188],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([2610,1206],6,0,-1)
    {
    Name = "P1_WP_Q11_Fu"
    }
   0.radiolink([2682,1206],6,0,1590)
    {
    Source = "Main"
    Name = "P1_WP_Q11_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1206],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1170],6,0,-1)
    {
    Name = "P1_WP_Q12_Fu"
    }
   0.radiolink([2682,1170],6,0,1600)
    {
    Source = "Main"
    Name = "P1_WP_Q12_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1170],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1134],6,0,-1)
    {
    Name = "NBS_P1_Fu"
    }
   0.radiolink([2682,1134],6,0,1610)
    {
    Source = "Main"
    Name = "NBS_P1_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1134],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1098],6,0,-1)
    {
    Name = "GRTS"
    }
   0.radiolink([2682,1098],6,0,1620)
    {
    Source = "Main"
    Name = "GRTS"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1098],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1062],6,0,-1)
    {
    Name = "MRTB"
    }
   0.radiolink([2682,1062],6,0,1630)
    {
    Source = "Main"
    Name = "MRTB"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1062],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1026],6,0,-1)
    {
    Name = "P2_WP_Q12_Fu"
    }
   0.radiolink([2682,1026],6,0,1640)
    {
    Source = "Main"
    Name = "P2_WP_Q12_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1026],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,990],6,0,-1)
    {
    Name = "NBS_P2_Fu"
    }
   0.radiolink([2682,990],6,0,1650)
    {
    Source = "Main"
    Name = "NBS_P2_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,990],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,954],6,0,-1)
    {
    Name = "P2_WP_Q11_Fu"
    }
   0.radiolink([2682,954],6,0,1660)
    {
    Source = "Main"
    Name = "P2_WP_Q11_Fu"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,954],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1422],6,0,-1)
    {
    Name = "P1_WP_Q11_Fe"
    }
   0.radiolink([2682,1422],6,0,1510)
    {
    Source = "Main"
    Name = "P1_WP_Q11_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1422],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1386],6,0,-1)
    {
    Name = "P1_WP_Q12_Fe"
    }
   0.radiolink([2682,1386],6,0,1520)
    {
    Source = "Main"
    Name = "P1_WP_Q12_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1386],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1350],6,0,-1)
    {
    Name = "NBS_P1_Fe"
    }
   0.radiolink([2682,1350],6,0,1540)
    {
    Source = "Main"
    Name = "NBS_P1_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1350],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1314],6,0,-1)
    {
    Name = "P2_WP_Q12_Fe"
    }
   0.radiolink([2682,1314],6,0,1550)
    {
    Source = "Main"
    Name = "P2_WP_Q12_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1314],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1278],6,0,-1)
    {
    Name = "NBS_P2_Fe"
    }
   0.radiolink([2682,1278],6,0,1560)
    {
    Source = "Main"
    Name = "NBS_P2_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1278],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,1242],6,0,-1)
    {
    Name = "P2_WP_Q11_Fe"
    }
   0.radiolink([2682,1242],6,0,1580)
    {
    Source = "Main"
    Name = "P2_WP_Q11_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,1242],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([2610,918],6,0,-1)
    {
    Name = "WN_Q11_Fe"
    }
   0.radiolink([2682,918],6,0,1670)
    {
    Source = "Main"
    Name = "WN_Q11_Fe"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2682,918],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.radiolink([180,180],2,0,10)
    {
    Source = "Main"
    Name = "Trip_P1_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([180,468],2,0,100)
    {
    Source = "Main"
    Name = "Trip_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([1260,162],2,0,30)
    {
    Source = "Main"
    Name = "Trip_B1_P1_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([1260,468],2,0,160)
    {
    Source = "Main"
    Name = "Trip_B2_P1_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2970,162],2,0,70)
    {
    Source = "Main"
    Name = "Trip_B1_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2970,468],2,0,250)
    {
    Source = "Main"
    Name = "Trip_B2_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Divider-([0,1566],0)
    {
    Size(3168,0)
    3D = 1
    Color = 9
    Style = 0
    Weight = 2
    }
   -Sticky-([1566,810],0)
    {
    Name = ""
    Font = 2
    Bounds = 1566,810,1674,864
    Alignment = 1
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "DC sequences"
    }
   -Divider-([0,720],0)
    {
    Size(4896,0)
    3D = 1
    Color = 9
    Style = 0
    Weight = 2
    }
   0.bin_delay([270,180],0,0,600)
    {
    T = "t_D1"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([234,216],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 234,216
    Extents = 0,0,0,0
    Slider(175071328)
    }
   0.var([234,360],0,175071328,50)
    {
    Name = "t_D1"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([306,360],0,0,-1)
    {
    Name = "t_D1"
    }
   -Wire-([270,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([414,198],1,0,1890)
    {
    Source = "Main"
    Name = "Retard_Rect_P1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([306,180],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([522,180],0,0,610)
    {
    T = "t_D2"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -ControlPanel-([486,216],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 486,216
    Extents = 0,0,0,0
    Slider(175072960)
    }
   0.var([486,360],0,175072960,60)
    {
    Name = "t_D2"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([558,360],0,0,-1)
    {
    Name = "t_D2"
    }
   -Wire-([522,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([648,198],1,0,1880)
    {
    Source = "Main"
    Name = "Retard_Inv_P1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([558,180],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   0.bin_delay([270,468],0,0,680)
    {
    T = "t_D3"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([234,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 234,504
    Extents = 0,0,0,0
    Slider(175074592)
    }
   0.var([234,648],0,175074592,200)
    {
    Name = "t_D3"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([306,648],0,0,-1)
    {
    Name = "t_D3"
    }
   -Wire-([270,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([414,486],1,0,1810)
    {
    Source = "Main"
    Name = "Retard_Rect_P2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([306,468],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([522,468],0,0,700)
    {
    T = "t_D4"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([414,468],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -ControlPanel-([486,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 486,504
    Extents = 0,0,0,0
    Slider(175076224)
    }
   0.var([486,648],0,175076224,210)
    {
    Name = "t_D4"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([558,648],0,0,-1)
    {
    Name = "t_D4"
    }
   -Wire-([522,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([648,486],1,0,1800)
    {
    Source = "Main"
    Name = "Retard_Inv_P2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([558,468],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Divider-([756,0],1)
    {
    Size(0,720)
    3D = 1
    Color = 9
    Style = 0
    Weight = 2
    }
   -Sticky-([306,36],0)
    {
    Name = ""
    Font = 2
    Bounds = 306,36,414,90
    Alignment = 1
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "Pole trip sequences"
    }
   -Sticky-([2646,0],0)
    {
    Name = ""
    Font = 2
    Bounds = 2646,0,2754,90
    Alignment = 1
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "Converter trip sequences"
    }
   0.bin_delay([1350,162],0,0,620)
    {
    T = "t_D5"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([1314,342],0,175077856,90)
    {
    Name = "t_D5"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1386,342],0,0,-1)
    {
    Name = "t_D5"
    }
   -Wire-([1350,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([1494,180],1,0,1870)
    {
    Source = "Main"
    Name = "Retard_Rect_P1_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1386,162],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([1890,162],0,0,640)
    {
    T = "t_D7"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([1854,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1854,198
    Extents = 0,0,0,0
    Slider(175079488)
    }
   0.var([1854,342],0,175079488,130)
    {
    Name = "t_D7"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1926,342],0,0,-1)
    {
    Name = "t_D7"
    }
   -Wire-([1890,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2016,180],1,0,1850)
    {
    Source = "Main"
    Name = "Retard_Inv_P1_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1926,162],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1494,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([2394,162],0,0,660)
    {
    T = "t_D9"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([2358,342],0,175081120,150)
    {
    Name = "t_D9"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.03"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([2430,342],0,0,-1)
    {
    Name = "t_D9"
    }
   -Wire-([2394,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2592,324],0,0,1770)
    {
    Source = "Main"
    Name = "Seq_Half_Mode_P1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([2016,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([1350,468],0,0,740)
    {
    T = "t_D10"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([1314,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1314,504
    Extents = 0,0,0,0
    Slider(175082752)
    }
   0.var([1314,648],0,175082752,270)
    {
    Name = "t_D10"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1386,648],0,0,-1)
    {
    Name = "t_D10"
    }
   -Wire-([1350,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([1494,486],1,0,1760)
    {
    Source = "Main"
    Name = "Retard_Rect_P1_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1386,468],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([1890,468],0,0,760)
    {
    T = "t_D12"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([1854,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1854,504
    Extents = 0,0,0,0
    Slider(175084384)
    }
   0.var([1854,648],0,175084384,290)
    {
    Name = "t_D12"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1926,648],0,0,-1)
    {
    Name = "t_D12"
    }
   -Wire-([1890,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2016,486],1,0,1740)
    {
    Source = "Main"
    Name = "Retard_Inv_P1_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1926,468],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([1494,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([2394,468],0,0,780)
    {
    T = "t_D14"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([2358,648],0,175086016,310)
    {
    Name = "t_D14"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.03"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([2430,648],0,0,-1)
    {
    Name = "t_D14"
    }
   -Wire-([2394,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2016,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.logic_mult([2556,324],0,0,1500)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([2430,162],0,0,-1)
    {
    Vertex="0,0;54,0;54,144;90,144"
    }
   -Wire-([2430,468],0,0,-1)
    {
    Vertex="0,0;54,0;54,-126;90,-126"
    }
   0.unity([234,468],0,0,110)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([234,180],0,0,20)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([180,180],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([180,468],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([1314,162],0,0,40)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([1314,468],0,0,170)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1260,162],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1260,468],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([1620,162],0,0,630)
    {
    T = "t_D6"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([1584,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1584,198
    Extents = 0,0,0,0
    Slider(175089280)
    }
   0.var([1584,342],0,175089280,120)
    {
    Name = "t_D6"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1656,342],0,0,-1)
    {
    Name = "t_D6"
    }
   -Wire-([1620,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.bin_delay([1620,468],0,0,750)
    {
    T = "t_D11"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([1584,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1584,504
    Extents = 0,0,0,0
    Slider(175090504)
    }
   0.var([1584,648],0,175090504,280)
    {
    Name = "t_D11"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1656,648],0,0,-1)
    {
    Name = "t_D11"
    }
   -Wire-([1620,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([1746,180],1,0,1860)
    {
    Source = "Main"
    Name = "Close_Rect_BPS_P1_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1656,162],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([1656,468],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([1746,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([1746,486],1,0,1750)
    {
    Source = "Main"
    Name = "Close_Rect_BPS_P1_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([1746,468],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -ControlPanel-([1314,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1314,198
    Extents = 0,0,0,0
    Slider(175077856)
    }
   0.bin_delay([2142,162],0,0,650)
    {
    T = "t_D8"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([2106,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2106,198
    Extents = 0,0,0,0
    Slider(175092544)
    }
   0.var([2106,342],0,175092544,140)
    {
    Name = "t_D8"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([2178,342],0,0,-1)
    {
    Name = "t_D8"
    }
   -Wire-([2142,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2268,180],1,0,1840)
    {
    Source = "Main"
    Name = "Close_Inv_BPS_P1_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([2178,162],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2268,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([2142,468],0,0,770)
    {
    T = "t_D13"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([2106,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2106,504
    Extents = 0,0,0,0
    Slider(175094176)
    }
   0.var([2106,648],0,175094176,300)
    {
    Name = "t_D13"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([2178,648],0,0,-1)
    {
    Name = "t_D13"
    }
   -Wire-([2142,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2268,486],1,0,1730)
    {
    Source = "Main"
    Name = "Close_Inv_BPS_P1_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([2178,468],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([2268,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -ControlPanel-([2358,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2358,504
    Extents = 0,0,0,0
    Slider(175086016)
    }
   -ControlPanel-([2358,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2358,198
    Extents = 0,0,0,0
    Slider(175081120)
    }
   0.bin_delay([3060,162],0,0,670)
    {
    T = "t_D15"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([3024,342],0,175095808,180)
    {
    Name = "t_D15"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3096,342],0,0,-1)
    {
    Name = "t_D15"
    }
   -Wire-([3060,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3204,180],1,0,1830)
    {
    Source = "Main"
    Name = "Retard_Rect_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3096,162],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([3600,162],0,0,710)
    {
    T = "t_D17"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3564,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3564,198
    Extents = 0,0,0,0
    Slider(175097440)
    }
   0.var([3564,342],0,175097440,220)
    {
    Name = "t_D17"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3636,342],0,0,-1)
    {
    Name = "t_D17"
    }
   -Wire-([3600,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3726,180],1,0,1790)
    {
    Source = "Main"
    Name = "Retard_Inv_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3636,162],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3204,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([4104,162],0,0,730)
    {
    T = "t_D19"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([4068,342],0,175099072,240)
    {
    Name = "t_D19"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.03"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([4140,342],0,0,-1)
    {
    Name = "t_D19"
    }
   -Wire-([4104,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([4302,324],0,0,1720)
    {
    Source = "Main"
    Name = "Seq_Half_Mode_P2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3726,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([3060,468],0,0,790)
    {
    T = "t_D20"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3024,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3024,504
    Extents = 0,0,0,0
    Slider(175100704)
    }
   0.var([3024,648],0,175100704,320)
    {
    Name = "t_D20"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.004"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3096,648],0,0,-1)
    {
    Name = "t_D20"
    }
   -Wire-([3060,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3204,486],1,0,1710)
    {
    Source = "Main"
    Name = "Retard_Rect_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3096,468],0,0,-1)
    {
    Vertex="0,0;108,0;108,18"
    }
   0.bin_delay([3600,468],0,0,810)
    {
    T = "t_D22"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([3564,648],0,175102336,340)
    {
    Name = "t_D22"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.035"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3636,648],0,0,-1)
    {
    Name = "t_D22"
    }
   -Wire-([3600,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3726,486],1,0,1690)
    {
    Source = "Main"
    Name = "Retard_Inv_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3636,468],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3204,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([4104,468],0,0,830)
    {
    T = "t_D24"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.var([4068,648],0,175103968,360)
    {
    Name = "t_D24"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.03"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([4140,648],0,0,-1)
    {
    Name = "t_D24"
    }
   -Wire-([4104,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3726,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.logic_mult([4266,324],0,0,1490)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([4140,162],0,0,-1)
    {
    Vertex="0,0;54,0;54,144;90,144"
    }
   -Wire-([4140,468],0,0,-1)
    {
    Vertex="0,0;54,0;54,-126;90,-126"
    }
   0.unity([3024,162],0,0,80)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3024,468],0,0,260)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2970,162],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2970,468],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.bin_delay([3330,162],0,0,690)
    {
    T = "t_D16"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3294,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3294,198
    Extents = 0,0,0,0
    Slider(175106416)
    }
   0.var([3294,342],0,175106416,190)
    {
    Name = "t_D16"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3366,342],0,0,-1)
    {
    Name = "t_D16"
    }
   -Wire-([3330,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.bin_delay([3330,468],0,0,800)
    {
    T = "t_D21"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3294,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3294,504
    Extents = 0,0,0,0
    Slider(109300256)
    }
   0.var([3294,648],0,109300256,330)
    {
    Name = "t_D21"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3366,648],0,0,-1)
    {
    Name = "t_D21"
    }
   -Wire-([3330,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3456,180],1,0,1820)
    {
    Source = "Main"
    Name = "Close_Rect_BPS_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3366,162],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([3366,468],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([3456,162],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([3456,486],1,0,1700)
    {
    Source = "Main"
    Name = "Close_Rect_BPS_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3456,468],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -ControlPanel-([3024,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3024,198
    Extents = 0,0,0,0
    Slider(175095808)
    }
   0.bin_delay([3852,162],0,0,720)
    {
    T = "t_D18"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3816,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3816,198
    Extents = 0,0,0,0
    Slider(109302296)
    }
   0.var([3816,342],0,109302296,230)
    {
    Name = "t_D18"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3888,342],0,0,-1)
    {
    Name = "t_D18"
    }
   -Wire-([3852,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3978,180],1,0,1780)
    {
    Source = "Main"
    Name = "Close_Inv_BPS_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3888,162],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3978,162],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.bin_delay([3852,468],0,0,820)
    {
    T = "t_D23"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -ControlPanel-([3816,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3816,504
    Extents = 0,0,0,0
    Slider(109303928)
    }
   0.var([3816,648],0,109303928,350)
    {
    Name = "t_D23"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.02"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([3888,648],0,0,-1)
    {
    Name = "t_D23"
    }
   -Wire-([3852,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([3978,486],1,0,1680)
    {
    Source = "Main"
    Name = "Close_Inv_BPS_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "1"
    }
   -Wire-([3888,468],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3978,468],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -ControlPanel-([4068,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4068,504
    Extents = 0,0,0,0
    Slider(175103968)
    }
   -ControlPanel-([4068,198],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4068,198
    Extents = 0,0,0,0
    Slider(175099072)
    }
   -Divider-([3168,720],1)
    {
    Size(0,846)
    3D = 1
    Color = 9
    Style = 0
    Weight = 2
    }
   -ControlPanel-([3564,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3564,504
    Extents = 0,0,0,0
    Slider(175102336)
    }
   }
  }
 Module("DCFG_XS800_P2")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("DCFG_P2_Fu",126,36)
    {
    }
   Electrical("DCFG_P2_Fe",-126,36)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-144,-54,144,20)
   Pen(ByNode,ByNode,ByNode)
   Line(-126,35,-126,20)
   Line(126,35,126,20)
   Text(-1,-21,"DC fault generator - Pole2")
   Text(-94,41,"Fengxian")
   Text(102,40,"Fulong")
   }


  Page(B/A3,Landscape,16,[651,363],5)
   {
   0.xnode([1080,648],6,0,-1)
    {
    Name = "DCFG_P2_Fu"
    }
   0.xnode([1080,702],6,0,-1)
    {
    Name = "DCFG_P2_Fe"
    }
   0.varrlc([954,648],2,0,350)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_P2_Fu"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([954,702],2,0,320)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_P2_Fe"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([882,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([882,702],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.varrlc([828,648],2,0,360)
    {
    RLC = "0"
    R = "Rf_P2_Fu"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([828,702],2,0,330)
    {
    RLC = "0"
    R = "Rf_P2_Fe"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([882,648],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([882,702],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([954,648],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([954,702],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ground([684,702],2,0,-1)
    {
    }
   0.fault_sw([738,702],2,0,340)
    {
    Name = "FLT_P2_Fe"
    OpCur = "0"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E6 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   0.ground([684,648],2,0,-1)
    {
    }
   0.fault_sw([738,648],2,0,370)
    {
    Name = "FLT_P2_Fu"
    OpCur = "0"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E6 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   -Wire-([792,648],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([792,702],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.var([630,972],0,109309232,120)
    {
    Name = "Lf_P2_Fe"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "5.0e-005"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([702,972],0,0,-1)
    {
    Name = "Lf_P2_Fe"
    }
   -Wire-([666,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([630,936],0,109310048,80)
    {
    Name = "Rf_P2_Fe"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "1.0"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([702,936],0,0,-1)
    {
    Name = "Rf_P2_Fe"
    }
   -Wire-([666,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([738,972],0,109310864,130)
    {
    Name = "Lf_P2_Fu"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "5.0e-005"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([810,972],0,0,-1)
    {
    Name = "Lf_P2_Fu"
    }
   -Wire-([774,972],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([738,936],0,109311680,100)
    {
    Name = "Rf_P2_Fu"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "1.0"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([810,936],0,0,-1)
    {
    Name = "Rf_P2_Fu"
    }
   -Wire-([774,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1404,720],4,0,-1)
    {
    Name = "FLT_P2_Fu"
    }
   -ControlPanel-([810,774],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 810,774
    Extents = 0,0,180,126
    Slider(109310048)
    Slider(109309232)
    }
   0.datalabel([1404,774],2,0,-1)
    {
    Name = "FLT_P2_Fe"
    }
   -Wire-([1008,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1008,702],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tfaultn([1332,774],2,0,200)
    {
    TF = "Tflt_P2_Fe"
    DF = "Tdflt_P2_Fe"
    }
   0.tfaultn([1332,720],2,0,190)
    {
    TF = "Tflt_P2_Fu"
    DF = "Tdflt_P2_Fu"
    }
   0.var([738,1062],0,109314128,180)
    {
    Name = "Tdflt_P2_Fu"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.04"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([810,1062],0,0,-1)
    {
    Name = "Tdflt_P2_Fu"
    }
   -Wire-([774,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([738,1026],0,109314944,160)
    {
    Name = "Tflt_P2_Fu"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "100.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([810,1026],0,0,-1)
    {
    Name = "Tflt_P2_Fu"
    }
   -Wire-([774,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([630,1062],0,109315760,170)
    {
    Name = "Tdflt_P2_Fe"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.04"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([702,1062],0,0,-1)
    {
    Name = "Tdflt_P2_Fe"
    }
   -Wire-([666,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([630,1026],0,109316576,150)
    {
    Name = "Tflt_P2_Fe"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "100.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([702,1026],0,0,-1)
    {
    Name = "Tflt_P2_Fe"
    }
   -Wire-([666,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -ControlPanel-([630,774],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 630,774
    Extents = 0,0,0,0
    Slider(109316576)
    Slider(109315760)
    }
   -ControlPanel-([630,450],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 630,450
    Extents = 0,0,0,0
    Slider(109314944)
    Slider(109314128)
    }
   -ControlPanel-([810,450],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 810,450
    Extents = 0,0,180,126
    Slider(109311680)
    Slider(109310864)
    }
   -Wire-([1044,648],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1044,702],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([1422,684],0,109317392,40)
    {
    Name = "Use_DC_Seq_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Use Seq"
    Toff = "OFF"
    }
   0.radiolink([1782,630],6,0,310)
    {
    Source = "Main"
    Name = "Down_Rect_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.radiolink([1998,612],5,0,300)
    {
    Source = "Main"
    Name = "Down_Inv_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([684,648],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([684,702],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1368,720],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1368,774],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.logic_mult([1602,702],0,0,220)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([1566,738],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.bin_delay([1674,702],0,0,230)
    {
    T = "0.004 [s]"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([1890,702],0,0,250)
    {
    T = "t_deio_P2"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.logic_mult([1530,738],0,0,210)
    {
    Type = "1"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([1512,684],0,0,50)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1512,684],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.select([1746,630],0,0,280)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([1674,630],0,0,30)
    {
    Name = ""
    Value = "0.0"
    }
   0.select([1746,522],2,0,260)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([1818,558],4,0,20)
    {
    Name = ""
    Value = "0.0"
    }
   0.const([1818,522],4,0,10)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([1710,522],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,72;0,72"
    }
   -Wire-([1710,702],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1746,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1926,702],0,0,-1)
    {
    Vertex="0,0;36,0;36,-252;-180,-252;-180,-216"
    }
   0.const([1998,684],3,0,60)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([1998,648],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([1404,828],6,0,-1)
    {
    Name = "FLT_MP_P2"
    }
   -Wire-([1404,720],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1458,684],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1440,720],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1404,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,-36;90,-36"
    }
   0.radiolink([1350,828],4,0,70)
    {
    Source = "DC_Model_XS800"
    Name = "FLT_MP_P2"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   -Wire-([1350,828],0,0,-1)
    {
    Vertex="0,0;144,0;144,-72"
    }
   -ControlPanel-([1854,738],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1854,738
    Extents = 0,0,0,0
    Slider(109323920)
    }
   0.var([1854,882],0,109323920,140)
    {
    Name = "t_deio_P2"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.2"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1926,882],0,0,-1)
    {
    Name = "t_deio_P2"
    }
   -Wire-([1890,882],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([1584,846],0,109324736,90)
    {
    Name = "Restart_Red_Volt_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Red"
    Toff = "Norm"
    }
   -ControlPanel-([1152,522],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1152,522
    Extents = 0,0,216,126
    Switch(109317392)
    Switch(109324736)
    }
   0.radiolink([1728,918],7,0,290)
    {
    Source = "Main"
    Name = "Restart_Red_Volt_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([1746,702],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.logic_mult([1728,882],1,0,270)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.bin_delay([1746,792],1,0,240)
    {
    T = "0.02 [s]"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([1746,846],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.unity([1674,846],0,0,110)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1692,846],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1620,846],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1674,846],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   }
  }
 Module("DCFG_XS800_P1")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("DCFG_P1_Fu",-72,54)
    {
    }
   Electrical("DCFG_P1_Fe",180,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-90,-36,198,38)
   Pen(ByNode,ByNode,ByNode)
   Line(-72,53,-72,38)
   Line(180,53,180,38)
   Text(53,-3,"DC fault generator - Pole1")
   Text(-49,58,"Fulong")
   Text(150,57,"Fengxian")
   }


  Page(B/A3,Landscape,16,[651,363],5)
   {
   0.xnode([1170,612],6,0,-1)
    {
    Name = "DCFG_P1_Fu"
    }
   0.xnode([1170,666],6,0,-1)
    {
    Name = "DCFG_P1_Fe"
    }
   0.varrlc([1080,612],2,0,450)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_P1_Fu"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1080,666],2,0,420)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_P1_Fe"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([1008,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1008,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.varrlc([954,612],2,0,460)
    {
    RLC = "0"
    R = "Rf_P1_Fu"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([954,666],2,0,430)
    {
    RLC = "0"
    R = "Rf_P1_Fe"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([1008,612],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([1008,666],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([1080,612],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1080,666],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ground([810,666],2,0,-1)
    {
    }
   0.fault_sw([864,666],2,0,440)
    {
    Name = "FLT_P1_Fe"
    OpCur = "0"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E6 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   0.ground([810,612],2,0,-1)
    {
    }
   0.fault_sw([864,612],2,0,470)
    {
    Name = "FLT_P1_Fu"
    OpCur = "0"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E6 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   -Wire-([918,612],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([918,666],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.var([756,936],0,109330856,120)
    {
    Name = "Lf_P1_Fe"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "5.0e-005"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([828,936],0,0,-1)
    {
    Name = "Lf_P1_Fe"
    }
   -Wire-([792,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([756,900],0,109331672,90)
    {
    Name = "Rf_P1_Fe"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "1.0"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([828,900],0,0,-1)
    {
    Name = "Rf_P1_Fe"
    }
   -Wire-([792,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([864,936],0,109332488,140)
    {
    Name = "Lf_P1_Fu"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "5.0e-005"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([936,936],0,0,-1)
    {
    Name = "Lf_P1_Fu"
    }
   -Wire-([900,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([864,900],0,109333304,110)
    {
    Name = "Rf_P1_Fu"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "1.0"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([936,900],0,0,-1)
    {
    Name = "Rf_P1_Fu"
    }
   -Wire-([900,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1278,864],4,0,-1)
    {
    Name = "FLT_P1_Fu"
    }
   -Wire-([1242,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1278,918],2,0,-1)
    {
    Name = "FLT_P1_Fe"
    }
   -Wire-([1242,918],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1134,612],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1134,666],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tfaultn([1206,918],2,0,270)
    {
    TF = "Tflt_P1_Fe"
    DF = "Tdflt_P1_Fe"
    }
   0.tfaultn([1206,864],2,0,260)
    {
    TF = "Tflt_P1_Fu"
    DF = "Tdflt_P1_Fu"
    }
   0.var([864,1026],0,109335752,210)
    {
    Name = "Tdflt_P1_Fu"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.04"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([936,1026],0,0,-1)
    {
    Name = "Tdflt_P1_Fu"
    }
   -Wire-([900,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([864,990],0,109336568,170)
    {
    Name = "Tflt_P1_Fu"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "95.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([936,990],0,0,-1)
    {
    Name = "Tflt_P1_Fu"
    }
   -Wire-([900,990],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([756,1026],0,109337384,200)
    {
    Name = "Tdflt_P1_Fe"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.04"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([828,1026],0,0,-1)
    {
    Name = "Tdflt_P1_Fe"
    }
   -Wire-([792,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([756,990],0,109338200,160)
    {
    Name = "Tflt_P1_Fe"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "100.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([828,990],0,0,-1)
    {
    Name = "Tflt_P1_Fe"
    }
   -Wire-([792,990],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([1296,828],0,109339016,70)
    {
    Name = "Use_DC_Seq_P1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Use Seq"
    Toff = "OFF"
    }
   0.logic_mult([1476,846],0,0,300)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([1440,882],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.radiolink([2268,720],6,0,400)
    {
    Source = "Main"
    Name = "Down_Rect_P1"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.bin_delay([1548,846],0,0,310)
    {
    T = "0.004 [s]"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.bin_delay([1764,846],0,0,320)
    {
    T = "t_deio_P1"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   0.radiolink([1872,756],5,0,410)
    {
    Source = "Main"
    Name = "Down_Inv_P1"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.logic_mult([1404,882],0,0,290)
    {
    Type = "1"
    Num_in = "3"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([1386,828],0,0,80)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1386,828],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([810,612],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([810,666],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([1620,774],0,0,350)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([1548,774],0,0,50)
    {
    Name = ""
    Value = "0.0"
    }
   0.select([1620,666],2,0,330)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([1692,702],4,0,30)
    {
    Name = ""
    Value = "0.0"
    }
   0.const([1692,666],4,0,10)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([1584,666],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,72;0,72"
    }
   -Wire-([1584,846],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1620,810],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1800,846],0,0,-1)
    {
    Vertex="0,0;36,0;36,-252;-180,-252;-180,-216"
    }
   0.const([1872,828],3,0,130)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([1872,792],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([1278,972],6,0,-1)
    {
    Name = "FLT_MP_P1"
    }
   -Wire-([1278,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1332,828],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1314,864],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1278,918],0,0,-1)
    {
    Vertex="0,0;54,0;54,-36;90,-36"
    }
   0.radiolink([1224,972],4,0,190)
    {
    Source = "DC_Model_XS800"
    Name = "FLT_MP_P1"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   -Wire-([1224,972],0,0,-1)
    {
    Vertex="0,0;144,0;144,-72"
    }
   -ControlPanel-([756,738],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 756,738
    Extents = 0,0,0,0
    Slider(109338200)
    Slider(109337384)
    }
   -ControlPanel-([936,738],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 936,738
    Extents = 0,0,180,126
    Slider(109331672)
    Slider(109330856)
    }
   -ControlPanel-([936,414],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 936,414
    Extents = 0,0,180,126
    Slider(109333304)
    Slider(109332488)
    }
   -ControlPanel-([756,414],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 756,414
    Extents = 0,0,0,0
    Slider(109336568)
    Slider(109335752)
    }
   -ControlPanel-([1728,882],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1728,882
    Extents = 0,0,0,0
    Slider(109345544)
    }
   0.var([1728,1026],0,109345544,240)
    {
    Name = "t_deio_P1"
    Group = ""
    Display = "0"
    Max = "1.0"
    Min = "0.0"
    Value = "0.2"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([1800,1026],0,0,-1)
    {
    Name = "t_deio_P1"
    }
   -Wire-([1764,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([1458,990],0,109346360,220)
    {
    Name = "Restart_Red_Volt_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Red"
    Toff = "Norm"
    }
   -ControlPanel-([1242,648],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1242,648
    Extents = 0,0,234,126
    Switch(109339016)
    Switch(109346360)
    }
   0.radiolink([1602,1098],7,0,390)
    {
    Source = "Main"
    Name = "Restart_Red_Volt_P1"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([1620,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.logic_mult([1602,1026],1,0,370)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.bin_delay([1620,936],1,0,340)
    {
    T = "0.02 [s]"
    Toff = "100"
    INITST = "0"
    INTR = "0"
    }
   -Wire-([1620,990],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.unity([1548,990],0,0,230)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1566,990],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1494,990],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1548,990],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1656,774],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1602,1062],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([1674,774],0,0,-1)
    {
    Name = "Down_rect_p1_1"
    }
   0.datalabel([2016,720],0,0,-1)
    {
    Name = "Down_rect_p1_1"
    }
   0.select([2052,720],0,0,360)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.compar([1980,756],0,0,250)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.time-sig([1944,756],0,0,60)
    {
    }
   0.const([1944,792],0,0,100)
    {
    Name = ""
    Value = "20.2"
    }
   0.const([1980,684],0,0,40)
    {
    Name = ""
    Value = "1"
    }
   0.select([2178,720],0,0,380)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.time-sig([2070,846],0,0,150)
    {
    }
   0.const([2070,882],0,0,180)
    {
    Name = ""
    Value = "20.4"
    }
   0.compar([2106,846],0,0,280)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.const([2106,630],0,0,20)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([2088,720],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2142,630],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2178,846],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   -Wire-([2214,720],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   }
  }
 Module("Fulong_ACFG")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("ACFG_Fu_a",-54,54)
    {
    }
   Electrical("ACFG_Fu_c",54,54)
    {
    }
   Electrical("ACFG_Fu_b",0,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-57,-39,57,39)
   Pen(ByNode,ByNode,ByNode)
   Line(-54,54,-54,39)
   Line(0,54,0,39)
   Line(54,53,54,38)
   Text(0,-8,"Fulong")
   Text(1,13,"AC fault generator ")
   Text(-45,65,"A")
   Text(9,64,"B")
   Text(63,64,"C")
   }


  Page(B/A3,Landscape,16,[651,363],5)
   {
   0.xnode([1458,810],0,0,-1)
    {
    Name = "ACFG_Fu_a"
    }
   0.xnode([1458,846],0,0,-1)
    {
    Name = "ACFG_Fu_b"
    }
   0.xnode([1458,882],0,0,-1)
    {
    Name = "ACFG_Fu_c"
    }
   0.var([1008,936],0,109354520,60)
    {
    Name = "Lf_Fu"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "0.0049"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([1080,936],0,0,-1)
    {
    Name = "Lf_Fu"
    }
   -Wire-([1044,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([1008,900],0,109355336,40)
    {
    Name = "Rf_Fu"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "0.43"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([1080,900],0,0,-1)
    {
    Name = "Rf_Fu"
    }
   -Wire-([1044,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_pot([990,774],0,109356152,10)
    {
    Name = "Fault_Type_Fu"
    Group = ""
    Display = "0"
    NDP = "10"
    Value = "1"
    F1 = "1"
    F2 = "2"
    F3 = "3"
    F4 = "4"
    F5 = "5"
    F6 = "6"
    F7 = "7"
    F8 = "8"
    F9 = "9"
    F10 = "10"
    }
   -ControlPanel-([1206,558],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1206,558
    Extents = 0,0,72,180
    Slider(109355336)
    }
   -Sticky-([972,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 972,360,1116,558
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
0 = No Fault
1 = Phase A to Ground
2 = Phase B to Ground
3 = Phase C to Ground
4 = Phase AB to Ground
5 = Phase AC to Ground
6 = Phase BC to Ground
7 = Phase ABC to Ground
8 = Phase AB
9 = Phase AC
10 = Phase BC"
    }
   0.tfaultn([1008,846],2,0,90)
    {
    TF = "Tflt_Fu"
    DF = "Tdflt_Fu"
    }
   0.var([918,936],0,109356968,50)
    {
    Name = "Tdflt_Fu"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0.0"
    Value = "0.5"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([990,936],0,0,-1)
    {
    Name = "Tdflt_Fu"
    }
   -Wire-([954,936],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([918,900],0,109357784,30)
    {
    Name = "Tflt_Fu"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "2.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([990,900],0,0,-1)
    {
    Name = "Tflt_Fu"
    }
   -Wire-([954,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -ControlPanel-([1134,558],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1134,558
    Extents = 0,0,72,180
    Slider(109354520)
    }
   0.unity([1062,774],0,0,20)
    {
    IType = "2"
    OType = "3"
    }
   0.var_switch([936,972],0,109359008,70)
    {
    Name = "NG_Fu"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "Yes"
    Toff = "No"
    }
   0.datalabel([1062,972],0,0,-1)
    {
    Name = "NG_Fu"
    }
   -Wire-([1260,792],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,18;-72,18"
    }
   -Wire-([1260,846],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([1260,900],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-18;-72,-18"
    }
   0.tpflt([1152,846],4,0,110)
    {
    Ctype = "1"
    OpCur = "0"
    Grnd = "0"
    View = "0"
    CLVL = "0.0 [kA]"
    RON = "0.01 [ohm]"
    ROFF = "1.0E6 [ohm]"
    A = "1"
    B = "0"
    C = "0"
    G = "1"
    Ifla = ""
    Iflb = ""
    Iflc = ""
    AG1 = "0"
    }
   -ControlPanel-([1422,558],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1422,558
    Extents = 0,0,90,180
    Switch(109359008)
    }
   -Wire-([1062,774],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([1008,972],0,0,80)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1080,774],0,0,-1)
    {
    Vertex="0,0;54,0;54,18"
    }
   -Wire-([1044,846],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([1206,936],4,0,100)
    {
    NAME = "NG_Fu"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   -Wire-([1062,972],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.resistor([1260,936],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([1296,936],0,0,-1)
    {
    }
   -Wire-([1242,936],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1170,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Sticky-([1152,414],0)
    {
    Name = ""
    Font = 1
    Bounds = 1152,414,1458,558
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
3 ph - gnd:
70% rem. voltage:     R = 9.15 Ohm, L = 0.11  H 

10% rem. voltage:     R = 0.48  Ohm, L = 0.0055  H 
--------------------------------------------------------------------------
1 ph - gnd:
70% rem. voltage:     R = 9.2 Ohm, L = 0.11  H 

10% rem. voltage:     R = 0.43  Ohm, L = 0.0049  H 


"
    }
   -Wire-([1404,900],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1404,792],0,0,-1)
    {
    Vertex="0,0;0,18;54,18"
    }
   -Wire-([1404,846],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1404,882],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1260,846],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1260,900],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1260,792],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1278,792],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([1278,846],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([1278,900],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([1134,900],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -ControlPanel-([900,558],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 900,558
    Extents = 0,0,180,180
    Dial(109356152)
    }
   -ControlPanel-([1278,558],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1278,558
    Extents = 0,0,144,180
    Slider(109357784)
    Slider(109356968)
    }
   }
  }
 Module("Fengxian_ACFG")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("ACFG_Fe_a",-54,54)
    {
    }
   Electrical("ACFG_Fe_b",0,54)
    {
    }
   Electrical("ACFG_Fe_c",54,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-57,-39,57,39)
   Pen(ByNode,ByNode,ByNode)
   Line(-54,54,-54,39)
   Line(0,54,0,39)
   Line(54,53,54,38)
   Text(2,6,"AC fault generator ")
   Text(-2,-12,"Fengxian")
   Text(-46,66,"A")
   Text(9,65,"B")
   Text(64,64,"C")
   }


  Page(B/A3,Landscape,16,[651,363],5)
   {
   0.xnode([1476,756],0,0,-1)
    {
    Name = "ACFG_Fe_a"
    }
   0.xnode([1476,792],0,0,-1)
    {
    Name = "ACFG_Fe_b"
    }
   0.xnode([1476,828],0,0,-1)
    {
    Name = "ACFG_Fe_c"
    }
   0.varrlc([1332,738],2,0,160)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_Fe"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,792],2,0,130)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_Fe"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,846],2,0,120)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "Lf_Fe"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([1260,738],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1260,792],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1260,846],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.varrlc([1260,738],2,0,170)
    {
    RLC = "0"
    R = "Rf_Fe"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1260,792],2,0,140)
    {
    RLC = "0"
    R = "Rf_Fe"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1260,846],2,0,50)
    {
    RLC = "0"
    R = "Rf_Fe"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.var([990,900],0,109365536,70)
    {
    Name = "Lf_Fe"
    Group = ""
    Display = "0"
    Max = "5.0"
    Min = "0.0"
    Value = "0.0096"
    Units = "Henry"
    Collect = "1"
    }
   0.datalabel([1062,900],0,0,-1)
    {
    Name = "Lf_Fe"
    }
   -Wire-([1026,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1368,756],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1368,792],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1368,828],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.var([990,864],0,109366352,40)
    {
    Name = "Rf_Fe"
    Group = ""
    Display = "0"
    Max = "50"
    Min = "0.0"
    Value = "7.97"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([1062,864],0,0,-1)
    {
    Name = "Rf_Fe"
    }
   0.var_pot([972,720],0,109367168,10)
    {
    Name = "Fault_Type_Fe"
    Group = ""
    Display = "0"
    NDP = "10"
    Value = "1"
    F1 = "1.0"
    F2 = "2.0"
    F3 = "3.0"
    F4 = "4.0"
    F5 = "5.0"
    F6 = "6.0"
    F7 = "7.0"
    F8 = "8.0"
    F9 = "9.0"
    F10 = "10.0"
    }
   -Sticky-([954,288],0)
    {
    Name = ""
    Font = 1
    Bounds = 954,288,1098,504
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
0 = No Fault
1 = Phase A to Ground
2 = Phase B to Ground
3 = Phase C to Ground
4 = Phase AB to Ground
5 = Phase AC to Ground
6 = Phase BC to Ground
7 = Phase ABC to Ground
8 = Phase AB
9 = Phase AC
10 = Phase BC"
    }
   0.tfaultn([990,792],2,0,100)
    {
    TF = "Tflt_Fe"
    DF = "Tdflt_Fe"
    }
   0.var([900,900],0,109367984,60)
    {
    Name = "Tdflt_Fe"
    Group = ""
    Display = "0"
    Max = "10"
    Min = "0.0"
    Value = "0.1"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([972,900],0,0,-1)
    {
    Name = "Tdflt_Fe"
    }
   -Wire-([936,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([900,864],0,109368800,30)
    {
    Name = "Tflt_Fe"
    Group = ""
    Display = "0"
    Max = "100"
    Min = "0.0"
    Value = "100.0"
    Units = "seconds"
    Collect = "1"
    }
   0.datalabel([972,864],0,0,-1)
    {
    Name = "Tflt_Fe"
    }
   -ControlPanel-([1260,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1260,504
    Extents = 0,0,144,180
    Slider(109368800)
    Slider(109367984)
    }
   0.unity([1044,720],0,0,20)
    {
    IType = "2"
    OType = "3"
    }
   -ControlPanel-([936,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 936,504
    Extents = 0,0,180,180
    Dial(109367168)
    }
   -ControlPanel-([1116,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1116,504
    Extents = 0,0,72,180
    Slider(109365536)
    }
   0.var_switch([918,936],0,109370024,80)
    {
    Name = "NG_Fe"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "0"
    Min = "1"
    Ton = "Yes"
    Toff = "No"
    }
   0.datalabel([1044,936],0,0,-1)
    {
    Name = "NG_Fe"
    }
   0.unity([990,936],0,0,90)
    {
    IType = "2"
    OType = "1"
    }
   0.tpflt([1116,792],4,0,150)
    {
    Ctype = "1"
    OpCur = "0"
    Grnd = "0"
    View = "0"
    CLVL = "0.0 [kA]"
    RON = "0.01 [ohm]"
    ROFF = "1.0E6 [ohm]"
    A = "1"
    B = "0"
    C = "0"
    G = "1"
    Ifla = ""
    Iflb = ""
    Iflc = ""
    AG1 = "0"
    }
   -Wire-([1224,738],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,18;-72,18"
    }
   -Wire-([1224,792],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([1224,846],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-18;-72,-18"
    }
   -Wire-([1026,792],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1044,720],0,0,-1)
    {
    Vertex="0,0;54,0;54,18"
    }
   -Wire-([990,936],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.breaker1([1170,900],4,0,110)
    {
    NAME = "NG_Fe"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.001 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [sec]"
    TDR = "0.05 [sec]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   0.resistor([1224,900],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([1260,900],0,0,-1)
    {
    }
   -Wire-([1206,900],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1134,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1098,846],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Sticky-([1134,360],0)
    {
    Name = ""
    Font = 1
    Bounds = 1134,360,1440,504
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
3 ph - gnd:
70% rem. voltage:     R = 7.97  Ohm, L = 0.096  H 

10% rem. voltage:     R = 0.36  Ohm, L =0.0042 H 
--------------------------------------------------------------------------
1 ph - gnd:
70% rem. voltage:      R = 7.97  Ohm, L = 0.096  H 

10% rem. voltage:     R = 0.32  Ohm, L = 0.0037  H 
"
    }
   -ControlPanel-([1188,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1188,504
    Extents = 0,0,72,180
    Slider(109366352)
    }
   -Wire-([1332,738],0,0,-1)
    {
    Vertex="0,0;18,0;18,18;36,18"
    }
   -Wire-([1332,792],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1332,846],0,0,-1)
    {
    Vertex="0,0;18,0;18,-18;36,-18"
    }
   -Wire-([936,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1026,864],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -ControlPanel-([1404,504],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1404,504
    Extents = 0,0,90,180
    Switch(109370024)
    }
   }
  }
 Module("Fulong_AC_Net")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("Fu_AC_a",162,-54)
    {
    }
   Electrical("Fu_AC_b",162,-18)
    {
    }
   Electrical("Fu_AC_c",162,18)
    {
    }
   }

  Graphics = 
   {
   Line(105,-54,161,-54)
   Line(105,-18,162,-18)
   Line(105,18,161,18)
   Rectangle(-62,-91,104,67)
   Font(,Medium)
   Text(15,-5,"AC Network")
   Text(15,-26,"Fulong")
   Font(,Small)
   Text(115,-59,"A")
   Text(115,-22,"B")
   Text(115,13,"C")
   }


  Page(D/A1,Landscape,16,[651,363],5)
   {
   0.xnode([4104,1566],0,0,-1)
    {
    Name = "Fu_AC_a"
    }
   0.xnode([4104,1602],0,0,-1)
    {
    Name = "Fu_AC_b"
    }
   0.xnode([4104,1638],0,0,-1)
    {
    Name = "Fu_AC_c"
    }
   -Wire-([4086,1566],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4086,1602],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4086,1638],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([1026,1602],4,0,-1)
    {
    }
   0.var([1026,1458],1,109374512,10)
    {
    Name = "U_Net_Fu"
    Group = ""
    Display = "0"
    Max = "900"
    Min = "350"
    Value = "780.0"
    Units = "kV"
    Collect = "1"
    }
   0.var([1098,1458],1,109374920,20)
    {
    Name = "Ph_Net_Fu"
    Group = ""
    Display = "0"
    Max = "180"
    Min = "-180"
    Value = "0.0"
    Units = "deg"
    Collect = "1"
    }
   -Wire-([1098,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1026,1494],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3672,1602],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.voltmetergnd([3636,1566],0,0,50)
    {
    Name = "U_Fu_a"
    }
   0.voltmetergnd([3636,1602],0,0,60)
    {
    Name = "U_Fu_b"
    }
   0.voltmetergnd([3636,1638],0,0,100)
    {
    Name = "U_Fu_c"
    }
   0.nodeloop([3780,1602],0,0,80)
    {
    View = "0"
    }
   0.nodeloop([3816,1602],0,0,90)
    {
    View = "0"
    }
   0.power([3816,1494],5,0,220)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([3816,1458],5,109377776,240)
    {
    Name = "P_Fu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.pgb([3780,1458],5,109378184,250)
    {
    Name = "Q_Fu"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "200.0"
    }
   0.resistor([3780,1566],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([3780,1602],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([3780,1638],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([3816,1566],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3816,1602],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3816,1638],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.nodeloop([3708,1602],0,0,70)
    {
    View = "0"
    }
   0.rms3ph([3672,1710],4,0,120)
    {
    Type = "1"
    View = "0"
    Scale = "1.0 [kV]"
    Ts = "0.02 [sec]"
    freq = "50.0 [Hz]"
    NSAM = "256"
    Vinit = "0.0 [kV]"
    }
   0.datalabel([3600,1710],4,0,-1)
    {
    Name = "U_Fu_RMS"
    }
   -Wire-([3600,1710],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3708,1674],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3852,1566],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1440,1566],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3852,1602],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1440,1602],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3852,1638],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1440,1638],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1476,1566],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([1476,1602],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([1476,1638],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   0.pgb([3672,1872],0,109381040,190)
    {
    Name = "U_Fu_RMS"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "500"
    }
   -Wire-([3636,1872],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3636,1872],0,0,-1)
    {
    Name = "U_Fu_RMS"
    }
   0.pgb([3672,1764],0,109381856,150)
    {
    Name = "U_Fu_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([3636,1764],0,0,-1)
    {
    Name = "U_Fu_a"
    }
   0.datalabel([3636,1800],0,0,-1)
    {
    Name = "U_Fu_b"
    }
   0.datalabel([3636,1836],0,0,-1)
    {
    Name = "U_Fu_c"
    }
   0.pgb([3672,1800],0,109383488,170)
    {
    Name = "U_Fu_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.pgb([3672,1836],0,109383896,180)
    {
    Name = "U_Fu_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   -Wire-([3636,1764],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3636,1800],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3636,1836],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1098,1602],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([1314,1602],0,0,-1)
    {
    Vertex="0,0;0,36;18,36"
    }
   -Wire-([1098,1566],0,0,-1)
    {
    Vertex="0,0;90,0;90,-54;126,-54"
    }
   -Wire-([1098,1638],0,0,-1)
    {
    Vertex="0,0;90,0;90,54;126,54"
    }
   -Wire-([1296,1440],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([1278,1440],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([1260,1512],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1314,1458],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1296,1440],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1260,1602],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1314,1602],0,0,-1)
    {
    Vertex="0,0;0,-36;18,-36"
    }
   -Wire-([1368,1404],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;0,72"
    }
   -Wire-([1404,1440],0,0,-1)
    {
    Vertex="0,0;36,0;36,126"
    }
   -Wire-([1368,1566],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1314,1458],0,0,-1)
    {
    Vertex="0,0;0,18;18,18"
    }
   -Wire-([1314,1440],0,0,-1)
    {
    Vertex="0,0;0,-36;18,-36"
    }
   -Wire-([1368,1638],0,0,-1)
    {
    Vertex="0,0;18,0;18,-72"
    }
   -Wire-([1386,1602],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1404,1440],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([1260,1692],0,0,-1)
    {
    Vertex="0,0;18,0;18,72"
    }
   -Wire-([1332,1728],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,72;0,72"
    }
   -Wire-([1368,1728],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;0,72"
    }
   -Wire-([1386,1764],0,0,-1)
    {
    Vertex="0,0;54,0;54,-126"
    }
   -Wire-([1278,1764],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1116,1962],0,0,-1)
    {
    Name = "R_Fu_1"
    }
   0.var([1044,1962],6,109384712,110)
    {
    Name = "R_Fu_1"
    Group = ""
    Display = "0"
    Max = "10"
    Min = "0.0"
    Value = "0.1075"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([1116,1998],0,0,-1)
    {
    Name = "R_Fu_2"
    }
   0.var([1044,1998],6,109385528,140)
    {
    Name = "R_Fu_2"
    Group = ""
    Display = "0"
    Max = "700"
    Min = "0.0"
    Value = "345.4"
    Units = "Ohm"
    Collect = "1"
    }
   0.datalabel([1116,2034],0,0,-1)
    {
    Name = "L_Fu"
    }
   0.var([1044,2034],6,109386344,160)
    {
    Name = "L_Fu"
    Group = ""
    Display = "0"
    Max = "2"
    Min = "0.0"
    Value = "0.015"
    Units = "Henry"
    Collect = "1"
    }
   -Wire-([1674,1566],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([3564,1566],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([1674,1602],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([3564,1602],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1674,1638],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([3564,1638],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([1890,1566],0,0,-1)
    {
    Vertex="0,0;1584,0"
    }
   -Wire-([1890,1602],0,0,-1)
    {
    Vertex="0,0;1584,0"
    }
   -Wire-([1890,1638],0,0,-1)
    {
    Vertex="0,0;1584,0"
    }
   -Wire-([3474,1566],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([3474,1602],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([3474,1638],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([3888,1566],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([3888,1602],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   -Wire-([3888,1638],0,0,-1)
    {
    Vertex="0,0;198,0"
    }
   0.const([1062,1494],1,0,30)
    {
    Name = ""
    Value = "50.0"
    }
   0.source3([1062,1602],0,0,40)
    {
    Name = "Fulong"
    Type = "1"
    Ctrl = "2"
    MVA = "11000.0 [MVA]"
    Vm = "760.0 [kV]"
    F = "50.0 [Hz]"
    Tc = "0.01 [sec]"
    ZSeq = "0"
    Imp = "1"
    Exph = "1"
    View = "0"
    Term = "0"
    R1s = "0.0.920"
    R1p = "150.0 [ohm]"
    L1p = "0.0239 [H]"
    Z1 = "0.01 [ohm]"
    Phi1 = "90 [�]"
    RN = "2.0"
    R0p = "1.0 [ohm]"
    L0p = "0.1 [H]"
    Z0 = "78.64 [ohm]"
    Phi0 = "87.8 [�]"
    Es = "150.0 [kV]"
    F0 = "50.0 [Hz]"
    Ph = "-30.0 [�]"
    Pinit = "0.0 [pu]"
    Qinit = "0.0 [pu]"
    VCtrl = "0"
    Vdes = "1.0 [p.u.]"
    Vbase = "230.0 [kV]"
    Tvm = "0.02 [sec]"
    Tvc = "0.05 [sec]"
    PCtrl = "0"
    Pdes = "1.0 [p.u.]"
    Tpm = "0.02 [sec]"
    Tpc = "0.05 [sec]"
    P = ""
    Q = ""
    V = ""
    Theta = ""
    Ia = ""
    Ib = ""
    Ic = ""
    }
   0.varrlc([1260,1512],4,0,300)
    {
    RLC = "0"
    R = "R_Fu_1"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1260,1602],4,0,280)
    {
    RLC = "0"
    R = "R_Fu_1"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1260,1692],4,0,260)
    {
    RLC = "0"
    R = "R_Fu_1"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,1566],6,0,290)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "L_Fu"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,1728],6,0,230)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "L_Fu"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1368,1638],4,0,270)
    {
    RLC = "0"
    R = "R_Fu_2"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1368,1800],4,0,210)
    {
    RLC = "0"
    R = "R_Fu_2"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,1404],6,0,320)
    {
    RLC = "1"
    R = "1.0 [ohm]"
    L = "L_Fu"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   0.varrlc([1332,1476],0,0,310)
    {
    RLC = "0"
    R = "R_Fu_2"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([1080,1998],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1080,1962],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1080,2034],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -ControlPanel-([936,1818],0)
    {
    Name = "Fulong Network"
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 936,1818
    Extents = 0,0,270,126
    Slider(109384712)
    Slider(109385528)
    Slider(109386344)
    }
   -ControlPanel-([990,1692],0)
    {
    Name = "Fulong Network"
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 990,1692
    Extents = 0,0,162,126
    Slider(109374512)
    Slider(109374920)
    }
   0.breaker1([3168,1710],0,0,200)
    {
    NAME = "BRK"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
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
    BOpen = "2"
    }
   -Wire-([3204,1800],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([3258,1764],0,0,-1)
    {
    Name = "BRK"
    }
   -Wire-([3258,1764],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tbreakn([3330,1764],0,0,130)
    {
    NUMS = "2"
    INIT = "1"
    TO1 = "2.0 [s]"
    TO2 = "2.5 [s]"
    }
   0.ground([3204,1800],0,0,-1)
    {
    }
   -Wire-([3132,1656],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   }
  }
 Module("Fulong_P2")
  {
  Desc = ""
  FileDate = 1400042433
  Nodes = 
   {
   Electrical("DC_P2_Fu",72,18)
    {
    }
   Electrical("Neut_P2_Fu",72,-90)
    {
    }
   Electrical("Fu_P2_a",-180,-72)
    {
    }
   Electrical("Fu_P2_b",-180,-36)
    {
    }
   Electrical("Fu_P2_c",-180,0)
    {
    }
   Output("Tel_P2_Fu",0,72)
    {
    Type = Real
    Dim  = [20]
    }
   Input("Tel_P2_Fe",-108,72)
    {
    Type = Real
    Dim  = [20]
    }
   }

  Graphics = 
   {
   Rectangle(-138,-116,38,42)
   Line(39,18,72,18)
   Line(39,-90,72,-90)
   Line(-180,-72,-137,-72)
   Line(-180,-36,-138,-36)
   Line(-180,0,-137,0)
   Line(-108,72,-108,42)
   Line(0,73,0,43)
   Line(0,73,5,64)
   Line(-5,64,0,73)
   Line(-108,42,-103,51)
   Line(-113,51,-108,42)
   Font(,Medium)
   Text(-51,-57,"Fulong")
   Font(,Small)
   Text(50,31,"P2")
   Text(52,-96,"Neut")
   Text(-144,-76,"A")
   Text(-144,-40,"B")
   Text(-144,-4,"C")
   Text(-140,62,"Tdel_IN")
   Text(41,60,"Tdel_OUT")
   Font(,Medium)
   Text(-52,-21,"P2")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   0.xnode([1062,1332],2,0,-1)
    {
    Name = "Fu_P2_a"
    }
   0.xnode([1062,1368],2,0,-1)
    {
    Name = "Fu_P2_b"
    }
   0.xnode([1062,1404],2,0,-1)
    {
    Name = "Fu_P2_c"
    }
   0.var([2178,2916],0,109394096,1070)
    {
    Name = "UDref_Fu_P2"
    Group = ""
    Display = "0"
    Max = "10000"
    Min = "240"
    Value = "870.0"
    Units = "kV"
    Collect = "1"
    }
   0.var([2430,3420],0,109394504,1760)
    {
    Name = "Iord_Fu_P2"
    Group = ""
    Display = "0"
    Max = "3"
    Min = "0"
    Value = "1.1"
    Units = "p.u."
    Collect = "1"
    }
   -Wire-([3420,3618],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3402,3708],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3384,3618],2,0,-1)
    {
    Name = "TelD_P2_Fu"
    }
   0.export([3654,3618],4,0,4630)
    {
    Name = "Tel_P2_Fu"
    }
   0.datalabel([3384,3708],2,0,-1)
    {
    Name = "TelD_P2_Fe"
    }
   0.import([3636,3708],4,0,2200)
    {
    Name = "Tel_P2_Fe"
    }
   -Wire-([3402,3618],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3384,3708],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   1.TELE_DELAY([3528,3618],0,0,4060)
    {
    noname6 = ""
    N_sig = "5"
    N_Tel = "8"
    T_dly = "Tele_Dly_XS800"
    }
   1.TELE_DELAY([3528,3708],4,0,3480)
    {
    noname6 = ""
    N_sig = "5"
    N_Tel = "8"
    T_dly = "Tele_Dly_XS800"
    }
   -Wire-([3600,3618],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([2178,3312],0,109396544,1580)
    {
    Name = "Pref_Fu_P2"
    Group = ""
    Display = "0"
    Max = "4000"
    Min = "0"
    Value = "3600.0"
    Units = "MW"
    Collect = "1"
    }
   0.var([2430,3186],0,109396952,1440)
    {
    Name = "Gamma_REF_Fu_P2"
    Group = ""
    Display = "0"
    Max = "30"
    Min = "0.0"
    Value = "17.0"
    Units = "deg"
    Collect = "1"
    }
   0.datalabel([2628,3240],6,0,-1)
    {
    Name = "Gamma_REF_Fu_P2"
    }
   0.div([3528,3780],0,0,3170)
    {
    }
   0.const([3492,3834],0,0,2360)
    {
    Name = ""
    Value = "8000.0"
    }
   -Wire-([3528,3834],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([3456,3780],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3600,3780],0,0,-1)
    {
    Name = "Tele_Dly_XS800"
    }
   -Wire-([3564,3780],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([3456,3780],4,0,2290)
    {
    Source = "Main"
    Name = "Tele_Dly_ms_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([2466,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.sumjct([2430,3312],0,0,3590)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2268,3312],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.var([1908,3312],0,109399808,1540)
    {
    Name = "T_Step_Fu_P2"
    Group = ""
    Display = "0"
    Max = "1000"
    Min = "0"
    Value = "300.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([2034,3312],2,0,-1)
    {
    Name = "T_Step_Fu_P2"
    }
   -Wire-([1998,3312],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([1908,3348],0,109400624,1600)
    {
    Name = "T_Dur_Step_Fu_P2"
    Group = ""
    Display = "0"
    Max = "6"
    Min = "0"
    Value = "1.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([2034,3348],2,0,-1)
    {
    Name = "T_Dur_Step_Fu_P2"
    }
   -Wire-([1998,3348],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tfault([1836,3330],2,0,2960)
    {
    TF = "T_Step_Fu_P2"
    DF = "T_Dur_Step_Fu_P2"
    REP = "0"
    }
   0.var([1908,3276],0,109401848,1500)
    {
    Name = "Step_Value_Fu_P2"
    Group = ""
    Display = "0"
    Max = "5"
    Min = "-5"
    Value = "-0.08"
    Units = ""
    Collect = "1"
    }
   0.const([2304,3402],0,0,1720)
    {
    Name = ""
    Value = "0.0"
    }
   0.select([2376,3402],0,0,3430)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2430,3348],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1944,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1944,3348],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.mult([2304,3366],6,0,1680)
    {
    }
   -Wire-([2304,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2214,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1944,3276],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.logic_mult([2322,3474],0,0,3000)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([2358,3474],0,0,-1)
    {
    Vertex="0,0;18,0;18,-36"
    }
   -Wire-([1962,3384],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([2034,3384],2,0,-1)
    {
    Name = "Step_Type_Fu_P2"
    }
   -Wire-([1998,3276],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.logic_mult([2322,3582],0,0,3050)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([2376,3654],6,0,3100)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2358,3582],0,0,-1)
    {
    Vertex="0,0;18,0;18,36"
    }
   0.const([2304,3654],0,0,2040)
    {
    Name = ""
    Value = "0.0"
    }
   0.sumjct([2538,3420],0,0,3600)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2430,3402],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2520,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2178,3600],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2178,3456],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2250,3456],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_pot([1926,3384],0,109405928,1640)
    {
    Name = "Step_Type_Fu_P2"
    Group = ""
    Display = "0"
    NDP = "4"
    Value = "1"
    F1 = "1.0"
    F2 = "2.0"
    F3 = "3.0"
    F4 = "4.0"
    F5 = "5.0"
    F6 = "6.0"
    F7 = "7.0"
    F8 = "8.0"
    F9 = "9.0"
    F10 = "10.0"
    }
   1.Decoder([2142,3456],0,0,1780)
    {
    Trig = "1"
    }
   1.Decoder([2142,3600],0,0,1960)
    {
    Trig = "2"
    }
   0.unity([2106,3600],0,0,1940)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2106,3456],0,0,1770)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2034,3456],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2034,3600],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2214,3456],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2214,3600],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2250,3600],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2016,3456],2,0,-1)
    {
    Name = "Step_Type_Fu_P2"
    }
   0.datalabel([2016,3600],2,0,-1)
    {
    Name = "Step_Type_Fu_P2"
    }
   0.datalabel([2034,3276],2,0,-1)
    {
    Name = "Step_Value_Fu_P2"
    }
   0.datalabel([2196,3366],2,0,-1)
    {
    Name = "Step_Value_Fu_P2"
    }
   0.datalabel([2196,3690],2,0,-1)
    {
    Name = "Step_Value_Fu_P2"
    }
   -Wire-([2196,3366],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   1.Decoder([2142,3222],0,0,2940)
    {
    Trig = "3"
    }
   0.logic_mult([2322,3204],0,0,3400)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([2322,3060],0,0,3380)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2106,3222],0,0,2930)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2034,3222],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2016,3222],2,0,-1)
    {
    Name = "Step_Type_Fu_P2"
    }
   -Wire-([2178,3222],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1872,3330],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   1.Decoder([2142,3042],0,0,2910)
    {
    Trig = "4"
    }
   0.unity([2106,3042],0,0,2900)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2034,3042],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2016,3042],2,0,-1)
    {
    Name = "Step_Type_Fu_P2"
    }
   -Wire-([2178,3042],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.sumjct([2502,3240],6,0,3420)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.select([2430,3240],6,0,3410)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2358,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2214,3690],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2196,3690],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.const([2358,3240],0,0,1510)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2196,3276],2,0,-1)
    {
    Name = "Step_Value_Fu_P2"
    }
   -Wire-([2322,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2484,3186],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([2538,3240],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2574,3240],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([2628,3420],2,0,-1)
    {
    Name = "Iord_Fu_P2"
    }
   0.datalabel([2628,3312],2,0,-1)
    {
    Name = "Pref_Fu_P2"
    }
   -Wire-([2574,3420],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2574,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2592,3240],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([2430,3024],0,0,3570)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2358,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.const([2358,3024],0,0,1250)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2214,2988],2,0,-1)
    {
    Name = "Step_Value_Fu_P2"
    }
   -Wire-([2286,3186],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-108;0,-108"
    }
   -Wire-([1908,3330],0,0,-1)
    {
    Vertex="0,0;0,-198;360,-198"
    }
   -Wire-([2286,3564],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-72;0,-72"
    }
   -Wire-([1908,3330],0,0,-1)
    {
    Vertex="0,0;0,198;360,198"
    }
   0.sumjct([2520,3024],6,0,3580)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.datalabel([2628,3024],2,0,-1)
    {
    Name = "UDref_Fu_P2"
    }
   0.mult([2358,2988],6,0,2870)
    {
    }
   -Wire-([2466,3024],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2466,3186],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2466,3420],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2556,3024],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2214,2988],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2214,2916],0,0,-1)
    {
    Vertex="0,0;144,0;144,54"
    }
   -Wire-([2358,2916],0,0,-1)
    {
    Vertex="0,0;162,0;162,72"
    }
   -Wire-([2016,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2016,3222],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2016,3456],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2196,3276],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2016,3600],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.annotation([2358,2862],0,0,-1)
    {
    AL1 = "STEP LOGIC"
    AL2 = ""
    }
   0.mult([2538,3510],5,0,3450)
    {
    }
   -Wire-([2412,3654],0,0,-1)
    {
    Vertex="0,0;126,0;126,-108"
    }
   -Wire-([2538,3474],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2484,3420],0,0,-1)
    {
    Vertex="0,0;0,90;18,90"
    }
   0.datalabel([2358,1062],2,0,-1)
    {
    Name = "TapP_Fu_P2_B2"
    }
   -Wire-([2358,1062],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2268,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,1170],2,0,-1)
    {
    Name = "FPD_Fu_P2_B2"
    }
   -Wire-([2826,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,1134],2,0,-1)
    {
    Name = "FTD_Fu_P2_B2"
    }
   0.datalabel([2916,1404],2,0,-1)
    {
    Name = "FPY_Fu_P2_B2"
    }
   -Wire-([2826,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,1368],6,0,-1)
    {
    Name = "FTY_Fu_P2_B2"
    }
   -Wire-([2826,1134],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2826,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.resistor([2430,1440],0,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([2430,1440],2,0,-1)
    {
    }
   0.datalabel([2358,1296],2,0,-1)
    {
    Name = "TapP_Fu_P2_B2"
    }
   -Wire-([2358,1296],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.nodeloop([1386,1368],0,0,110)
    {
    View = "0"
    }
   0.nodeloop([1422,1368],0,0,120)
    {
    View = "0"
    }
   0.power([1422,1260],5,0,6610)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([1422,1224],5,109421840,6620)
    {
    Name = "P_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.pgb([1386,1224],5,109422248,6630)
    {
    Name = "Q_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "600"
    }
   0.resistor([1386,1332],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([1386,1368],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([1386,1404],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.xnode([4266,2574],4,0,-1)
    {
    Name = "DC_P2_Fu"
    }
   0.voltmetergnd([1260,1404],4,0,140)
    {
    Name = "U_Fu_P2_c"
    }
   0.voltmetergnd([1260,1368],4,0,100)
    {
    Name = "U_Fu_P2_b"
    }
   0.voltmetergnd([1260,1332],4,0,50)
    {
    Name = "U_Fu_P2_a"
    }
   0.nodeloop([1170,1368],0,0,70)
    {
    View = "0"
    }
   0.rms3ph([1134,1476],4,0,170)
    {
    Type = "1"
    View = "0"
    Scale = "1.0 [kV]"
    Ts = "0.02 [sec]"
    freq = "50.0 [Hz]"
    NSAM = "256"
    Vinit = "0.0 [kV]"
    }
   0.datalabel([1062,1476],4,0,-1)
    {
    Name = "U_Fu_P2_RMS"
    }
   -Wire-([1062,1476],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1170,1440],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.ground([2196,1476],1,0,-1)
    {
    }
   0.ground([2232,1476],1,0,-1)
    {
    }
   0.ground([2268,1476],1,0,-1)
    {
    }
   0.annotation([2232,1512],0,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   -Wire-([2682,1242],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2502,1332],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,1134],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2682,1026],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmetergnd([4176,2574],0,0,870)
    {
    Name = "Ud_Fu_P2"
    }
   0.ammeter([1530,1332],6,0,80)
    {
    Name = "I_Fu_P2_a"
    }
   0.ammeter([1530,1368],6,0,130)
    {
    Name = "I_Fu_P2_b"
    }
   0.ammeter([1530,1404],6,0,160)
    {
    Name = "I_Fu_P2_c"
    }
   -Wire-([1476,1332],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1710,1332],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1476,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1710,1368],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([1476,1404],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1710,1404],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2754,1512],0,0,-1)
    {
    Vertex="0,0;-72,0;-72,-36"
    }
   -Wire-([2898,1512],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([2862,1134],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,1170],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,1404],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1224,1332],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([1224,1368],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([1224,1404],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([1224,1332],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([1422,1332],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1224,1368],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([1422,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1224,1404],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([1422,1404],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2538,1134],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,1170],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,1332],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,1404],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.consti([2862,1440],2,0,220)
    {
    Name = ""
    Value = "1"
    }
   0.consti([2862,1206],2,0,90)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([2502,1098],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ground([2340,1206],2,0,-1)
    {
    }
   0.resistor([2340,1206],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([2376,1206],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([2394,1476],1,0,-1)
    {
    }
   0.resistor([2394,1476],5,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([1458,1296],2,0,-1)
    {
    Name = "COM"
    }
   -Wire-([1458,1296],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2610,1260],2,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([2610,1026],2,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([2682,1134],0,0,4610)
    {
    UP = "1"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.0096 [ohm]"
    ROFF = "3.0E6 [ohm]"
    EFVD = "0.0714 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "400 [usec]"
    CD = "0.0267 [uF]"
    RD = "2160 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fu_P2_B2"
    VCurr = "Ivd_Fu_P2_B2"
    SCurr = ""
    }
   1.g6p200_421([2682,1368],0,0,4600)
    {
    UP = "1"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.0096 [ohm]"
    ROFF = "3.0E6 [ohm]"
    EFVD = "0.0714 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "400 [usec]"
    CD = "0.0267 [uF]"
    RD = "2160 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fu_P2_B2"
    VCurr = "Ivy_Fu_P2_B2"
    SCurr = ""
    }
   0.jumper2([1692,1368],1,0,-1)
    {
    }
   0.jumper([1656,1404],1,0,-1)
    {
    }
   -Wire-([1566,1332],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1566,1368],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([1566,1404],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1656,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1620,1440],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   -Wire-([1656,1440],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   0.jumper2([2124,2394],1,0,-1)
    {
    }
   0.jumper([2088,2394],1,0,-1)
    {
    }
   -Wire-([1692,2376],0,0,-1)
    {
    Vertex="0,0;0,18;18,18"
    }
   -Wire-([1656,2376],0,0,-1)
    {
    Vertex="0,0;0,54;54,54"
    }
   -Wire-([1620,2376],0,0,-1)
    {
    Vertex="0,0;0,90;90,90"
    }
   0.ammeter([3528,1026],0,0,20)
    {
    Name = "Idn_Fu_P2"
    }
   0.datalabel([2358,2124],2,0,-1)
    {
    Name = "TapP_Fu_P2_B1"
    }
   -Wire-([2358,2124],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,2232],2,0,-1)
    {
    Name = "FPD_Fu_P2_B1"
    }
   -Wire-([2826,2466],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,2196],2,0,-1)
    {
    Name = "FTD_Fu_P2_B1"
    }
   0.datalabel([2916,2466],2,0,-1)
    {
    Name = "FPY_Fu_P2_B1"
    }
   -Wire-([2826,2232],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2916,2430],6,0,-1)
    {
    Name = "FTY_Fu_P2_B1"
    }
   -Wire-([2826,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2826,2430],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.resistor([2430,2502],0,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([2430,2502],2,0,-1)
    {
    }
   0.datalabel([2358,2358],2,0,-1)
    {
    Name = "TapP_Fu_P2_B1"
    }
   -Wire-([2358,2358],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([4284,1026],2,0,-1)
    {
    Name = "Neut_P2_Fu"
    }
   -Wire-([2682,2304],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2502,2394],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,2232],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2682,2088],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmetergnd([4194,1026],0,0,40)
    {
    Name = "Udn_Fu_P2"
    }
   -Wire-([2754,2574],0,0,-1)
    {
    Vertex="0,0;-72,0;-72,-36"
    }
   -Wire-([2898,2574],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([2862,2196],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,2232],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,2430],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2862,2466],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2538,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,2232],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2538,2394],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,2430],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2502,2466],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.consti([2862,2502],2,0,740)
    {
    Name = ""
    Value = "1"
    }
   0.consti([2862,2268],2,0,550)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([2502,2160],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ground([2340,2268],2,0,-1)
    {
    }
   0.resistor([2340,2268],0,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([2376,2268],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.ground([2394,2538],1,0,-1)
    {
    }
   0.resistor([2394,2538],5,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([2610,2322],2,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([2610,2088],2,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([2682,2196],0,0,4580)
    {
    UP = "1"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.0096 [ohm]"
    ROFF = "3.0E6 [ohm]"
    EFVD = "0.0714 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "400 [usec]"
    CD = "0.0267 [uF]"
    RD = "2160 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fu_P2_B1"
    VCurr = "Ivd_Fu_P2_B1"
    SCurr = ""
    }
   1.g6p200_421([2682,2430],0,0,4570)
    {
    UP = "1"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.0096 [ohm]"
    ROFF = "3.0E6 [ohm]"
    EFVD = "0.0714 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "400 [usec]"
    CD = "0.0267 [uF]"
    RD = "2160 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fu_P2_B1"
    VCurr = "Ivy_Fu_P2_B1"
    SCurr = ""
    }
   -Wire-([1620,2376],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([1656,2376],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([1692,2376],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([2898,1512],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1764,1332],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1800,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2124,1368],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2124,1404],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.var_switch([1836,1296],0,115986336,60)
    {
    Name = "BRK_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([1944,1296],2,0,-1)
    {
    Name = "BRK_Fu_P2_B2"
    }
   -Wire-([1872,1296],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([1854,2502],0,115987152,670)
    {
    Name = "BRK_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([1962,2502],2,0,-1)
    {
    Name = "BRK_Fu_P2_B1"
    }
   -Wire-([1890,2502],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1710,2394],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1710,2430],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   1.DC_Breaker([3042,2574],6,0,6380)
    {
    NAME = "Q13_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([3078,2304],7,0,6460)
    {
    NAME = "Q12_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([3042,2088],6,0,6500)
    {
    NAME = "Q11_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   -Wire-([3078,2088],0,0,-1)
    {
    Vertex="0,0;0,-576"
    }
   0.var_switch([3744,2394],0,115987968,710)
    {
    Name = "Q13_Fu_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([3546,2394],0,115988376,700)
    {
    Name = "Q12_Fu_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([3546,2286],0,115988784,600)
    {
    Name = "Q11_Fu_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([3870,2394],2,0,-1)
    {
    Name = "Q13_Fu_P2"
    }
   0.datalabel([3672,2286],2,0,-1)
    {
    Name = "Q11_Fu_P2"
    }
   0.datalabel([3672,2394],2,0,-1)
    {
    Name = "Q12_Fu_P2"
    }
   1.DC_Breaker([3042,1026],6,0,6640)
    {
    NAME = "Q14_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([3078,1260],7,0,6570)
    {
    NAME = "Q15_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([3042,1512],6,0,6510)
    {
    NAME = "Q16_Fu_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   -Wire-([2826,1026],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3078,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3744,1422],0,115990416,250)
    {
    Name = "Q16_Fu_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([3546,1422],0,115990824,240)
    {
    Name = "Q15_Fu_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([3546,1314],0,115991232,200)
    {
    Name = "Q14_Fu_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([3870,1422],2,0,-1)
    {
    Name = "Q16_Fu_P2"
    }
   0.datalabel([3672,1314],2,0,-1)
    {
    Name = "Q14_Fu_P2"
    }
   0.datalabel([3672,1422],2,0,-1)
    {
    Name = "Q15_Fu_P2"
    }
   0.pgb([1602,3528],0,115992864,1800)
    {
    Name = "Udn_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1530,3528],0,0,-1)
    {
    Name = "Udn_Fu_P2"
    }
   0.pgb([1602,3564],0,115993680,1840)
    {
    Name = "U_Fu_P2_RMS"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "500"
    }
   0.datalabel([1530,3564],0,0,-1)
    {
    Name = "U_Fu_P2_RMS"
    }
   -Wire-([1530,3564],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3420],0,115994496,1630)
    {
    Name = "U_Fu_P2_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1368,3420],0,0,-1)
    {
    Name = "U_Fu_P2_a"
    }
   -Wire-([1368,3420],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3528],0,115995312,1790)
    {
    Name = "I_Fu_P2_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1368,3528],0,0,-1)
    {
    Name = "I_Fu_P2_a"
    }
   -Wire-([1368,3528],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3564],0,115996128,1830)
    {
    Name = "I_Fu_P2_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1368,3564],0,0,-1)
    {
    Name = "I_Fu_P2_b"
    }
   -Wire-([1368,3564],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3600],0,115996944,1850)
    {
    Name = "I_Fu_P2_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1368,3600],0,0,-1)
    {
    Name = "I_Fu_P2_c"
    }
   -Wire-([1368,3600],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3456],0,115997760,1690)
    {
    Name = "U_Fu_P2_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1368,3456],0,0,-1)
    {
    Name = "U_Fu_P2_b"
    }
   -Wire-([1368,3456],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3492],0,115998576,1730)
    {
    Name = "U_Fu_P2_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1368,3492],0,0,-1)
    {
    Name = "U_Fu_P2_c"
    }
   -Wire-([1368,3492],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1530,3528],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2898,2088],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([1620,1440],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([1692,1440],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   0.xfmr-3p2w([2430,1134],0,0,3180)
    {
    Name = "YD_Fu_P2_B2"
    Tmva = "1626.33 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.000440 [p.u.]"
    CuL = "0.002488 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "770 [kV]"
    V2 = "242.10 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B2_Fu_P2"
    ILB2 = "IVD_b_B2_Fu_P2"
    ILC2 = "IVD_c_B2_Fu_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.xfmr-3p2w([2430,1368],0,0,3190)
    {
    Name = "YY_Fu_P2_B2"
    Tmva = "1626.33 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.000440 [p.u.]"
    CuL = "0.002563 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "770 [kV]"
    V2 = "242.10 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B2_Fu_P2"
    ILB2 = "IVY_b_B2_Fu_P2"
    ILC2 = "IVY_c_B2_Fu_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.xfmr-3p2w([2430,2430],0,0,2620)
    {
    Name = "YY_Fu_P2_B1"
    Tmva = "1626.33 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00235 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "770 [kV]"
    V2 = "242.10 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B1_Fu_P2"
    ILB2 = "IVY_b_B1_Fu_P2"
    ILC2 = "IVY_c_B1_Fu_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.xfmr-3p2w([2430,2196],0,0,2580)
    {
    Name = "YD_Fu_P2_B1"
    Tmva = "1626.33 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00241 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "770 [kV]"
    V2 = "242.10 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B1_Fu_P2"
    ILB2 = "IVD_b_B1_Fu_P2"
    ILC2 = "IVD_c_B1_Fu_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   -Wire-([2304,1332],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,1404],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,2394],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,2430],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,2466],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([3348,1026],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([3276,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([3276,1026],2,0,-1)
    {
    L = "0.075 [H]"
    }
   0.inductor([3312,2574],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([3240,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([3240,2574],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([3312,2574],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3420,2574],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3528,2574],0,0,-1)
    {
    Vertex="0,0;522,0"
    }
   0.capacitor([4068,936],3,0,-1)
    {
    C = "16.0 [uF]"
    }
   0.ground([4068,900],5,0,-1)
    {
    }
   -Wire-([3384,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4140,2574],0,0,-1)
    {
    Vertex="0,0;0,-666"
    }
   -Wire-([4122,1026],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   1.Breaker_3ph([1890,2430],0,0,6450)
    {
    Ctrl = "0"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "0"
    ViewB = "1"
    DisPQ = "0"
    NAME = "BRK_Fu_P2_B1"
    NAMEA = "BRKA"
    NAMEB = "BRKB"
    NAMEC = "BRKC"
    ROFF = "1.0e6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [s]"
    TDB = "0.0 [s]"
    TDC = "0.0 [s]"
    TDRA = "0.05 [s]"
    TDRB = "0.05 [s]"
    TDRC = "0.05 [s]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   1.Breaker_3ph([1890,1368],0,0,150)
    {
    Ctrl = "0"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "0"
    ViewB = "1"
    DisPQ = "0"
    NAME = "BRK_Fu_P2_B2"
    NAMEA = "BRKA"
    NAMEB = "BRKB"
    NAMEC = "BRKC"
    ROFF = "1.0e6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [s]"
    TDB = "0.0 [s]"
    TDC = "0.0 [s]"
    TDRA = "0.05 [s]"
    TDRB = "0.05 [s]"
    TDRC = "0.05 [s]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.pgb([1602,3420],0,116003472,1660)
    {
    Name = "Ud_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1530,3420],0,0,-1)
    {
    Name = "Ud_Fu_P2"
    }
   -Wire-([1530,3420],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1602,3456],0,116004288,1710)
    {
    Name = "Idn_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1530,3456],0,0,-1)
    {
    Name = "Idn_Fu_P2"
    }
   -Wire-([1530,3456],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1602,3492],0,116005104,1740)
    {
    Name = "Idf_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1530,3492],0,0,-1)
    {
    Name = "Idf_Fu_P2"
    }
   -Wire-([1530,3492],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ammeter([4068,1278],7,0,210)
    {
    Name = "Idf_Fu_P2"
    }
   -Wire-([4068,1566],0,0,-1)
    {
    Vertex="0,0;0,-252"
    }
   -Wire-([4068,1278],0,0,-1)
    {
    Vertex="0,0;0,-252"
    }
   -Wire-([3150,1026],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([3078,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3150,2574],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ground([3384,2664],1,0,-1)
    {
    }
   -Wire-([3384,2610],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([3384,2664],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2970,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3114,1026],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2970,1512],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4068,1026],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([3006,2574],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2934,2088],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2934,2574],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3114,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1710,2466],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3078,2268],0,0,-1)
    {
    Vertex="0,0;0,-180"
    }
   -Wire-([3078,2340],0,0,-1)
    {
    Vertex="0,0;0,234"
    }
   -Wire-([3078,1224],0,0,-1)
    {
    Vertex="0,0;0,-198"
    }
   -Wire-([3078,1296],0,0,-1)
    {
    Vertex="0,0;0,216"
    }
   0.mult([576,3816],0,0,4070)
    {
    }
   0.datalabel([432,3816],0,0,-1)
    {
    Name = "Ud_Fu_P2"
    }
   0.datalabel([576,3870],0,0,-1)
    {
    Name = "Idn_Fu_P2"
    }
   -Wire-([576,3870],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([720,3816],0,0,-1)
    {
    Name = "Pd_Fu_P2"
    }
   -Wire-([432,3816],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([810,3888],6,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.mult([666,3816],0,0,4650)
    {
    }
   0.compar([738,3888],4,0,4640)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "-1"
    }
   -Wire-([792,3888],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.const([792,3924],2,0,2130)
    {
    Name = ""
    Value = "0.5"
    }
   -Wire-([756,3924],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([810,3888],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([612,3816],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([666,3888],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.select([468,3960],6,0,3140)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([468,3870],6,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.const([396,3996],0,0,2170)
    {
    Name = ""
    Value = "-1.0"
    }
   0.const([396,3960],0,0,2120)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([504,3960],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   0.unity([468,3924],1,0,2090)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([468,3888],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,3888],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.mult([504,3816],0,0,3460)
    {
    }
   0.radiolink([720,3798],3,0,4660)
    {
    Source = ""
    Name = "Pd_Fu_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([720,3816],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([702,3816],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3582,3780],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3384,3618],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2304,1098],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,1134],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2304,1170],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([3402,1026],6,0,-1)
    {
    L = "0.075 [H]"
    }
   0.capacitor([3438,972],2,0,-1)
    {
    C = "135.1 [uF]"
    }
   -Wire-([3384,1026],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3456,1008],0,0,-1)
    {
    Vertex="0,0;0,-36;-18,-36"
    }
   -Wire-([3402,972],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,54"
    }
   -Wire-([3456,1026],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([3384,1026],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3474,1026],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3564,1026],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([3690,1026],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   0.annotation([2232,1530],4,0,-1)
    {
    AL1 = "LV - Y"
    AL2 = ""
    }
   0.inductor([2970,1026],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2970,1512],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2934,2088],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2934,2574],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.var([2286,1890],0,116015712,350)
    {
    Name = "Tap_Fu_P2_B1"
    Group = ""
    Display = "0"
    Max = "23"
    Min = "-5"
    Value = "0.0"
    Units = ""
    Collect = "1"
    }
   -Wire-([2322,1890],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.mult([2430,1890],0,0,2540)
    {
    }
   0.const([2394,1926],0,0,370)
    {
    Name = ""
    Value = "0.0125"
    }
   -Wire-([2466,1890],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.sumjct([2538,1890],0,0,2550)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([2502,1926],0,0,380)
    {
    Name = ""
    Value = "1.0"
    }
   0.datalabel([2628,1890],0,0,-1)
    {
    Name = "TapP_Fu_P2_B1"
    }
   -Sticky-([2286,1584],0)
    {
    Name = ""
    Font = 1
    Bounds = 2286,1584,2394,1638
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Input is tappos, +23/-5
step size 1.25%
"
    }
   -Sticky-([2484,1566],0)
    {
    Name = ""
    Font = 1
    Bounds = 2484,1566,2610,1656
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Output is
TapX= 1 + tp*0.0125
to trafo

TCP, Tappos to ctrl"
    }
   0.datalabel([2628,1998],0,0,-1)
    {
    Name = "TCP_Fu_P2_B1"
    }
   0.mult([2412,1998],0,0,2560)
    {
    }
   0.const([2376,2034],0,0,390)
    {
    Name = ""
    Value = "-1.0"
    }
   0.sumjct([2538,1998],0,0,2570)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([2502,2034],0,0,400)
    {
    Name = ""
    Value = "23.0"
    }
   -Wire-([2448,1998],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2574,1890],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2574,1998],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2376,1998],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-108"
    }
   0.var([2286,1692],0,116020200,280)
    {
    Name = "Tap_Fu_P2_B2"
    Group = ""
    Display = "0"
    Max = "23"
    Min = "-5"
    Value = "0.0"
    Units = ""
    Collect = "1"
    }
   -Wire-([2322,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.mult([2430,1692],0,0,2500)
    {
    }
   0.const([2394,1728],0,0,290)
    {
    Name = ""
    Value = "0.0125"
    }
   -Wire-([2466,1692],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.sumjct([2538,1692],0,0,2510)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([2502,1728],0,0,300)
    {
    Name = ""
    Value = "1.0"
    }
   0.datalabel([2628,1692],0,0,-1)
    {
    Name = "TapP_Fu_P2_B2"
    }
   0.datalabel([2628,1800],0,0,-1)
    {
    Name = "TCP_Fu_P2_B2"
    }
   0.mult([2412,1800],0,0,2520)
    {
    }
   0.const([2376,1836],0,0,310)
    {
    Name = ""
    Value = "-1.0"
    }
   0.sumjct([2538,1800],0,0,2530)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([2502,1836],0,0,320)
    {
    Name = ""
    Value = "23.0"
    }
   -Wire-([2448,1800],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2574,1692],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2574,1800],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2376,1800],0,0,-1)
    {
    Vertex="0,0;-36,0;-36,-108"
    }
   0.datamerge([3168,3150],3,0,3680)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   -Wire-([3114,3114],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3132,3096],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datamerge([3474,3042],0,0,3670)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   -Wire-([3402,3150],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.datalabel([2988,3096],2,0,-1)
    {
    Name = "UDref_Fu_P2"
    }
   -Wire-([3096,3096],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4590,3096],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([4572,3096],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([4608,3096],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.datamerge([4644,3114],3,0,1650)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.datamerge([3276,3492],2,0,3060)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.datamerge([4464,3150],3,0,2980)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.const([4626,3060],1,0,1570)
    {
    Name = ""
    Value = "0.0"
    }
   0.const([4518,3096],1,0,1620)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4572,3078],1,0,-1)
    {
    Name = "U_Fu_P2_a"
    }
   0.datalabel([2988,3132],2,0,-1)
    {
    Name = "Iord_Fu_P2"
    }
   0.datalabel([4590,3060],1,0,-1)
    {
    Name = "U_Fu_P2_b"
    }
   0.datalabel([4608,3042],1,0,-1)
    {
    Name = "U_Fu_P2_c"
    }
   -Wire-([3150,3132],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([3024,3114],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.datalabel([2988,3078],2,0,-1)
    {
    Name = "Pref_Fu_P2"
    }
   -Wire-([3024,3096],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3042,3132],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.radiolink([2898,3060],4,0,1370)
    {
    Source = "Main"
    Name = "Freq_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,3060],2,0,-1)
    {
    Name = "Freq_Ctrl_XS800"
    }
   -Wire-([2952,3060],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2952,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([2988,2754],2,0,-1)
    {
    Name = "Half_Mode_P2_XS800"
    }
   -Wire-([2952,3024],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2952,3024],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([2898,2988],4,0,1300)
    {
    Source = "Main"
    Name = "Bipole_Mode_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,2988],2,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   -Wire-([2952,2988],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2952,2988],0,0,-1)
    {
    Vertex="0,0;252,0;252,90"
    }
   0.radiolink([2898,2700],4,0,860)
    {
    Source = "Main"
    Name = "Bipole_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2898,2916],4,0,1180)
    {
    Source = "Main"
    Name = "SSDC_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,2916],2,0,-1)
    {
    Name = "SSDC_XS800"
    }
   0.datamerge([4482,4032],3,0,3500)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.const([4536,3978],1,0,2410)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4356,3078],2,0,-1)
    {
    Name = "IVD_a_B1_Fu_P2"
    }
   0.datalabel([4356,3096],2,0,-1)
    {
    Name = "IVY_c_B1_Fu_P2"
    }
   0.datalabel([4356,3114],2,0,-1)
    {
    Name = "IVY_b_B1_Fu_P2"
    }
   0.datalabel([4356,3132],2,0,-1)
    {
    Name = "IVY_a_B1_Fu_P2"
    }
   0.datalabel([4356,3042],2,0,-1)
    {
    Name = "IVD_c_B1_Fu_P2"
    }
   0.datalabel([4356,3060],2,0,-1)
    {
    Name = "IVD_b_B1_Fu_P2"
    }
   -Wire-([4356,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4356,3132],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4374,3114],0,0,-1)
    {
    Vertex="0,0;36,0;36,18"
    }
   -Wire-([4356,3096],0,0,-1)
    {
    Vertex="0,0;72,0;72,36"
    }
   -Wire-([4356,3078],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([4356,3060],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([4356,3042],0,0,-1)
    {
    Vertex="0,0;126,0;126,90"
    }
   -Wire-([4374,4014],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4374,3996],0,0,-1)
    {
    Vertex="0,0;54,0;54,18"
    }
   -Wire-([4374,3978],0,0,-1)
    {
    Vertex="0,0;72,0;72,36"
    }
   -Wire-([4374,3960],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([4374,3942],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([4374,3924],0,0,-1)
    {
    Vertex="0,0;126,0;126,90"
    }
   0.datalabel([4374,3960],2,0,-1)
    {
    Name = "IVD_a_B2_Fu_P2"
    }
   0.datalabel([4374,3978],2,0,-1)
    {
    Name = "IVY_c_B2_Fu_P2"
    }
   0.datalabel([4374,3996],2,0,-1)
    {
    Name = "IVY_b_B2_Fu_P2"
    }
   0.datalabel([4374,4014],2,0,-1)
    {
    Name = "IVY_a_B2_Fu_P2"
    }
   0.datalabel([4374,3924],2,0,-1)
    {
    Name = "IVD_c_B2_Fu_P2"
    }
   0.datalabel([4374,3942],2,0,-1)
    {
    Name = "IVD_b_B2_Fu_P2"
    }
   -Wire-([4374,3996],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([2898,3024],4,0,1330)
    {
    Source = "Main"
    Name = "CMR_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,3024],2,0,-1)
    {
    Name = "CMR_XS800"
    }
   0.radiolink([2898,2952],4,0,1230)
    {
    Source = "Main"
    Name = "TCOM_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,2952],2,0,-1)
    {
    Name = "TCOM_XS800"
    }
   0.radiolink([2736,2880],4,0,1080)
    {
    Source = "Main"
    Name = "Red_Volt_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,2862],2,0,-1)
    {
    Name = "Red_Volt_P2_XS800"
    }
   0.radiolink([2898,2808],4,0,1000)
    {
    Source = "Main"
    Name = "Damp_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2988,2808],2,0,-1)
    {
    Name = "Damp_Ctrl_XS800"
    }
   -Wire-([2898,2862],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3024,3060],0,0,-1)
    {
    Vertex="0,0;144,0;144,72"
    }
   -Wire-([3024,3024],0,0,-1)
    {
    Vertex="0,0;162,0;162,108"
    }
   -Wire-([3204,3078],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2898,2952],0,0,-1)
    {
    Vertex="0,0;324,0;324,180"
    }
   -Wire-([2898,2916],0,0,-1)
    {
    Vertex="0,0;342,0;342,216"
    }
   -Wire-([2952,2862],0,0,-1)
    {
    Vertex="0,0;306,0;306,252"
    }
   -Wire-([2898,2808],0,0,-1)
    {
    Vertex="0,0;378,0;378,288"
    }
   -Wire-([2898,2754],0,0,-1)
    {
    Vertex="0,0;396,0;396,324"
    }
   -Wire-([2898,2700],0,0,-1)
    {
    Vertex="0,0;414,0;414,342"
    }
   -Wire-([3312,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   1.Array_Adder([3366,3132],6,0,3690)
    {
    Type = "2"
    Adim = "12"
    Bdim = "1"
    Cdim = "13"
    Disp = "1"
    }
   -Wire-([3402,3132],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.datalabel([3582,3204],2,0,-1)
    {
    Name = "TelD_P2_Fe"
    }
   0.datalabel([3690,3204],2,0,-1)
    {
    Name = "TelD_P2_Fu"
    }
   -Wire-([2988,3078],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([2988,3096],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2988,3132],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3276,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([3132,3546],4,0,2010)
    {
    Source = "DCFG_XS800_P1"
    Name = "Down_Rect_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([3132,3564],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   1.Classic_MC2([4932,3006],0,0,3760)
    {
    SYS_ID = "Fulong_P2_B1"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "2"
    AP11 = "2"
    AP12 = "2"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   -Wire-([4554,3150],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   1.Classic_MC2([4950,3888],0,0,3770)
    {
    SYS_ID = "Fulong_P2_B2"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "2"
    AP11 = "2"
    AP12 = "2"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   -Wire-([4608,3978],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([4590,3978],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([4626,3978],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.datamerge([4662,3996],3,0,2420)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.const([4644,3942],1,0,2400)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4590,3960],1,0,-1)
    {
    Name = "U_Fu_P2_a"
    }
   0.datalabel([4608,3942],1,0,-1)
    {
    Name = "U_Fu_P2_b"
    }
   0.datalabel([4626,3924],1,0,-1)
    {
    Name = "U_Fu_P2_c"
    }
   -Wire-([4590,3150],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4572,4032],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3780,3294],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3276,3294],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([5202,3960],2,0,-1)
    {
    Name = "FPD_Fu_P2_B2"
    }
   0.datalabel([5202,3996],2,0,-1)
    {
    Name = "FTD_Fu_P2_B2"
    }
   -Wire-([5166,3888],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5220,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datamerge([5382,3816],7,0,4050)
    {
    N = "6"
    Type = "1"
    Disp = "1"
    }
   0.datatap([5274,3870],6,0,3780)
    {
    Index = "1"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,3870],6,0,4040)
    {
    Index = "2"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5346,3870],6,0,4030)
    {
    Index = "3"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5364,3870],6,0,4020)
    {
    Index = "4"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5382,3870],6,0,4010)
    {
    Index = "5"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5400,3870],6,0,4000)
    {
    Index = "6"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datalabel([5508,3816],0,0,-1)
    {
    Name = "FPY_Fu_P2_B2"
    }
   -Wire-([5436,3816],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datamerge([5382,3996],3,0,3990)
    {
    N = "6"
    Type = "2"
    Disp = "1"
    }
   -Wire-([5436,3996],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5508,3996],6,0,-1)
    {
    Name = "FTY_Fu_P2_B2"
    }
   0.select([5382,3726],6,0,3820)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5220,3672],6,0,-1)
    {
    Name = "CF_Fu_P2_B2"
    }
   0.unity([5292,3672],0,0,2370)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5310,3762],0,0,2390)
    {
    Name = ""
    Value = "0.0"
    }
   0.unity([5454,3726],0,0,3900)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5346,3726],0,0,3790)
    {
    IType = "1"
    OType = "2"
    }
   0.monostable([5328,3672],0,0,2380)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5220,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([5382,4086],0,0,3980)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5220,4140],6,0,-1)
    {
    Name = "CF_Fu_P2_B2"
    }
   0.unity([5292,4140],6,0,2440)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5310,4050],6,0,2430)
    {
    Name = ""
    Value = "0.0"
    }
   0.monostable([5328,4140],6,0,2450)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5220,4140],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5310,4086],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5418,4086],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5364,4140],0,0,-1)
    {
    Vertex="0,0;18,0;18,-18"
    }
   -Wire-([5364,3672],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([5184,3960],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5184,3996],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5166,3960],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5166,3996],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5166,3924],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5166,3834],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5400,3870],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5382,3870],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5364,3870],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5346,3870],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5328,3870],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5238,3888],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5292,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5310,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5328,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5346,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5364,3888],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5274,3870],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([5274,3798],0,0,-1)
    {
    Vertex="0,0;0,-72;36,-72"
    }
   -Wire-([5454,3726],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;-162,72;-162,108;-144,108"
    }
   0.datatap([5274,3942],0,0,3890)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,3942],0,0,3880)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5346,3942],0,0,3870)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5364,3942],0,0,3860)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5382,3942],0,0,3850)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5400,3942],0,0,3840)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([5238,3924],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5292,3924],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5310,3924],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5328,3924],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5346,3924],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5364,3924],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5400,3942],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5382,3942],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5364,3942],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5346,3942],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5328,3942],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5274,3942],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([5274,4014],0,0,-1)
    {
    Vertex="0,0;0,72;36,72"
    }
   -Wire-([5454,4086],0,0,-1)
    {
    Vertex="0,0;0,-72;-162,-72;-162,-126;-144,-126;-144,-108"
    }
   -Wire-([5472,3816],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5472,3996],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3834,2916],0,116057736,1320)
    {
    Name = "Down_Fu_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Down"
    Toff = "Normal"
    }
   0.datalabel([4086,2916],4,0,-1)
    {
    Name = "Down_Fu_P2"
    }
   0.logic_mult([3744,2826],0,0,3350)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([4068,2916],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([3978,2916],6,0,3390)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3870,2916],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4014,2916],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([3852,2952],0,0,1360)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([3888,2952],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3924,2862],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3978,2880],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([3636,2808],0,0,1130)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3636,2844],0,0,2860)
    {
    IType = "2"
    OType = "1"
    }
   0.radiolink([3564,2808],2,0,1100)
    {
    Source = "DCFG_XS800_P2"
    Name = "Down_Rect_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([3564,2844],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.logic_mult([3906,2862],0,0,3370)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([3744,2898],0,0,2920)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([3780,2826],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3780,2898],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.radiolink([3564,2916],2,0,1270)
    {
    Source = "DCFG_XS800_P2"
    Name = "Down_Inv_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.inv([3654,2880],0,0,2890)
    {
    INTR = "0"
    }
   0.unity([3636,2916],0,0,1310)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3636,2880],0,0,2880)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3564,2808],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3636,2808],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3564,2844],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3636,2844],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3600,2844],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3636,2880],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3564,2916],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3636,2916],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3690,2808],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3690,2844],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3690,2880],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3690,2916],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([3978,3420],6,0,-1)
    {
    Name = "LAN_Out_PCC_Fu_P2"
    }
   0.datalabel([4266,3402],6,0,-1)
    {
    Name = "LAN_In_Fu_P2_B1"
    }
   0.datalabel([4266,3438],6,0,-1)
    {
    Name = "LAN_In_Fu_P2_B2"
    }
   0.datalabel([4266,3258],2,0,-1)
    {
    Name = "LAN_Out_Fu_P2_B1"
    }
   0.datalabel([4266,3294],2,0,-1)
    {
    Name = "LAN_Out_Fu_P2_B2"
    }
   0.datalabel([3978,3276],2,0,-1)
    {
    Name = "LAN_In_PCC_Fu_P2"
    }
   0.datalabel([5202,3834],6,0,-1)
    {
    Name = "LAN_Out_Fu_P2_B2"
    }
   0.datalabel([3258,3294],6,0,-1)
    {
    Name = "LAN_In_PCC_Fu_P2"
    }
   -Wire-([3258,3294],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([3834,3294],6,0,-1)
    {
    Name = "LAN_Out_PCC_Fu_P2"
    }
   -Wire-([3798,3294],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2988,2700],2,0,-1)
    {
    Name = "Bipole_Ctrl_XS800"
    }
   1.Classic_MC1([3564,3330],0,0,3740)
    {
    SYS_ID = "Fulong_P2_PCC"
    SET15 = "1"
    SET21 = "2.0"
    SET22 = "3200.0"
    SET23 = "530.0"
    SET24 = "230.0"
    SET25 = "800.0"
    SET26 = "0.0"
    SET27 = "4000.0"
    SET28 = "50.0"
    SET29 = "Gamma_REF_Fu_P2"
    SET30 = "15.0"
    SET16 = "6252.0"
    SET14 = "1.0"
    SET33 = "0.09"
    SET34 = "0.003"
    SET35 = "0.0"
    SET36 = "235.2"
    SET31 = "23.0"
    SET32 = "0.0125"
    CFC1 = "Gamma_Min"
    CFC16 = "TC_Up_Inv"
    CFC2 = "0.092"
    CFC17 = "0.092"
    CFC3 = "VCA_Gain_P"
    CFC18 = "0.092"
    CFC4 = "AMAX_Gain"
    CFC19 = "0.092"
    CFC5 = "600.0"
    CFC20 = "0.092"
    CFC21 = "0.003"
    CFC6 = "0.8"
    CFC7 = "Gain"
    CFC22 = "Gamma0_Set"
    CFC8 = "Kp"
    CFC23 = "Gamma0_Reset"
    CFC9 = "IO_Lim"
    CFC24 = "RAML_Dec"
    CFC10 = "Ud_High"
    CFC25 = "600.0"
    CFC11 = "Ud_Low_Rec"
    CFC26 = "600.0"
    CFC12 = "Ud_Low_Inv"
    CFC27 = "CRAML_Ref"
    CFC13 = "TC_Dn_Rec"
    CFC28 = "RAML_Ref"
    CFC14 = "TC_Dn_Inv"
    CFC29 = "CDL_Lev"
    CFC15 = "TC_Up_Rec"
    CFC30 = "DL_Lev"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "0"
    AP11 = "2"
    AP12 = "0"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   0.datalabel([990,3456],2,0,-1)
    {
    Name = "Ivy_Fu_P2_B1"
    }
   0.datatap([1062,3438],6,0,5390)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3438],6,0,5380)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3438],6,0,5370)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3438],6,0,5360)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1206,3438],6,0,5350)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1242,3438],6,0,5340)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1062,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1062,3420],3,116070792,5450)
    {
    Name = "Ivy_Fu_P2_B1_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3420],3,116071200,5440)
    {
    Name = "Ivy_Fu_P2_B1_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1098,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1134,3420],3,116071608,5430)
    {
    Name = "Ivy_Fu_P2_B1_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3420],3,116072016,5420)
    {
    Name = "Ivy_Fu_P2_B1_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1134,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1206,3420],3,116072424,5410)
    {
    Name = "Ivy_Fu_P2_B1_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1242,3420],3,116072832,5400)
    {
    Name = "Ivy_Fu_P2_B1_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1206,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1242,3438],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([990,3456],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([990,3546],2,0,-1)
    {
    Name = "Ivd_Fu_P2_B1"
    }
   0.datatap([1062,3528],6,0,5250)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3528],6,0,5220)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3528],6,0,5200)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3528],6,0,5180)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1206,3528],6,0,5160)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1242,3528],6,0,5130)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1062,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1062,3510],3,116076096,5330)
    {
    Name = "Ivd_Fu_P2_B1_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3510],3,116076504,5320)
    {
    Name = "Ivd_Fu_P2_B1_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1098,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1134,3510],3,116076912,5310)
    {
    Name = "Ivd_Fu_P2_B1_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3510],3,116077320,5290)
    {
    Name = "Ivd_Fu_P2_B1_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1134,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1206,3510],3,116077728,5270)
    {
    Name = "Ivd_Fu_P2_B1_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1242,3510],3,116078136,5240)
    {
    Name = "Ivd_Fu_P2_B1_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1206,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1242,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([990,3546],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([990,3636],2,0,-1)
    {
    Name = "Ivy_Fu_P2_B2"
    }
   0.datatap([1062,3618],6,0,4880)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3618],6,0,4860)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3618],6,0,4840)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3618],6,0,4820)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1206,3618],6,0,4810)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1242,3618],6,0,4800)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1062,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1134,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1206,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1242,3618],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([990,3636],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([990,3726],2,0,-1)
    {
    Name = "Ivd_Fu_P2_B2"
    }
   0.datatap([1062,3708],6,0,4730)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3708],6,0,4710)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3708],6,0,4700)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3708],6,0,4690)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1206,3708],6,0,4680)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1242,3708],6,0,4670)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1062,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1134,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1206,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1242,3708],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([990,3726],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.pgb([1062,3600],3,116084256,4990)
    {
    Name = "Ivy_Fu_P2_B2_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3600],3,116084664,4970)
    {
    Name = "Ivy_Fu_P2_B2_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1134,3600],3,116085072,4950)
    {
    Name = "Ivy_Fu_P2_B2_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3600],3,116085480,4930)
    {
    Name = "Ivy_Fu_P2_B2_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1206,3600],3,116085888,4910)
    {
    Name = "Ivy_Fu_P2_B2_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1242,3600],3,116086296,4890)
    {
    Name = "Ivy_Fu_P2_B2_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1062,3690],3,116086704,4780)
    {
    Name = "Ivd_Fu_P2_B2_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3690],3,116087112,4770)
    {
    Name = "Ivd_Fu_P2_B2_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1134,3690],3,116087520,4760)
    {
    Name = "Ivd_Fu_P2_B2_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3690],3,116087928,4750)
    {
    Name = "Ivd_Fu_P2_B2_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1206,3690],3,116088336,4740)
    {
    Name = "Ivd_Fu_P2_B2_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1242,3690],3,116088744,4720)
    {
    Name = "Ivd_Fu_P2_B2_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1602,3600],0,116089152,4790)
    {
    Name = "Pd_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "7000"
    }
   0.datalabel([1530,3600],0,0,-1)
    {
    Name = "Pd_Fu_P2"
    }
   -Wire-([1530,3600],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3834,3474],2,0,-1)
    {
    Name = "Plot_PCC_Fu_P2"
    }
   -Wire-([3780,3474],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([5202,4050],2,0,-1)
    {
    Name = "Plot_Fu_P2_B2"
    }
   -Wire-([5166,4050],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([378,3294],2,0,-1)
    {
    Name = "Plot_PCC_Fu_P2"
    }
   0.datalabel([864,3294],2,0,-1)
    {
    Name = "Plot_Fu_P2_B1"
    }
   0.datalabel([1332,3294],2,0,-1)
    {
    Name = "Plot_Fu_P2_B2"
    }
   0.pgb([936,3258],5,116092008,6160)
    {
    Name = "Alpha_Ord_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([972,3258],5,116092416,6140)
    {
    Name = "Alpha_Meas_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,3258],5,116092824,6130)
    {
    Name = "Overlap_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1044,3258],5,116093232,6120)
    {
    Name = "Gamma_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1404,3258],5,116093640,5900)
    {
    Name = "Alpha_Ord_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1440,3258],5,116094048,5860)
    {
    Name = "Alpha_Meas_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1476,3258],5,116094456,5840)
    {
    Name = "Overlap_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1512,3258],5,116094864,5820)
    {
    Name = "Gamma_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([4770,2736],4,0,-1)
    {
    Name = "BPP_Fu_P2_B1"
    }
   0.var_switch([4662,2736],0,116095680,1170)
    {
    Name = "BPP_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "BPP"
    Toff = "Normal"
    }
   -Wire-([4716,2736],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4662,2664],0,116096088,1060)
    {
    Name = "CF_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "CF"
    Toff = "Normal"
    }
   0.datalabel([4770,2664],4,0,-1)
    {
    Name = "CF_Fu_P2_B1"
    }
   -Wire-([4716,2664],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inv([5004,2610],0,0,3530)
    {
    INTR = "0"
    }
   0.var_switch([4662,2700],0,116097312,1110)
    {
    Name = "A90_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "A90"
    Toff = "Normal"
    }
   0.datalabel([4770,2700],4,0,-1)
    {
    Name = "A90_Fu_P2_B1"
    }
   -Wire-([4716,2700],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2736],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4680,3564],0,116098128,2160)
    {
    Name = "CF_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "CF"
    Toff = "Normal"
    }
   0.datalabel([4770,3564],4,0,-1)
    {
    Name = "CF_Fu_P2_B2"
    }
   -Wire-([4716,3564],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4626,3834],6,0,-1)
    {
    Name = "LAN_In_Fu_P2_B2"
    }
   -Wire-([4626,3834],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4608,2952],6,0,-1)
    {
    Name = "LAN_In_Fu_P2_B1"
    }
   -Wire-([4608,2952],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datamerge([4842,2718],0,0,3560)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([4932,2682],4,0,-1)
    {
    Name = "Ret_Fu_P2_B1"
    }
   0.datalabel([4932,2790],4,0,-1)
    {
    Name = "Station_Fu_P2"
    }
   0.datalabel([4932,2826],0,0,-1)
    {
    Name = "Res_BPP_Fu_P2_B1"
    }
   0.datalabel([4932,2844],0,0,-1)
    {
    Name = "Y_Block_Fu_P2_B1"
    }
   0.datalabel([4932,2646],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.datalabel([4932,2664],4,0,-1)
    {
    Name = "Debl_Fu_P2_B1"
    }
   -Wire-([4860,2682],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4932,2808],4,0,-1)
    {
    Name = "BPP_Fu_P2_B1"
    }
   -Wire-([4860,2808],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4860,2718],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4932,2718],4,0,-1)
    {
    Name = "A90_Fu_P2_B1"
    }
   0.datalabel([4788,3762],2,0,-1)
    {
    Name = "TCP_Fu_P2_B2"
    }
   -Wire-([4860,2664],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4860,2736],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4860,2790],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4860,2826],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4860,2844],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4770,2880],2,0,-1)
    {
    Name = "TCP_Fu_P2_B1"
    }
   0.var_switch([4878,2610],0,116104248,1010)
    {
    Name = "Debl_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Deblock"
    Toff = "Block"
    }
   0.logic([4968,2574],6,0,3520)
    {
    Type = "1"
    Inv = "0"
    }
   0.compar([4662,2448],0,0,2690)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   -Wire-([4608,2448],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.time-sig([4572,2448],0,0,810)
    {
    }
   0.annotation([4590,2412],0,0,-1)
    {
    AL1 = "  START SEQUENCE:  "
    AL2 = ""
    }
   0.var([4626,2484],0,116106288,830)
    {
    Name = "T_start_inv_B1"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.1"
    Units = "s"
    Collect = "1"
    }
   -Wire-([4752,2538],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4806,2538],2,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   -Wire-([4608,2574],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.compar([4662,2574],0,0,2730)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.var([4626,2610],0,116107512,980)
    {
    Name = "T_start_rect_B1"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.25"
    Units = "s"
    Collect = "1"
    }
   0.buffer([4752,2520],3,0,2710)
    {
    HI = "0.5"
    LO = "0.5"
    Inv = "1"
    INTR = "0"
    }
   -Wire-([4752,2520],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4824,2574],0,0,3320)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4788,2574],0,0,2750)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4770,2610],0,0,2770)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4752,2538],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4734,2574],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4770,2610],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4860,2538],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4608,2448],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([4734,2448],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic([4824,2484],6,0,3300)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4788,2448],0,0,2700)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4788,2484],0,0,3290)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4860,2484],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4896,2538],6,0,3510)
    {
    Type = "2"
    Inv = "0"
    }
   0.unity([4950,2610],0,0,1030)
    {
    IType = "2"
    OType = "3"
    }
   -Wire-([4950,2610],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18;-18,-36"
    }
   -Wire-([5004,2574],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -ControlPanel-([4356,2484],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4356,2484
    Extents = 0,0,108,126
    Slider(116107512)
    }
   -ControlPanel-([4464,2484],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4464,2484
    Extents = 0,0,108,126
    Slider(116106288)
    }
   -Wire-([5004,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4914,2664],0,0,-1)
    {
    Vertex="0,0;90,0;90,-18"
    }
   0.logic([5040,2646],7,0,3550)
    {
    Type = "2"
    Inv = "0"
    }
   -Wire-([4914,2682],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.var_switch([5940,2628],0,116112000,1200)
    {
    Name = "Retard_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Retard"
    Toff = "Normal"
    }
   0.datalabel([4770,2772],4,0,-1)
    {
    Name = "Res_BPP_Fu_P2_B1"
    }
   0.var_switch([4662,2772],0,116112816,1220)
    {
    Name = "Res_BPP_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Reset"
    Toff = "Normal"
    }
   -Wire-([4716,2772],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4752,2772],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4698,2664],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4698,2700],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4698,2736],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4698,2772],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4662,2808],0,116113224,1290)
    {
    Name = "Y_Block_Fu_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Y_Block"
    Toff = "Normal"
    }
   0.datalabel([4770,2808],4,0,-1)
    {
    Name = "Y_Block_Fu_P2_B1"
    }
   -Wire-([4698,2808],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.consti([5022,2772],4,0,1280)
    {
    Name = ""
    Value = "0"
    }
   0.consti([5022,2754],4,0,1240)
    {
    Name = ""
    Value = "0"
    }
   0.consti([5022,2700],4,0,1160)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4914,2646],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4914,2790],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4914,2808],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4914,2826],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4914,2844],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4860,2772],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4860,2754],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4860,2700],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4914,2718],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.consti([5022,2736],4,0,1210)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4914,2736],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([4896,3474],0,116115672,2080)
    {
    Name = "Debl_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Deblock"
    Toff = "Block"
    }
   0.logic([4986,3438],6,0,3620)
    {
    Type = "1"
    Inv = "0"
    }
   0.compar([4680,3312],0,0,3030)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   -Wire-([4626,3312],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.time-sig([4590,3312],0,0,1880)
    {
    }
   0.annotation([4608,3276],0,0,-1)
    {
    AL1 = "  START SEQUENCE:  "
    AL2 = ""
    }
   0.var([4644,3348],0,116117712,1950)
    {
    Name = "T_start_inv_B2"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.1"
    Units = "s"
    Collect = "1"
    }
   -Wire-([4770,3402],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4824,3402],2,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   -Wire-([4626,3438],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.compar([4680,3438],0,0,3110)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.var([4644,3474],0,116118936,2070)
    {
    Name = "T_start_rect_B2"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.25"
    Units = "s"
    Collect = "1"
    }
   0.buffer([4770,3384],3,0,2020)
    {
    HI = "0.5"
    LO = "0.5"
    Inv = "1"
    INTR = "0"
    }
   -Wire-([4770,3384],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4842,3438],0,0,3470)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4806,3438],0,0,2060)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4788,3474],0,0,3120)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4770,3402],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4752,3438],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4788,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4878,3402],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4626,3312],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([4752,3312],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic([4842,3348],6,0,3080)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4806,3312],0,0,3040)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4806,3348],0,0,3070)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4878,3348],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4914,3402],6,0,3610)
    {
    Type = "2"
    Inv = "0"
    }
   0.unity([4968,3474],0,0,2100)
    {
    IType = "2"
    OType = "3"
    }
   -Wire-([4968,3474],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18;-18,-36"
    }
   -Wire-([5022,3438],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -ControlPanel-([4374,3348],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4374,3348
    Extents = 0,0,108,126
    Slider(116118936)
    }
   -ControlPanel-([4482,3348],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4482,3348
    Extents = 0,0,108,126
    Slider(116117712)
    }
   0.datamerge([4860,3600],0,0,3720)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([4950,3564],4,0,-1)
    {
    Name = "Ret_Fu_P2_B2"
    }
   0.datalabel([4950,3672],4,0,-1)
    {
    Name = "Station_Fu_P2"
    }
   0.datalabel([4950,3708],0,0,-1)
    {
    Name = "Res_BPP_Fu_P2_B2"
    }
   0.datalabel([4950,3726],0,0,-1)
    {
    Name = "Y_Block_Fu_P2_B2"
    }
   0.datalabel([4950,3528],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.datalabel([4950,3546],4,0,-1)
    {
    Name = "Debl_Fu_P2_B2"
    }
   -Wire-([4878,3564],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4950,3690],4,0,-1)
    {
    Name = "BPP_Fu_P2_B2"
    }
   -Wire-([4878,3690],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4878,3600],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4950,3600],4,0,-1)
    {
    Name = "A90_Fu_P2_B2"
    }
   -Wire-([4878,3546],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4878,3618],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4878,3672],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4878,3708],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4878,3726],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4932,3546],0,0,-1)
    {
    Vertex="0,0;90,0;90,-18"
    }
   0.consti([5040,3654],4,0,2330)
    {
    Name = ""
    Value = "0"
    }
   0.consti([5040,3636],4,0,2320)
    {
    Name = ""
    Value = "0"
    }
   0.consti([5040,3582],4,0,2240)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4932,3672],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4932,3690],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4932,3708],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4932,3726],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4878,3654],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4878,3636],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4878,3582],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4932,3600],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.consti([5040,3618],4,0,2270)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4932,3618],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.inv([5022,3492],0,0,3630)
    {
    INTR = "0"
    }
   -Wire-([5022,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.var_switch([5922,3546],0,116128728,2300)
    {
    Name = "Retard_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Retard"
    Toff = "Normal"
    }
   -Wire-([5022,3474],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([5058,3528],7,0,3710)
    {
    Type = "2"
    Inv = "0"
    }
   -Wire-([4878,3528],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4788,3636],4,0,-1)
    {
    Name = "BPP_Fu_P2_B2"
    }
   0.var_switch([4680,3636],0,116129952,2260)
    {
    Name = "BPP_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "BPP"
    Toff = "Normal"
    }
   -Wire-([4734,3636],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4680,3600],0,116130360,2190)
    {
    Name = "A90_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "A90"
    Toff = "Normal"
    }
   0.datalabel([4788,3600],4,0,-1)
    {
    Name = "A90_Fu_P2_B2"
    }
   -Wire-([4734,3600],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4770,3636],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([4788,3672],4,0,-1)
    {
    Name = "Res_BPP_Fu_P2_B2"
    }
   0.var_switch([4680,3672],0,116131584,2310)
    {
    Name = "Res_BPP_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Reset"
    Toff = "Normal"
    }
   -Wire-([4734,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4770,3672],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4716,3600],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4716,3636],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4716,3672],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4680,3708],0,116131992,2340)
    {
    Name = "Y_Block_Fu_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Y_Block"
    Toff = "Normal"
    }
   0.datalabel([4788,3708],4,0,-1)
    {
    Name = "Y_Block_Fu_P2_B2"
    }
   -Wire-([4716,3708],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5184,3078],2,0,-1)
    {
    Name = "FPD_Fu_P2_B1"
    }
   0.datalabel([5184,3114],2,0,-1)
    {
    Name = "FTD_Fu_P2_B1"
    }
   -Wire-([5148,3006],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5202,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datamerge([5364,2934],7,0,4300)
    {
    N = "6"
    Type = "1"
    Disp = "1"
    }
   0.datatap([5256,2988],6,0,3800)
    {
    Index = "1"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,2988],6,0,4240)
    {
    Index = "2"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,2988],6,0,4230)
    {
    Index = "3"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5346,2988],6,0,4220)
    {
    Index = "4"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5364,2988],6,0,4210)
    {
    Index = "5"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5382,2988],6,0,4200)
    {
    Index = "6"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datalabel([5490,2934],0,0,-1)
    {
    Name = "FPY_Fu_P2_B1"
    }
   -Wire-([5418,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datamerge([5364,3114],3,0,4190)
    {
    N = "6"
    Type = "2"
    Disp = "1"
    }
   -Wire-([5418,3114],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5490,3114],6,0,-1)
    {
    Name = "FTY_Fu_P2_B1"
    }
   0.select([5364,2844],6,0,3830)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5202,2790],6,0,-1)
    {
    Name = "CF_Fu_P2_B1"
    }
   0.unity([5274,2790],0,0,1340)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5292,2880],0,0,1410)
    {
    Name = ""
    Value = "0.0"
    }
   0.unity([5436,2844],0,0,3970)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5328,2844],0,0,3810)
    {
    IType = "1"
    OType = "2"
    }
   0.monostable([5310,2790],0,0,1350)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5202,2790],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([5364,3204],0,0,4080)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5202,3258],6,0,-1)
    {
    Name = "CF_Fu_P2_B1"
    }
   0.unity([5274,3258],6,0,1900)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5292,3168],6,0,1810)
    {
    Name = ""
    Value = "0.0"
    }
   0.monostable([5310,3258],6,0,1910)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5202,3258],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5292,3204],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5400,3204],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5346,3258],0,0,-1)
    {
    Vertex="0,0;18,0;18,-18"
    }
   -Wire-([5346,2790],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([5166,3078],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5166,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5148,3078],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5148,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5148,3042],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5148,2952],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5382,2988],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5364,2988],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5346,2988],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5328,2988],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5310,2988],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5220,3006],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5274,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5292,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5310,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5328,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5346,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5256,2988],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([5256,2916],0,0,-1)
    {
    Vertex="0,0;0,-72;36,-72"
    }
   -Wire-([5436,2844],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;-162,72;-162,108;-144,108"
    }
   0.datatap([5256,3060],0,0,3960)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,3060],0,0,3950)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,3060],0,0,3940)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5346,3060],0,0,3930)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5364,3060],0,0,3920)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5382,3060],0,0,3910)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([5220,3042],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5274,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5292,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5310,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5328,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5346,3042],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5382,3060],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5364,3060],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5346,3060],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5328,3060],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5310,3060],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5256,3060],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([5256,3132],0,0,-1)
    {
    Vertex="0,0;0,72;36,72"
    }
   -Wire-([5436,3204],0,0,-1)
    {
    Vertex="0,0;0,-72;-162,-72;-162,-126;-144,-126;-144,-108"
    }
   -Wire-([5454,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5454,3114],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5184,2952],6,0,-1)
    {
    Name = "LAN_Out_Fu_P2_B1"
    }
   0.datalabel([5184,3168],2,0,-1)
    {
    Name = "Plot_Fu_P2_B1"
    }
   -Wire-([5148,3168],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3492,2988],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3546,3096],4,0,-1)
    {
    Name = "Pctrl_Fu_P2"
    }
   0.consti([3636,3060],4,0,1430)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3492,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3492,3078],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3492,3114],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.consti([3636,3078],4,0,1470)
    {
    Name = ""
    Value = "0"
    }
   0.datalabel([3546,3114],4,0,-1)
    {
    Name = "Station_Fu_P2"
    }
   0.consti([3636,3150],4,0,1550)
    {
    Name = ""
    Value = "0"
    }
   0.consti([3636,3168],4,0,1590)
    {
    Name = ""
    Value = "0"
    }
   0.datalabel([3780,3096],4,0,-1)
    {
    Name = "Pctrl_Fu_P2"
    }
   0.var_switch([3690,3096],0,116148720,1490)
    {
    Name = "Pctrl_Fu_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Pwr"
    Toff = "Curr"
    }
   -Wire-([3726,3096],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3690,3060],0,116149128,1450)
    {
    Name = "Rect_Fu_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Rect"
    Toff = "Inv"
    }
   0.datalabel([3546,2970],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.datalabel([3780,2970],4,0,-1)
    {
    Name = "Debl_Fu_P2_B1"
    }
   0.consti([3636,3114],4,0,1520)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([3546,3096],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.datalabel([3780,3060],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   -Wire-([3726,3060],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3492,2970],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3546,3060],4,0,-1)
    {
    Name = "OLT_Fu_P2"
    }
   0.datalabel([3546,3078],4,0,-1)
    {
    Name = "VATG_Fu_P2"
    }
   0.datalabel([3546,3024],4,0,-1)
    {
    Name = "Down_Fu_P2"
    }
   0.annotation([3744,3114],0,0,-1)
    {
    AL1 = "Station = 1 - Fulong"
    AL2 = "Station = 0 - Fengxian"
    }
   -Wire-([3492,3024],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3762,3060],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3762,3096],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([3690,2988],2,0,3660)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.datalabel([3780,3006],4,0,-1)
    {
    Name = "Debl_Fu_P2_B2"
    }
   -Wire-([3528,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3726,2970],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3726,3006],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.consti([3636,3132],4,0,1530)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3492,3168],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3492,3150],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3492,3132],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3582,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3564,3078],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3564,3060],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.consti([3636,3042],4,0,1400)
    {
    Name = ""
    Value = "0"
    }
   0.consti([3636,3006],4,0,1380)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3492,3042],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3492,3006],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3582,2988],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.unity([5076,2610],2,0,3540)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5094,3492],2,0,3700)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([4356,3024],2,0,-1)
    {
    Name = "ID_B1_Fu_P2"
    }
   -Wire-([4356,3024],0,0,-1)
    {
    Vertex="0,0;144,0;144,108"
    }
   0.datalabel([4374,3906],2,0,-1)
    {
    Name = "ID_B2_Fu_P2"
    }
   -Wire-([4374,3906],0,0,-1)
    {
    Vertex="0,0;144,0;144,108"
    }
   0.ammeter([2790,1026],0,0,10)
    {
    Name = "ID_B2_Fu_P2"
    }
   -Wire-([2736,1026],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ammeter([2790,2088],0,0,420)
    {
    Name = "ID_B1_Fu_P2"
    }
   -Wire-([2736,2088],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4212,3402],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4212,3438],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4266,3294],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([4266,3258],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   1.LAN_BUS([4140,3294],4,0,3730)
    {
    noname534 = ""
    L1 = "25"
    L2 = "25"
    }
   1.BUS_TAP([4122,3438],0,0,3750)
    {
    noname6 = ""
    L_IN = "50"
    noname9 = ""
    OUT_1 = "25"
    OUT_2 = "25"
    }
   -Wire-([3978,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4194,3258],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4194,3294],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4194,3402],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4194,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3978,3420],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.capacitor([3384,2610],1,0,-1)
    {
    C = "0.0028 [uF]"
    }
   -Wire-([1836,1332],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1836,1368],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1836,1404],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Sticky-([648,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 648,3078,774,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: Alpha Order (P) 
Ch12: Alpha Order (I )
Ch13: Alpha Order (OVL) 
Ch14: Alpha Order (RAML) 
Ch15: I Order From APC 
Ch16: ID  
Ch17: ID Resp 
Ch18: I Order Lim
Ch19: UD  
Ch20: UD (VDCOL)"
    }
   0.annotation([630,3042],0,0,-1)
    {
    AL1 = "Signals from PCC"
    AL2 = ""
    }
   -Sticky-([936,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 936,3078,1098,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order
Ch2: Alpha Measured
Ch3: Overlap CFC
Ch4: Gamma CFC
Ch5: Alpha Order (SCA) 
Ch6: Alpha Order (Pole)
Ch7: Alpha PLL
Ch8: Ang Between Fire Meas
Ch9: Alpha PCO 
Ch10:Alpha SUB"
    }
   -Sticky-([1116,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 1116,3078,1278,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: IDNC 
Ch12: ID Resp Bridge
Ch13: Max IVY
Ch14: Max IVD
Ch15: HPERTIME
Ch16: EMG Fire Ind
Ch17: AMIN Fire Ind 
Ch18: UMIN Fire Ind
Ch19: Inc Gamma Ind
Ch20: ABZ Det Ind"
    }
   0.annotation([1116,3042],0,0,-1)
    {
    AL1 = "Signals from Bridge 1"
    AL2 = ""
    }
   0.annotation([1584,3042],0,0,-1)
    {
    AL1 = "Signals from Bridge 2"
    AL2 = ""
    }
   -Sticky-([1404,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 1404,3078,1566,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order
Ch2: Alpha Measured
Ch3: Overlap CFC
Ch4: Gamma CFC
Ch5: Alpha Order (SCA) 
Ch6: Alpha Order (Pole)
Ch7: Alpha PLL
Ch8: Ang Between Fire Meas
Ch9: Alpha PCO 
Ch10:Alpha SUB"
    }
   -Sticky-([1584,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 1584,3078,1746,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: IDNC 
Ch12: ID Resp Bridge
Ch13: Max IVY
Ch14: Max IVD
Ch15: HPERTIME
Ch16: EMG Fire Ind
Ch17: AMIN Fire Ind 
Ch18: UMIN Fire Ind
Ch19: Inc Gamma Ind
Ch20: ABZ Det Ind"
    }
   -Sticky-([468,3078],0)
    {
    Name = ""
    Font = 0
    Bounds = 468,3078,630,3204
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order (PCC)
Ch2: Alpha Order (CV1) 
Ch3: Alpha Order (CV2) 
Ch4: Alpha Max (CV1) 
Ch5: Alpha Max (CV2) 
Ch6: Alpha Max Lim (CV1) 
Ch7: Alpha Max Lim (CV2)  
Ch8: Alpha Min Lim (CV1)  
Ch9: Alpha Min Lim (CV2)   
Ch10: Alpha Order (VCA) "
    }
   0.datatap([468,3312],0,0,4550)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([504,3312],0,0,4540)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([540,3312],0,0,4530)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([576,3312],0,0,4520)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([612,3312],0,0,4510)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([648,3312],0,0,4500)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([684,3312],0,0,4490)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([720,3312],0,0,4480)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([756,3312],0,0,4470)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([792,3312],0,0,4460)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([450,3276],6,0,6290)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([486,3276],6,0,6280)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([522,3276],6,0,6250)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([558,3276],6,0,6240)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([594,3276],6,0,6220)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([630,3276],6,0,6200)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([666,3276],6,0,6190)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([702,3276],6,0,6180)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([738,3276],6,0,6170)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([774,3276],6,0,6150)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([450,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([558,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([594,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([630,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([666,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([702,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([738,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([774,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([468,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([540,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([576,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([612,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([648,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([684,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([720,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([756,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([792,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([378,3294],0,0,-1)
    {
    Vertex="0,0;396,0"
    }
   0.pgb([468,3330],1,116167080,6040)
    {
    Name = "Alpha_Order_P_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([504,3330],1,116167488,6030)
    {
    Name = "Alpha_Order_I_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([540,3330],1,116167896,5980)
    {
    Name = "Alpha_Order_OVL_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([576,3330],1,116168304,5970)
    {
    Name = "Alpha_Order_RAML_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([612,3330],1,116168712,5950)
    {
    Name = "I_Order_From_APC_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([648,3330],1,116169120,5930)
    {
    Name = "ID_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([684,3330],1,116169528,5890)
    {
    Name = "ID_Resp_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([720,3330],1,116169936,5880)
    {
    Name = "I_Order_Lim_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([756,3330],1,116170344,5850)
    {
    Name = "UD_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([792,3330],1,116170752,5830)
    {
    Name = "UD_VDCOL_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([450,3258],5,116171160,6350)
    {
    Name = "Alpha_Order_PCC_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([486,3258],5,116171568,6340)
    {
    Name = "Alpha_Order_CV1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([522,3258],5,116171976,6330)
    {
    Name = "Alpha_Order_CV2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([558,3258],5,116172384,6320)
    {
    Name = "Alpha_Max_CV1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([594,3258],5,116172792,6310)
    {
    Name = "Alpha_Max_CV2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([630,3258],5,116173200,6300)
    {
    Name = "Alpha_Max_Lim_CV1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([666,3258],5,116173608,6270)
    {
    Name = "Alpha_Max_Lim_CV2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([702,3258],5,116174016,6260)
    {
    Name = "Alpha_Min_Lim_CV1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([774,3258],5,116174424,6210)
    {
    Name = "Alpha_Order_VCA_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([738,3258],5,116174832,6230)
    {
    Name = "Alpha_Min_Lim_CV2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1008,3312],0,0,4430)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1044,3312],0,0,4420)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1080,3312],0,0,4410)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1116,3312],0,0,4400)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1152,3312],0,0,4390)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([936,3276],6,0,6090)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([972,3276],6,0,6080)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1008,3276],6,0,6060)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1044,3276],6,0,6010)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1080,3276],6,0,6000)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1116,3276],6,0,5960)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1152,3276],6,0,5940)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1188,3276],6,0,5920)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([936,3312],0,0,4450)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([972,3312],0,0,4440)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1080,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1116,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1152,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1188,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([936,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([972,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1008,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1044,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1080,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1116,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1152,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1188,3312],0,0,4380)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1188,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([864,3294],0,0,-1)
    {
    Vertex="0,0;306,0"
    }
   0.pgb([936,3330],1,116181768,5760)
    {
    Name = "IDNC_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([972,3330],1,116182176,5730)
    {
    Name = "ID_Resp_Bridge_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1008,3330],1,116182584,5680)
    {
    Name = "Max_IVY_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1044,3330],1,116182992,5660)
    {
    Name = "Max_IVD_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1080,3330],1,116183400,5650)
    {
    Name = "HPERTIME_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "ms"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "20"
    }
   0.pgb([1116,3330],1,116183808,5630)
    {
    Name = "EMG_Fire_Ind_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1152,3330],1,116184216,5600)
    {
    Name = "AMIN_Fire_Ind_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1188,3330],1,116184624,5590)
    {
    Name = "UMIN_Fire_Ind_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1080,3258],5,116185032,6110)
    {
    Name = "Alpha_Order_SCA_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1116,3258],5,116185440,6100)
    {
    Name = "Alpha_Order_Pole_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1188,3258],5,116185848,6050)
    {
    Name = "Ang_Between_Fire_Meas_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1152,3258],5,116186256,6070)
    {
    Name = "Alpha_PLL_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1224,3312],0,0,4370)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1224,3276],6,0,5910)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1260,3276],6,0,5870)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1224,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1260,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1224,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1260,3312],0,0,4360)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1260,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([1224,3330],1,116188296,5570)
    {
    Name = "Inc_Gamma_Ind_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1260,3330],1,116188704,5560)
    {
    Name = "ABZ_Det_Ind_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1260,3258],5,116189112,5990)
    {
    Name = "Alpha_SUB_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1224,3258],5,116189520,6020)
    {
    Name = "Alpha_PCO_Fu_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([1170,3294],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([936,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([972,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1008,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1044,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1476,3312],0,0,4330)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1512,3312],0,0,4320)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1548,3312],0,0,4310)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1584,3312],0,0,4290)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1620,3312],0,0,4280)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1404,3276],6,0,5800)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1440,3276],6,0,5780)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1476,3276],6,0,5750)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1512,3276],6,0,5720)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1548,3276],6,0,5690)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1584,3276],6,0,5670)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1620,3276],6,0,5640)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1656,3276],6,0,5620)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1404,3312],0,0,4350)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1440,3312],0,0,4340)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1404,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1440,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1476,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1512,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1548,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1584,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1620,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1656,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1404,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1440,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1476,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1512,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1548,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1584,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1620,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1656,3312],0,0,4270)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1656,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1332,3294],0,0,-1)
    {
    Vertex="0,0;306,0"
    }
   0.pgb([1404,3330],1,116196456,5550)
    {
    Name = "IDNC_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1440,3330],1,116196864,5540)
    {
    Name = "ID_Resp_Bridge_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1476,3330],1,116197272,5530)
    {
    Name = "Max_IVY_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1512,3330],1,116197680,5520)
    {
    Name = "Max_IVD_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1548,3330],1,116198088,5510)
    {
    Name = "HPERTIME_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "ms"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "20"
    }
   0.pgb([1584,3330],1,116198496,5500)
    {
    Name = "EMG_Fire_Ind_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1620,3330],1,116198904,5490)
    {
    Name = "AMIN_Fire_Ind_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1656,3330],1,116199312,5480)
    {
    Name = "UMIN_Fire_Ind_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1548,3258],5,116199720,5810)
    {
    Name = "Alpha_Order_SCA_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1584,3258],5,116200128,5790)
    {
    Name = "Alpha_Order_Pole_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1656,3258],5,116200536,5740)
    {
    Name = "Ang_Between_Fire_Meas_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1620,3258],5,116200944,5770)
    {
    Name = "Alpha_PLL_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1692,3312],0,0,4260)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1692,3276],6,0,5610)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1728,3276],6,0,5580)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1692,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1728,3276],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1692,3330],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1728,3312],0,0,4250)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1728,3312],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([1692,3330],1,116202984,5470)
    {
    Name = "Inc_Gamma_Ind_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1728,3330],1,116203392,5460)
    {
    Name = "ABZ_Det_Ind_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1728,3258],5,116203800,5700)
    {
    Name = "Alpha_SUB_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1692,3258],5,116204208,5710)
    {
    Name = "Alpha_PCO_Fu_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([1638,3294],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1602,3636],0,116204616,1920)
    {
    Name = "ID_B2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1530,3636],0,0,-1)
    {
    Name = "ID_B2_Fu_P2"
    }
   -Wire-([1530,3636],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1440,3636],0,116205432,1890)
    {
    Name = "ID_B1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1368,3636],0,0,-1)
    {
    Name = "ID_B1_Fu_P2"
    }
   -Wire-([1368,3636],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ground([2196,1242],1,0,-1)
    {
    }
   0.ground([2232,1242],1,0,-1)
    {
    }
   0.ground([2268,1242],1,0,-1)
    {
    }
   0.annotation([2232,1278],0,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([2232,1296],4,0,-1)
    {
    AL1 = "LV - D"
    AL2 = ""
    }
   -Wire-([2232,1368],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2304,1332],0,0,-1)
    {
    Vertex="0,0;-180,0"
    }
   0.jumper2([2124,1332],1,0,-1)
    {
    }
   0.jumper([2088,1332],1,0,-1)
    {
    }
   -Wire-([1926,1332],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1926,1368],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1926,1404],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.annotation([2232,2574],0,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([2232,2592],4,0,-1)
    {
    AL1 = "HV - Y"
    AL2 = ""
    }
   0.ground([2196,2304],1,0,-1)
    {
    }
   0.ground([2232,2304],1,0,-1)
    {
    }
   0.ground([2268,2304],1,0,-1)
    {
    }
   0.annotation([2232,2340],0,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([2232,2358],4,0,-1)
    {
    AL1 = "HV - D"
    AL2 = ""
    }
   -Wire-([1818,2394],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1818,2430],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1818,2466],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1926,2394],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1926,2430],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1926,2466],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -ControlPanel-([1854,2250],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1854,2250
    Extents = 0,0,90,126
    Switch(115987152)
    }
   -ControlPanel-([1854,1440],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 1854,1440
    Extents = 0,0,90,126
    Switch(115986336)
    }
   -Wire-([1980,1332],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1980,1368],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1980,1404],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1962,2394],0,0,-1)
    {
    Vertex="0,0;342,0"
    }
   -Wire-([1962,2430],0,0,-1)
    {
    Vertex="0,0;342,0"
    }
   -Wire-([1962,2466],0,0,-1)
    {
    Vertex="0,0;342,0"
    }
   -Wire-([2196,2160],0,0,-1)
    {
    Vertex="0,0;-144,0;-144,234"
    }
   -Wire-([2088,2358],0,0,-1)
    {
    Vertex="0,0;0,-162;270,-162"
    }
   -Wire-([2196,2160],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([2124,2358],0,0,-1)
    {
    Vertex="0,0;0,-126;234,-126"
    }
   -Wire-([2196,1098],0,0,-1)
    {
    Vertex="0,0;-144,0;-144,234"
    }
   -Wire-([2088,1296],0,0,-1)
    {
    Vertex="0,0;0,-162;216,-162"
    }
   -Wire-([2196,1098],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2124,1296],0,0,-1)
    {
    Vertex="0,0;0,-126;180,-126"
    }
   0.ground([2196,2538],1,0,-1)
    {
    }
   0.ground([2232,2538],1,0,-1)
    {
    }
   0.ground([2268,2538],1,0,-1)
    {
    }
   1.Saturation([2268,2304],4,0,6470)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "5.02"
    V2 = "1.05"
    C3 = "11.34"
    V3 = "1.10"
    C4 = "22.82"
    V4 = "1.15"
    C5 = "496.04"
    V5 = "1.20"
    C6 = "1343.2"
    V6 = "1.30"
    C7 = "2023.6"
    V7 = "1.40"
    C8 = "3315.0"
    V8 = "1.60"
    C9 = "4520.5"
    V9 = "1.80"
    C10 = "5701.8"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2232,2304],4,0,6480)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "5.02"
    V2 = "1.05"
    C3 = "11.34"
    V3 = "1.10"
    C4 = "22.82"
    V4 = "1.15"
    C5 = "496.04"
    V5 = "1.20"
    C6 = "1343.2"
    V6 = "1.30"
    C7 = "2023.6"
    V7 = "1.40"
    C8 = "3315.0"
    V8 = "1.60"
    C9 = "4520.5"
    V9 = "1.80"
    C10 = "5701.8"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2196,2304],4,0,6490)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "5.02"
    V2 = "1.05"
    C3 = "11.34"
    V3 = "1.10"
    C4 = "22.82"
    V4 = "1.15"
    C5 = "496.04"
    V5 = "1.20"
    C6 = "1343.2"
    V6 = "1.30"
    C7 = "2023.6"
    V7 = "1.40"
    C8 = "3315.0"
    V8 = "1.60"
    C9 = "4520.5"
    V9 = "1.80"
    C10 = "5701.8"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2268,1476],4,0,6530)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2232,1476],4,0,6540)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2196,1476],4,0,6550)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2268,1242],4,0,6580)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2232,1242],4,0,6590)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2196,1242],4,0,6600)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B2"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "1.48"
    V1 = "1.00"
    C2 = "4.08"
    V2 = "1.05"
    C3 = "11.36"
    V3 = "1.10"
    C4 = "24.28"
    V4 = "1.15"
    C5 = "287.69"
    V5 = "1.20"
    C6 = "758.03"
    V6 = "1.30"
    C7 = "1137.7"
    V7 = "1.40"
    C8 = "1858.5"
    V8 = "1.60"
    C9 = "2531.6"
    V9 = "1.80"
    C10 = "3191.7"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2268,2538],4,0,6400)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.41"
    V1 = "1.00"
    C2 = "8.43"
    V2 = "1.05"
    C3 = "15.78"
    V3 = "1.10"
    C4 = "36.26"
    V4 = "1.15"
    C5 = "626.18"
    V5 = "1.20"
    C6 = "1702.0"
    V6 = "1.30"
    C7 = "2563.0"
    V7 = "1.40"
    C8 = "4199.0"
    V8 = "1.60"
    C9 = "5726.0"
    V9 = "1.80"
    C10 = "7222.3"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2232,2538],4,0,6410)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.41"
    V1 = "1.00"
    C2 = "8.43"
    V2 = "1.05"
    C3 = "15.78"
    V3 = "1.10"
    C4 = "36.26"
    V4 = "1.15"
    C5 = "626.18"
    V5 = "1.20"
    C6 = "1702.0"
    V6 = "1.30"
    C7 = "2563.0"
    V7 = "1.40"
    C8 = "4199.0"
    V8 = "1.60"
    C9 = "5726.0"
    V9 = "1.80"
    C10 = "7222.3"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([2196,2538],4,0,6420)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fu_P2_B1"
    UR = "530.0"
    PR = "321.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "530.0"
    P0 = "321.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.41"
    V1 = "1.00"
    C2 = "8.43"
    V2 = "1.05"
    C3 = "15.78"
    V3 = "1.10"
    C4 = "36.26"
    V4 = "1.15"
    C5 = "626.18"
    V5 = "1.20"
    C6 = "1702.0"
    V6 = "1.30"
    C7 = "2563.0"
    V7 = "1.40"
    C8 = "4199.0"
    V8 = "1.60"
    C9 = "5726.0"
    V9 = "1.80"
    C10 = "7222.3"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   0.radiolink([5130,2592],3,0,6360)
    {
    Source = "Main"
    Name = "Retard_Fu_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([5112,2610],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5130,2592],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([5148,3474],3,0,4620)
    {
    Source = "Main"
    Name = "Retard_Fu_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([5130,3492],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5148,3474],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([3132,3528],4,0,1990)
    {
    Source = "Fulong_P1"
    Name = "Retard_Fu_P1_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([3132,3510],4,0,1970)
    {
    Source = "Fulong_P1"
    Name = "Retard_Fu_P1_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.unity([3186,3510],6,0,1980)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3186,3528],6,0,2000)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3132,3528],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3132,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5580,2538],2,0,990)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([5526,2502],2,0,960)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([6192,2628],4,0,-1)
    {
    Name = "Retard_Fu_P2_B1"
    }
   0.logic_mult([5850,2538],0,0,3330)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([6174,2628],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([6084,2628],6,0,3360)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([5976,2628],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([6120,2628],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([5958,2664],0,0,1260)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([5994,2664],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([6030,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([6084,2592],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([5634,2502],0,0,970)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5742,2556],0,0,2790)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([5670,2556],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.logic_mult([6012,2574],0,0,3340)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([5850,2610],0,0,2850)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5886,2538],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([5886,2610],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.inv([5760,2592],0,0,2830)
    {
    INTR = "0"
    }
   0.unity([5742,2592],0,0,2820)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5706,2520],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5742,2520],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5670,2556],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5742,2556],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5706,2556],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5742,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5742,2628],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5796,2520],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5796,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5796,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5796,2628],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5526,2646],2,0,1150)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([5580,2610],2,0,1120)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([5670,2520],0,0,2780)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([5634,2538],0,0,1020)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5580,2502],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5580,2538],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([5670,2628],0,0,2840)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5706,2628],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.unity([5634,2610],0,0,1140)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5634,2646],0,0,1190)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5580,2610],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5580,2646],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([5562,2466],6,0,-1)
    {
    Name = "Retard_Rect_P2"
    }
   -Wire-([5526,2502],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5562,2502],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([5562,2682],4,0,-1)
    {
    Name = "Retard_Inv_P2"
    }
   -Wire-([5526,2646],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5562,2646],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([5184,2610],4,0,-1)
    {
    Name = "Retard_Fu_P2_B1"
    }
   -Wire-([5148,2610],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([5562,3456],2,0,2140)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([6174,3546],4,0,-1)
    {
    Name = "Retard_Fu_P2_B2"
    }
   0.logic_mult([5832,3456],0,0,3150)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([6156,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([6066,3546],6,0,3650)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([5958,3546],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([6102,3546],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([5940,3582],0,0,2350)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([5976,3582],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([6012,3492],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([6066,3510],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([5616,3420],0,0,2110)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5724,3474],0,0,2180)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([5652,3474],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.logic_mult([5994,3492],0,0,3640)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([5832,3528],0,0,3490)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5868,3456],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([5868,3528],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.inv([5742,3510],0,0,2230)
    {
    INTR = "0"
    }
   0.unity([5724,3510],0,0,2210)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5688,3438],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5724,3438],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5652,3474],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5724,3474],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5688,3474],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5724,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5724,3546],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5778,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5778,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5778,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5778,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5562,3528],2,0,2220)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([5652,3438],0,0,3130)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([5616,3456],0,0,2150)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5562,3420],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5562,3456],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([5652,3546],0,0,3160)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5688,3546],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.unity([5616,3528],0,0,2250)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5616,3564],0,0,2280)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5562,3528],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5562,3564],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([5526,3420],6,0,-1)
    {
    Name = "Retard_Rect_P2"
    }
   0.datalabel([5526,3564],4,0,-1)
    {
    Name = "Retard_Inv_P2"
    }
   -Wire-([5526,3420],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5526,3564],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5202,3492],4,0,-1)
    {
    Name = "Retard_Fu_P2_B2"
    }
   -Wire-([5166,3492],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2736,2736],4,0,910)
    {
    Source = "Main"
    Name = "Half_Mode_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2736,2772],4,0,940)
    {
    Source = "Sequences_XS800"
    Name = "Seq_Half_Mode_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([2826,2754],0,0,2720)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2790,2736],0,0,920)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2790,2772],0,0,950)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2736,2736],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2736,2772],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([2898,2754],0,0,2740)
    {
    IType = "1"
    OType = "2"
    }
   0.radiolink([3420,2286],2,0,590)
    {
    Source = "Sequences_XS800"
    Name = "Close_Rect_BPS_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.datalabel([3294,2322],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.radiolink([3420,2394],2,0,690)
    {
    Source = "Sequences_XS800"
    Name = "Close_Inv_BPS_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.radiolink([3420,1314],2,0,190)
    {
    Source = "Sequences_XS800"
    Name = "Close_Rect_BPS_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.datalabel([3294,1350],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.radiolink([3420,1422],2,0,230)
    {
    Source = "Sequences_XS800"
    Name = "Close_Inv_BPS_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   -ControlPanel-([3186,1170],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3186,1170
    Extents = 0,0,0,0
    Switch(115991232)
    Switch(115990824)
    Switch(115990416)
    }
   -Wire-([3906,1026],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4068,1026],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.logic_mult([3456,1332],0,0,3200)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([3618,1422],6,0,6520)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([3546,1458],0,0,260)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([3564,1368],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3618,1386],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([3384,1350],0,0,2460)
    {
    IType = "2"
    OType = "1"
    }
   0.logic_mult([3546,1368],0,0,3210)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([3456,1404],0,0,2490)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.inv([3384,1386],0,0,2480)
    {
    INTR = "0"
    }
   0.unity([3384,1386],0,0,2470)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3312,1350],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3348,1350],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3402,1350],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3294,1350],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3384,1350],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3492,1332],0,0,-1)
    {
    Vertex="0,0;0,18;18,18"
    }
   -Wire-([3492,1404],0,0,-1)
    {
    Vertex="0,0;0,-18;18,-18"
    }
   -Wire-([3654,1422],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([3816,1422],6,0,4590)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3618,1368],0,0,-1)
    {
    Vertex="0,0;198,0;198,18"
    }
   0.const([3744,1458],0,0,270)
    {
    Name = ""
    Value = "1.0"
    }
   0.const([3546,1278],0,0,180)
    {
    Name = ""
    Value = "1.0"
    }
   0.select([3618,1314],0,0,6560)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3618,1368],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([3852,1422],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,1314],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([3456,2304],0,0,3240)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([3618,2394],6,0,6430)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([3546,2430],0,0,730)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([3564,2340],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3618,2358],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([3384,2322],0,0,2610)
    {
    IType = "2"
    OType = "1"
    }
   0.logic_mult([3546,2340],0,0,3250)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([3456,2376],0,0,2650)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.inv([3384,2358],0,0,2640)
    {
    INTR = "0"
    }
   0.unity([3384,2358],0,0,2630)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3312,2322],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3348,2322],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3402,2322],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3294,2322],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3384,2322],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3492,2304],0,0,-1)
    {
    Vertex="0,0;0,18;18,18"
    }
   -Wire-([3492,2376],0,0,-1)
    {
    Vertex="0,0;0,-18;18,-18"
    }
   -Wire-([3654,2394],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([3816,2394],6,0,4560)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3618,2340],0,0,-1)
    {
    Vertex="0,0;198,0;198,18"
    }
   0.const([3744,2430],0,0,750)
    {
    Name = ""
    Value = "1.0"
    }
   0.const([3546,2250],0,0,570)
    {
    Name = ""
    Value = "1.0"
    }
   0.select([3618,2286],0,0,6440)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3618,2340],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([3852,2394],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,2286],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3186,3564],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3186,3528],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3186,3510],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.unity([3186,3546],6,0,2030)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3132,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3186,3546],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3132,3564],4,0,-1)
    {
    Name = "Down_Rect_P2"
    }
   -Wire-([3150,3564],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3672,2808],4,0,-1)
    {
    Name = "Down_Rect_P2"
    }
   0.datalabel([1422,2448],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.select([1422,2376],0,0,3220)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1458,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1530,2376],0,0,-1)
    {
    Name = "Ud_high"
    }
   -Wire-([1476,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([1422,2412],5,0,2590)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([1314,2412],0,0,-1)
    {
    Name = "IO_Lim"
    }
   0.radiolink([1242,2412],4,0,540)
    {
    Source = "Main_Ctrl"
    Name = "IO_Lim"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2412],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2268],0,0,-1)
    {
    Name = "Ud_Low_Rec"
    }
   0.datalabel([1314,2304],0,0,-1)
    {
    Name = "Ud_Low_Inv"
    }
   0.radiolink([1242,2268],4,0,440)
    {
    Source = "Main_Ctrl"
    Name = "Ud_Low_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([1242,2304],4,0,470)
    {
    Source = "Main_Ctrl"
    Name = "Ud_Low_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2304],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2448],0,0,-1)
    {
    Name = "TC_Dn_Rec"
    }
   0.radiolink([1242,2448],4,0,560)
    {
    Source = "Main_Ctrl"
    Name = "TC_Dn_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2772],0,0,-1)
    {
    Name = "Kp"
    }
   0.datalabel([1314,2808],0,0,-1)
    {
    Name = "Gain"
    }
   0.radiolink([1242,2772],4,0,800)
    {
    Source = "Main_Ctrl"
    Name = "Kp"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([1242,2808],4,0,820)
    {
    Source = "Main_Ctrl"
    Name = "Gain"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2808],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2844],0,0,-1)
    {
    Name = "VCA_Gain_P"
    }
   0.datalabel([1314,2880],0,0,-1)
    {
    Name = "AMAX_Gain"
    }
   0.radiolink([1242,2844],4,0,840)
    {
    Source = "Main_Ctrl"
    Name = "VCA_Gain_P"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2844],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([1242,2880],4,0,890)
    {
    Source = "Main_Ctrl"
    Name = "AMAX_Gain"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2880],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2484],0,0,-1)
    {
    Name = "TC_Dn_Inv"
    }
   0.datalabel([1314,2520],0,0,-1)
    {
    Name = "TC_Up_Rec"
    }
   0.radiolink([1242,2484],4,0,580)
    {
    Source = "Main_Ctrl"
    Name = "TC_Dn_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2484],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([1242,2520],4,0,620)
    {
    Source = "Main_Ctrl"
    Name = "TC_Up_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2520],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2556],0,0,-1)
    {
    Name = "TC_Up_Inv"
    }
   0.radiolink([1242,2556],4,0,650)
    {
    Source = "Main_Ctrl"
    Name = "TC_Up_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2556],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([774,2268],0,0,-1)
    {
    Name = "Gamma0_Set"
    }
   0.datalabel([774,2304],0,0,-1)
    {
    Name = "Gamma0_Reset"
    }
   0.radiolink([702,2268],4,0,410)
    {
    Source = "Main_Ctrl"
    Name = "Gamma0_Set"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([702,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([702,2304],4,0,430)
    {
    Source = "Main_Ctrl"
    Name = "Gamma0_Reset"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([702,2304],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([774,2340],0,0,-1)
    {
    Name = "RAML_Dec"
    }
   0.radiolink([702,2340],4,0,450)
    {
    Source = "Main_Ctrl"
    Name = "Raml_Dec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([702,2340],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([990,2610],0,0,-1)
    {
    Name = "CRAML_Ref"
    }
   0.datalabel([990,2772],0,0,-1)
    {
    Name = "RAML_Ref"
    }
   0.radiolink([702,2610],4,0,640)
    {
    Source = "Main_Ctrl"
    Name = "CRAML_Ref"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([702,2772],4,0,780)
    {
    Source = "Main_Ctrl"
    Name = "RAML_Ref"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([990,2934],0,0,-1)
    {
    Name = "CDL_Lev"
    }
   0.radiolink([702,2934],4,0,900)
    {
    Source = "Main_Ctrl"
    Name = "CDL_Lev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.annotation([1224,2736],0,0,-1)
    {
    AL1 = "CCA"
    AL2 = ""
    }
   0.annotation([1224,2232],0,0,-1)
    {
    AL1 = "VDCOL"
    AL2 = ""
    }
   0.annotation([702,2232],0,0,-1)
    {
    AL1 = "Gamma0 + RAML"
    AL2 = ""
    }
   0.datalabel([990,2448],0,0,-1)
    {
    Name = "DL_Lev"
    }
   0.radiolink([702,2448],4,0,530)
    {
    Source = "Main_Ctrl"
    Name = "DL_Lev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([1314,2376],0,0,-1)
    {
    Name = "Ud_High_Re"
    }
   0.radiolink([1242,2376],4,0,520)
    {
    Source = "Main_Ctrl"
    Name = "Ud_High_Re"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2340],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2340],0,0,-1)
    {
    Name = "Ud_High_Inv"
    }
   0.radiolink([1242,2340],4,0,490)
    {
    Source = "Main_Ctrl"
    Name = "Ud_High_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2376],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.annotation([1224,2610],0,0,-1)
    {
    AL1 = "AMIN"
    AL2 = ""
    }
   0.radiolink([1242,2682],4,0,770)
    {
    Source = "Main_Ctrl"
    Name = "Gamma_Min"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([1314,2682],0,0,-1)
    {
    Name = "Gamma_Min_Norm"
    }
   -Wire-([1314,2340],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1314,2376],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.radiolink([702,2574],4,0,610)
    {
    Source = "Main_Ctrl"
    Name = "CRAML_Ref_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([702,2736],4,0,760)
    {
    Source = "Main_Ctrl"
    Name = "RAML_Ref_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([702,2898],4,0,850)
    {
    Source = "Main_Ctrl"
    Name = "CDL_Lev_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([702,2412],4,0,500)
    {
    Source = "Main_Ctrl"
    Name = "DL_Lev_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([1242,2646],4,0,720)
    {
    Source = "Main_Ctrl"
    Name = "Gamma_Min_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([1242,2682],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([1422,2682],0,0,3270)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1242,2646],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1278,2682],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1314,2646],0,0,-1)
    {
    Name = "Gamma_Min_Rev"
    }
   -Wire-([1350,2646],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1350,2682],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1422,2754],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.unity([1422,2718],5,0,2670)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([1530,2682],0,0,-1)
    {
    Name = "Gamma_Min"
    }
   -Wire-([702,2610],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([882,2610],0,0,3260)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([702,2574],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([738,2610],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([810,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,2610],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([882,2682],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.unity([882,2646],5,0,2660)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([918,2610],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([702,2772],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([882,2772],0,0,3280)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([702,2736],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([738,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([810,2736],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,2772],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([882,2844],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.unity([882,2808],5,0,2680)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([918,2772],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([702,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([882,2934],0,0,3310)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([702,2898],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([738,2934],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([810,2898],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([882,3006],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.unity([882,2970],5,0,2760)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([918,2934],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([702,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([882,2448],0,0,3230)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([702,2412],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([738,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([810,2412],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([810,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([882,2520],4,0,-1)
    {
    Name = "Rect_Fu_P2"
    }
   0.unity([882,2484],5,0,2600)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([918,2448],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([774,2574],0,0,-1)
    {
    Name = "CRAML_Ref_Rev"
    }
   0.datalabel([774,2610],0,0,-1)
    {
    Name = "CRAML_Ref_Norm"
    }
   0.datalabel([774,2736],0,0,-1)
    {
    Name = "RAML_Ref_Rev"
    }
   0.datalabel([774,2772],0,0,-1)
    {
    Name = "RAML_Ref_Norm"
    }
   0.datalabel([774,2898],0,0,-1)
    {
    Name = "CDL_Lev_Rev"
    }
   0.datalabel([774,2934],0,0,-1)
    {
    Name = "CDL_Lev_Norm"
    }
   0.datalabel([774,2412],0,0,-1)
    {
    Name = "DL_Lev_Rev"
    }
   0.datalabel([774,2448],0,0,-1)
    {
    Name = "DL_Lev_Norm"
    }
   -Wire-([1368,2340],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1458,2682],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1494,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1512,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1368,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([2898,3114],2,0,1390)
    {
    Source = "Main"
    Name = "Red_Volt_Ref_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([2898,3114],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.radiolink([2736,2844],4,0,1040)
    {
    Source = "DCFG_XS800_P2"
    Name = "Restart_Red_Volt_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([2826,2862],0,0,2800)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2790,2844],0,0,1050)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2790,2880],0,0,1090)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2898,2862],0,0,2810)
    {
    IType = "1"
    OType = "2"
    }
   -Wire-([2736,2844],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2736,2880],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3258,3114],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3276,3096],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3294,3078],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([3312,3042],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([3582,3204],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4860,2646],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4932,3564],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Sticky-([630,3402],0)
    {
    Name = ""
    Font = 0
    Bounds = 630,3402,792,3528
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch31: TRIP 
Ch32: LPTW_INIT_DOWN
Ch33: UDL_LOW 
Ch34: UDN_SWITCH_DEL 
Ch35: UDL_SW 
Ch36: DLP_D_REF1  
Ch37: DLP_D_REF2 
Ch38: POLE_THRESHOLD
Ch39: COM_MODE_THRESHOLD  
Ch40: SPARE"
    }
   -Sticky-([450,3402],0)
    {
    Name = ""
    Font = 0
    Bounds = 450,3402,612,3528
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch21: UDL_DER
Ch22: DLP_D_TRIP
Ch23: CURR_DERIV 
Ch24: UDN 
Ch25: IDL 
Ch26: UDL 
Ch27: ID_GND  
Ch28: COM_MODE_WAVE  
Ch29: BI_POS   
Ch30: POLE_WAVE "
    }
   0.datatap([468,3636],0,0,4180)
    {
    Index = "31"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([504,3636],0,0,4170)
    {
    Index = "32"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([540,3636],0,0,4160)
    {
    Index = "33"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([576,3636],0,0,4150)
    {
    Index = "34"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([612,3636],0,0,4140)
    {
    Index = "35"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([648,3636],0,0,4130)
    {
    Index = "36"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([684,3636],0,0,4120)
    {
    Index = "37"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([720,3636],0,0,4110)
    {
    Index = "38"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([756,3636],0,0,4100)
    {
    Index = "39"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([792,3636],0,0,4090)
    {
    Index = "40"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([450,3600],6,0,5170)
    {
    Index = "21"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([486,3600],6,0,5140)
    {
    Index = "22"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([522,3600],6,0,5110)
    {
    Index = "23"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([558,3600],6,0,5100)
    {
    Index = "24"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([594,3600],6,0,5070)
    {
    Index = "25"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([630,3600],6,0,5060)
    {
    Index = "26"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([666,3600],6,0,5050)
    {
    Index = "27"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([702,3600],6,0,5040)
    {
    Index = "28"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([738,3600],6,0,5030)
    {
    Index = "29"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([774,3600],6,0,5020)
    {
    Index = "30"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([450,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([558,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([594,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([630,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([666,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([702,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([738,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([774,3600],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([468,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([540,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([576,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([612,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([648,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([684,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([720,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([756,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([792,3654],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([378,3618],0,0,-1)
    {
    Vertex="0,0;396,0"
    }
   0.pgb([468,3654],1,114095040,5010)
    {
    Name = "TRIP_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([504,3654],1,114095448,5000)
    {
    Name = "LPTW_INIT_DOWN_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([540,3654],1,114095856,4980)
    {
    Name = "UDL_LOW_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([576,3654],1,114096264,4960)
    {
    Name = "UDN_SWITCH_DEL_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([612,3654],1,114096672,4940)
    {
    Name = "UDL_SW_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([648,3654],1,114097080,4920)
    {
    Name = "DLP_D_REF1_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([684,3654],1,114097488,4900)
    {
    Name = "DLP_D_REF2_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([720,3654],1,114097896,4870)
    {
    Name = "POLE_THRESHOLD_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([756,3654],1,114098304,4850)
    {
    Name = "COM_MODE_THRESHOLD_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([792,3654],1,114098712,4830)
    {
    Name = "SPARE_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([450,3582],5,114099120,5300)
    {
    Name = "UDL_DER_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([486,3582],5,114099528,5280)
    {
    Name = "DLP_D_TRIP_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([522,3582],5,114099936,5260)
    {
    Name = "CURR_DERIV_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([558,3582],5,114100344,5230)
    {
    Name = "UDN_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([594,3582],5,114100752,5210)
    {
    Name = "IDL_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([630,3582],5,114101160,5190)
    {
    Name = "UDL_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([666,3582],5,114101568,5150)
    {
    Name = "ID_GND_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([702,3582],5,114101976,5120)
    {
    Name = "COM_MODE_WAVE _Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([774,3582],5,114102384,5080)
    {
    Name = "POLE_WAVE_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([738,3582],5,114102792,5090)
    {
    Name = "BI_POS_Fu_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([360,3618],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([792,3294],0,0,-1)
    {
    Vertex="0,0;36,0;36,90;-432,90;-432,324"
    }
   -Wire-([774,3294],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datamerge([3186,3348],4,0,3440)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([2700,3276],6,0,-1)
    {
    Name = "Ud_Fu_P2"
    }
   0.datalabel([2700,3348],6,0,-1)
    {
    Name = "Udn_Fu_P2"
    }
   0.datalabel([2736,3582],6,0,-1)
    {
    Name = "Idn_Fu_P2"
    }
   0.radiolink([2646,3438],4,0,1820)
    {
    Source = "Fulong_P1"
    Name = "Ud_Fu_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2646,3492],4,0,1870)
    {
    Source = "Fulong_P1"
    Name = "Udn_Fu_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2646,3276],2,0,1610)
    {
    Source = ""
    Name = "Ud_Fu_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.radiolink([2646,3348],2,0,1700)
    {
    Source = ""
    Name = "Udn_Fu_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([2646,3276],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3096,3330],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3096,3348],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([2700,3492],6,0,-1)
    {
    Name = "Udn_Fu_P1"
    }
   0.datalabel([2700,3438],6,0,-1)
    {
    Name = "Ud_Fu_P1"
    }
   -Wire-([3114,3366],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3114,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3114,3402],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3096,3276],6,0,-1)
    {
    Name = "Icn_Fu_P2"
    }
   0.datalabel([2754,3168],6,0,-1)
    {
    Name = "Id_el_Fu_P2"
    }
   0.datalabel([2700,3204],6,0,-1)
    {
    Name = "Idl_Fu_P2"
    }
   -Wire-([3096,3312],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3096,3294],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3096,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([2700,3168],2,0,1460)
    {
    Source = "Main"
    Name = "Id_el_Fu"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([2700,3168],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3186,3438],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.ammeter([4230,2574],4,0,880)
    {
    Name = "Idl_Fu_P2"
    }
   -Wire-([4050,2574],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([4140,2574],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4230,2574],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.ammeter([4068,990],3,0,30)
    {
    Name = "Icn_Fu_P2"
    }
   -Wire-([4068,954],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.mult([2844,3582],0,0,3090)
    {
    }
   0.const([2808,3618],0,0,2050)
    {
    Name = ""
    Value = "0.8"
    }
   0.mult([2808,3204],0,0,2950)
    {
    }
   0.const([2772,3240],0,0,1560)
    {
    Name = ""
    Value = "0.8"
    }
   0.mult([2862,3168],6,0,1480)
    {
    }
   0.const([2826,3132],6,0,1420)
    {
    Name = ""
    Value = "0.8"
    }
   -Wire-([2736,3582],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2700,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2754,3168],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   1.Arr200710([2664,2466],0,0,-1)
    {
    Name = "S1P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "8"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,2466],0,0,-1)
    {
    Name = "S1P1V13"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "8"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,2466],0,0,-1)
    {
    Name = "S1P1V15"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "8"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,2358],0,0,-1)
    {
    Name = "S1P1V12"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,2358],0,0,-1)
    {
    Name = "S1P1V16"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,2358],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,2124],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,2124],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,2124],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,2232],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,2232],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,2232],0,0,-1)
    {
    Name = "S1P1V14"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,1404],0,0,-1)
    {
    Name = "S1P1V31"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,1404],0,0,-1)
    {
    Name = "S1P1V33"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1404],0,0,-1)
    {
    Name = "S1P1V35"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,1296],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,1296],0,0,-1)
    {
    Name = "S1P1V36"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1296],0,0,-1)
    {
    Name = "S1P1V32"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,1062],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,1062],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1062],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2664,1170],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2736,1170],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1170],0,0,-1)
    {
    Name = "S1P1V34"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "561.1 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([3006,2574],6,0,-1)
    {
    Name = "S1P1CBH"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2042.5[kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2988,2502],7,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2988,2502],5,0,-1)
    {
    }
   1.Arr200710([4050,2574],0,0,-1)
    {
    Name = "S1P1DB1"
    Type = "3"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2501 [kV]"
    ISCAL = "3"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([4032,2646],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([4032,2646],1,0,-1)
    {
    }
   1.Arr200710([4176,2574],0,0,-1)
    {
    Name = "S1P1DB2"
    Type = "3"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2501 [kV]"
    ISCAL = "3"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([4158,2646],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([4158,2646],1,0,-1)
    {
    }
   1.Arr200710([2988,2088],0,0,-1)
    {
    Name = "S1P1CBL"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1090 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2970,2160],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2970,2160],1,0,-1)
    {
    }
   1.Arr200710([3006,1242],0,0,-1)
    {
    Name = "S1P1ML"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "666.2 [kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2988,1314],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2988,1314],1,0,-1)
    {
    }
   -Wire-([2682,1242],0,0,-1)
    {
    Vertex="0,0;306,0"
    }
   1.Arr200710([2916,1026],0,0,-1)
    {
    Name = "S1P1CBN1"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "461.3  [kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2898,1098],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2898,1098],1,0,-1)
    {
    }
   1.Arr200710([3186,1026],0,0,-1)
    {
    Name = "S1P1CBN2"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "430.4  [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3168,1098],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([3168,1098],1,0,-1)
    {
    }
   1.Arr200710([3942,1026],0,0,-1)
    {
    Name = "S1P1E"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "430.4  [kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3924,1098],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([3924,1098],1,0,-1)
    {
    }
   0.fault_sw([3492,2682],1,0,6370)
    {
    Name = "FaultoppoletoG"
    OpCur = "1"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E26 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   0.ground([3492,2718],1,0,-1)
    {
    }
   -Wire-([3492,2682],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   0.datalabel([3654,2664],0,0,-1)
    {
    Name = "FaultoppoletoG"
    }
   0.tfaultn([3690,2664],0,0,930)
    {
    TF = "200"
    DF = "0.4 [s]"
    }
   -ControlPanel-([3204,2124],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3204,2124
    Extents = 0,0,0,0
    Switch(115988784)
    Switch(115988376)
    Switch(115987968)
    }
   -Wire-([2898,3168],0,0,-1)
    {
    Vertex="0,0;126,0;126,126;198,126"
    }
   -Wire-([2844,3204],0,0,-1)
    {
    Vertex="0,0;162,0;162,108;252,108"
    }
   0.mult([2808,3276],0,0,2970)
    {
    }
   0.const([2772,3312],0,0,1670)
    {
    Name = ""
    Value = "0.7273"
    }
   0.mult([2808,3348],0,0,2990)
    {
    }
   0.const([2772,3384],0,0,1750)
    {
    Name = ""
    Value = "0.7273"
    }
   -Wire-([2700,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2844,3276],0,0,-1)
    {
    Vertex="0,0;126,0;126,54;252,54"
    }
   -Wire-([2844,3348],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   -Wire-([2646,3348],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.mult([2790,3438],0,0,3010)
    {
    }
   0.const([2754,3474],0,0,1860)
    {
    Name = ""
    Value = "0.7273"
    }
   0.mult([2790,3492],0,0,3020)
    {
    }
   0.const([2754,3528],0,0,1930)
    {
    Name = ""
    Value = "0.7273"
    }
   -Wire-([2646,3438],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2826,3438],0,0,-1)
    {
    Vertex="0,0;36,0;36,-72;288,-72"
    }
   -Wire-([2646,3492],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2826,3492],0,0,-1)
    {
    Vertex="0,0;54,0;54,-108;288,-108"
    }
   -Wire-([2880,3582],0,0,-1)
    {
    Vertex="0,0;18,0;18,-180;234,-180"
    }
   1.Arr200710([2520,2394],6,0,-1)
    {
    Name = "S1P2A2ya"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2042.5[kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2502,2322],7,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2502,2322],5,0,-1)
    {
    }
   1.Arr200710([2502,2520],4,0,-1)
    {
    Name = "S1P2A2yb"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2042.5[kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2520,2592],5,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2520,2592],7,0,-1)
    {
    }
   1.Arr200710([2538,2520],4,0,-1)
    {
    Name = "S1P2A2yc"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2042.5[kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2556,2592],5,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2556,2592],7,0,-1)
    {
    }
   -Wire-([2520,2520],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   -Wire-([2556,2520],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.voltmetergnd([2538,2160],0,0,460)
    {
    Name = "UydtransvalveA2"
    }
   0.voltmetergnd([2538,2196],0,0,480)
    {
    Name = "UydtransvalveB2"
    }
   0.voltmetergnd([2538,2232],0,0,510)
    {
    Name = "UydtransvalveC2"
    }
   0.datalabel([2502,756],0,0,-1)
    {
    Name = "UyytransvalveA2"
    }
   0.pgb([2502,756],0,114127680,6700)
    {
    Name = "UyytransvalveA2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([2502,792],0,0,-1)
    {
    Name = "UyytransvalveB2"
    }
   0.pgb([2502,792],0,114128496,6690)
    {
    Name = "UyytransvalveB2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([2502,828],0,0,-1)
    {
    Name = "UyytransvalveC2"
    }
   0.pgb([2502,828],0,114129312,6680)
    {
    Name = "UyytransvalveC2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([2502,864],0,0,-1)
    {
    Name = "UydtransvalveA2"
    }
   0.pgb([2502,864],0,114130128,6670)
    {
    Name = "UydtransvalveA2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([2502,900],0,0,-1)
    {
    Name = "UydtransvalveB2"
    }
   0.pgb([2502,900],0,114130944,6660)
    {
    Name = "UydtransvalveB2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([2502,936],0,0,-1)
    {
    Name = "UydtransvalveC2"
    }
   0.pgb([2502,936],0,114131760,6650)
    {
    Name = "UydtransvalveC2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.voltmetergnd([2538,2394],0,0,630)
    {
    Name = "UyytransvalveA2"
    }
   0.voltmetergnd([2538,2430],0,0,660)
    {
    Name = "UyytransvalveB2"
    }
   0.voltmetergnd([2538,2466],0,0,680)
    {
    Name = "UyytransvalveC2"
    }
   0.fault_sw([2664,2610],1,0,6390)
    {
    Name = "FaultYY2AtoG"
    OpCur = "1"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E26 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   0.ground([2664,2646],1,0,-1)
    {
    }
   -Wire-([2556,2520],0,0,-1)
    {
    Vertex="0,0;18,0;18,90;108,90"
    }
   0.datalabel([2340,2646],0,0,-1)
    {
    Name = "FaultYY2AtoG"
    }
   0.tfaultn([2376,2646],0,0,790)
    {
    TF = "200 [s]"
    DF = "0.4 [s]"
    }
   .DCF_Hu_P2([4068,1746],0,0,360)
    {
    }
   .DCF_Hu_P2_2([4158,1692],0,0,330)
    {
    }
   .DCF_Hu_P2_3([4248,1692],0,0,340)
    {
    }
   -Wire-([4158,1638],0,0,-1)
    {
    Vertex="0,0;0,-72;-90,-72"
    }
   -Wire-([4248,1638],0,0,-1)
    {
    Vertex="0,0;0,-72;-90,-72"
    }
   -Wire-([4068,1800],0,0,-1)
    {
    Vertex="0,0;0,54;72,54;72,108"
    }
   0.capacitor([3744,1656],1,0,-1)
    {
    C = "0.35 [uF]"
    }
   0.inductor([3690,1782],3,0,-1)
    {
    L = "0.08935 [H]"
    }
   0.resistor([3780,1746],1,0,-1)
    {
    R = "10000 [ohm]"
    }
   0.inductor([3690,1890],3,0,-1)
    {
    L = "0.04886 [H]"
    }
   0.capacitor([3780,1854],1,0,-1)
    {
    C = "0.81 [uF]"
    }
   0.capacitor([3888,1656],1,0,-1)
    {
    C = "0.8 [uF]"
    }
   0.inductor([3888,1782],3,0,-1)
    {
    L = "0.01199 [H]"
    }
   0.inductor([3852,1890],3,0,-1)
    {
    L = "0.964 [H]"
    }
   0.capacitor([3942,1854],1,0,-1)
    {
    C = "1.825 [uF]"
    }
   0.resistor([3996,1782],1,0,-1)
    {
    R = "5700 [ohm]"
    }
   -Wire-([3744,1656],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([3744,1692],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3690,1746],0,0,-1)
    {
    Vertex="0,0;0,-36;90,-36;90,0"
    }
   -Wire-([3690,1782],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([3780,1782],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([3690,1818],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([3690,1890],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([3888,1692],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([3888,1782],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3852,1854],0,0,-1)
    {
    Vertex="0,0;0,-36;90,-36;90,0"
    }
   -Wire-([3852,1890],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([3888,1710],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([3996,1818],0,0,-1)
    {
    Vertex="0,0;0,90;-54,90"
    }
   -Wire-([3744,1908],0,0,-1)
    {
    Vertex="0,0;0,18;144,18;144,0"
    }
   -Wire-([3798,1926],0,0,-1)
    {
    Vertex="0,0;0,54;306,54"
    }
   -Wire-([3816,1656],0,0,-1)
    {
    Vertex="0,0;0,-90;252,-90"
    }
   0.pin([4068,1566],0,0,-1)
    {
    }
   0.pin([4068,1026],0,0,-1)
    {
    }
   0.pin([4140,1980],0,0,-1)
    {
    }
   0.pin([4140,2574],0,0,-1)
    {
    }
   -Wire-([4068,1692],0,0,-1)
    {
    Vertex="0,0;0,-126"
    }
   -Wire-([3384,1026],0,0,-1)
    {
    Vertex="0,0;0,36;90,36;90,0"
    }
   }
  }
 Module("Fengxian_P2")
  {
  Desc = ""
  FileDate = 1400042434
  Nodes = 
   {
   Electrical("DC_P2_Fe",-108,54)
    {
    }
   Electrical("Neut_P2_Fe",-108,-54)
    {
    }
   Electrical("Fe_P2_a",126,-36)
    {
    }
   Electrical("Fe_P2_b",126,0)
    {
    }
   Electrical("Fe_P2_c",126,36)
    {
    }
   Input("Tel_P2_Fu",-36,108)
    {
    Type = Real
    Dim  = [20]
    }
   Output("Tel_P2_Fe",72,108)
    {
    Type = Real
    Dim  = [20]
    }
   }

  Graphics = 
   {
   Rectangle(-72,-79,104,79)
   Line(-108,54,-72,54)
   Line(-108,-54,-72,-54)
   Line(104,-36,126,-36)
   Line(104,0,126,0)
   Line(104,36,126,36)
   Line(-36,107,-36,79)
   Line(72,107,72,79)
   Line(-33,86,-36,79)
   Line(-39,86,-36,79)
   Line(69,102,72,109)
   Line(75,102,72,109)
   Text(112,-23,"A")
   Text(112,14,"B")
   Text(113,50,"C")
   Font(,Medium)
   Text(17,18,"P2")
   Font(,Small)
   Text(-84,68,"P2")
   Text(-87,-64,"Neut")
   Font(,Medium)
   Text(15,-16,"Fengxian")
   Font(,Small)
   Text(114,97,"Tdel_OUT")
   Text(-71,97,"Tdel_IN")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   0.var([2070,2592],0,114141960,1130)
    {
    Name = "UDref_Fe_P2"
    Group = ""
    Display = "0"
    Max = "10000"
    Min = "240"
    Value = "780.0"
    Units = "kV"
    Collect = "1"
    }
   0.var([2322,3096],0,114142368,1750)
    {
    Name = "Iord_Fe_P2"
    Group = ""
    Display = "0"
    Max = "3"
    Min = "0"
    Value = "1.1"
    Units = "p.u."
    Collect = "1"
    }
   0.export([3654,2844],4,0,5700)
    {
    Name = "Tel_P2_Fe"
    }
   0.import([3582,2844],4,0,1560)
    {
    Name = "Tel_P2_Fu"
    }
   0.var([2070,2988],0,114143592,1530)
    {
    Name = "Pref_Fe_P2"
    Group = ""
    Display = "0"
    Max = "4000"
    Min = "0"
    Value = "3600.0"
    Units = "MW"
    Collect = "1"
    }
   0.var([2322,2862],0,114144000,1410)
    {
    Name = "Gamma_REF_Fe_P2"
    Group = ""
    Display = "0"
    Max = "30"
    Min = "0.0"
    Value = "17.0"
    Units = "deg"
    Collect = "1"
    }
   0.datalabel([2520,2916],6,0,-1)
    {
    Name = "Gamma_REF_Fe_P2"
    }
   0.var_switch([3798,2556],0,114144816,1270)
    {
    Name = "Down_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Down"
    Toff = "Normal"
    }
   0.datalabel([4050,2556],4,0,-1)
    {
    Name = "Down_Fe_P2"
    }
   -Wire-([2358,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.sumjct([2322,2988],0,0,3540)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2160,2988],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.var([1800,2988],0,114146040,1510)
    {
    Name = "T_Step_Fe_P2"
    Group = ""
    Display = "0"
    Max = "1000"
    Min = "0"
    Value = "300.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([1926,2988],2,0,-1)
    {
    Name = "T_Step_Fe_P2"
    }
   -Wire-([1890,2988],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([1800,3024],0,114146856,1570)
    {
    Name = "T_Dur_Step_Fe_P2"
    Group = ""
    Display = "0"
    Max = "6"
    Min = "0"
    Value = "1.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([1926,3024],2,0,-1)
    {
    Name = "T_Dur_Step_Fe_P2"
    }
   -Wire-([1890,3024],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tfault([1728,3006],2,0,2790)
    {
    TF = "T_Step_Fe_P2"
    DF = "T_Dur_Step_Fe_P2"
    REP = "0"
    }
   0.var([1800,2952],0,114148080,1470)
    {
    Name = "Step_Value_Fe_P2"
    Group = ""
    Display = "0"
    Max = "5"
    Min = "-5"
    Value = "-0.08"
    Units = ""
    Collect = "1"
    }
   0.const([2196,3078],0,0,1690)
    {
    Name = ""
    Value = "0.0"
    }
   0.select([2268,3078],0,0,3400)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2322,3024],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1836,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1836,3024],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.mult([2196,3042],6,0,1650)
    {
    }
   -Wire-([2196,3006],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2106,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1836,2952],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.logic_mult([2214,3150],0,0,2870)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([2250,3150],0,0,-1)
    {
    Vertex="0,0;18,0;18,-36"
    }
   -Wire-([1854,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1926,3060],2,0,-1)
    {
    Name = "Step_Type_Fe_P2"
    }
   -Wire-([1890,2952],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.logic_mult([2214,3258],0,0,2910)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([2268,3330],6,0,3010)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2250,3258],0,0,-1)
    {
    Vertex="0,0;18,0;18,36"
    }
   0.const([2196,3330],0,0,2030)
    {
    Name = ""
    Value = "0.0"
    }
   0.sumjct([2430,3096],0,0,3550)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2322,3078],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2412,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2070,3276],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2070,3132],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2142,3132],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_pot([1818,3060],0,114152160,1610)
    {
    Name = "Step_Type_Fe_P2"
    Group = ""
    Display = "0"
    NDP = "4"
    Value = "1"
    F1 = "1.0"
    F2 = "2.0"
    F3 = "3.0"
    F4 = "4.0"
    F5 = "5.0"
    F6 = "6.0"
    F7 = "7.0"
    F8 = "8.0"
    F9 = "9.0"
    F10 = "10.0"
    }
   1.Decoder([2034,3132],0,0,1780)
    {
    Trig = "1"
    }
   1.Decoder([2034,3276],0,0,1960)
    {
    Trig = "2"
    }
   0.unity([1998,3276],0,0,1930)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([1998,3132],0,0,1760)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1926,3132],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1926,3276],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2106,3132],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2106,3276],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2142,3276],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1908,3132],2,0,-1)
    {
    Name = "Step_Type_Fe_P2"
    }
   0.datalabel([1908,3276],2,0,-1)
    {
    Name = "Step_Type_Fe_P2"
    }
   0.datalabel([1926,2952],2,0,-1)
    {
    Name = "Step_Value_Fe_P2"
    }
   0.datalabel([2088,3042],2,0,-1)
    {
    Name = "Step_Value_Fe_P2"
    }
   0.datalabel([2088,3366],2,0,-1)
    {
    Name = "Step_Value_Fe_P2"
    }
   -Wire-([2088,3042],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   1.Decoder([2034,2898],0,0,2770)
    {
    Trig = "3"
    }
   0.logic_mult([2214,2880],0,0,3350)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([2214,2736],0,0,3340)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([1998,2898],0,0,2760)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1926,2898],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1908,2898],2,0,-1)
    {
    Name = "Step_Type_Fe_P2"
    }
   -Wire-([2070,2898],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1764,3006],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   1.Decoder([2034,2718],0,0,2740)
    {
    Trig = "4"
    }
   0.unity([1998,2718],0,0,2730)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([1926,2718],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1908,2718],2,0,-1)
    {
    Name = "Step_Type_Fe_P2"
    }
   -Wire-([2070,2718],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.sumjct([2394,2916],6,0,3380)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.select([2322,2916],6,0,3370)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2250,2880],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2106,3366],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2088,3366],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.const([2250,2916],0,0,1480)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2088,2952],2,0,-1)
    {
    Name = "Step_Value_Fe_P2"
    }
   -Wire-([2214,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2376,2862],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([2430,2916],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2466,2916],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([2520,3096],2,0,-1)
    {
    Name = "Iord_Fe_P2"
    }
   0.datalabel([2520,2988],2,0,-1)
    {
    Name = "Pref_Fe_P2"
    }
   -Wire-([2466,3096],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2466,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2484,2916],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([2322,2700],0,0,3520)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2250,2736],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.const([2250,2700],0,0,1260)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2106,2664],2,0,-1)
    {
    Name = "Step_Value_Fe_P2"
    }
   -Wire-([2178,2862],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-108;0,-108"
    }
   -Wire-([1800,3006],0,0,-1)
    {
    Vertex="0,0;0,-198;360,-198"
    }
   -Wire-([2178,3240],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-72;0,-72"
    }
   -Wire-([1800,3006],0,0,-1)
    {
    Vertex="0,0;0,198;360,198"
    }
   0.sumjct([2412,2700],6,0,3530)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.datalabel([2520,2700],2,0,-1)
    {
    Name = "UDref_Fe_P2"
    }
   0.mult([2250,2664],6,0,2710)
    {
    }
   -Wire-([2358,2700],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2358,2862],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2358,3096],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2448,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2106,2664],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2106,2592],0,0,-1)
    {
    Vertex="0,0;144,0;144,54"
    }
   -Wire-([2250,2592],0,0,-1)
    {
    Vertex="0,0;162,0;162,72"
    }
   -Wire-([1908,2718],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1908,2898],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1908,3132],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2088,2952],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([1908,3276],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.annotation([2250,2538],0,0,-1)
    {
    AL1 = "STEP LOGIC"
    AL2 = ""
    }
   0.logic_mult([3708,2466],0,0,3310)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([4032,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([3942,2556],6,0,3330)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3834,2556],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3978,2556],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([3816,2592],0,0,1300)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([3852,2592],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3888,2502],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3942,2520],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([3600,2448],0,0,1150)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3600,2484],0,0,2680)
    {
    IType = "2"
    OType = "1"
    }
   0.radiolink([3528,2448],2,0,1140)
    {
    Source = "DCFG_XS800_P2"
    Name = "Down_Rect_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([3870,2502],0,0,3320)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([3708,2538],0,0,2720)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([3744,2466],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3744,2538],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.radiolink([3528,2556],2,0,1230)
    {
    Source = "DCFG_XS800_P2"
    Name = "Down_Inv_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.inv([3618,2520],0,0,2700)
    {
    INTR = "0"
    }
   0.unity([3600,2556],0,0,1250)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3600,2520],0,0,2690)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3528,2448],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3600,2448],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3528,2484],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3600,2484],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3564,2484],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3600,2520],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3528,2556],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3600,2556],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3528,2484],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.mult([2430,3186],5,0,3410)
    {
    }
   -Wire-([2304,3330],0,0,-1)
    {
    Vertex="0,0;126,0;126,-108"
    }
   -Wire-([2376,3096],0,0,-1)
    {
    Vertex="0,0;0,90;18,90"
    }
   -Wire-([2430,3150],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.xnode([4518,936],2,0,-1)
    {
    Name = "Fe_P2_a"
    }
   0.xnode([4518,972],2,0,-1)
    {
    Name = "Fe_P2_b"
    }
   0.xnode([4518,1008],2,0,-1)
    {
    Name = "Fe_P2_c"
    }
   0.xfmr-3p2w([3150,738],4,0,3450)
    {
    Name = "YD_Fe_P2_B2"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00230 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B2_Fe_P2"
    ILB2 = "IVD_b_B2_Fe_P2"
    ILC2 = "IVD_c_B2_Fe_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.datalabel([3222,666],6,0,-1)
    {
    Name = "TapP_Fe_P2_B2"
    }
   -Wire-([3222,666],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3384,702],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   0.jumper2([3456,936],7,0,-1)
    {
    }
   -Wire-([3348,738],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.jumper([3492,936],7,0,-1)
    {
    }
   -Wire-([3312,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,774],6,0,-1)
    {
    Name = "FPD_Fe_P2_B2"
    }
   -Wire-([2754,1008],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,738],6,0,-1)
    {
    Name = "FTD_Fe_P2_B2"
    }
   0.datalabel([2664,1008],6,0,-1)
    {
    Name = "FPY_Fe_P2_B2"
    }
   -Wire-([2754,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,972],2,0,-1)
    {
    Name = "FTY_Fe_P2_B2"
    }
   -Wire-([2754,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2754,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.xfmr-3p2w([3150,972],4,0,3460)
    {
    Name = "YY_Fe_P2_B2"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00238 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B2_Fe_P2"
    ILB2 = "IVY_b_B2_Fe_P2"
    ILC2 = "IVY_c_B2_Fe_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.resistor([3150,1044],4,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([3150,1044],6,0,-1)
    {
    }
   0.datalabel([3222,900],6,0,-1)
    {
    Name = "TapP_Fe_P2_B2"
    }
   -Wire-([3222,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.nodeloop([4194,972],4,0,220)
    {
    View = "0"
    }
   0.nodeloop([4158,972],4,0,210)
    {
    View = "0"
    }
   0.power([4158,864],3,0,6830)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([4158,828],3,114176232,6850)
    {
    Name = "P_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.pgb([4194,828],3,114176640,6840)
    {
    Name = "Q_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "600"
    }
   0.resistor([4194,936],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([4194,972],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([4194,1008],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.voltmetergnd([4320,1008],0,0,270)
    {
    Name = "U_Fe_P2_c"
    }
   0.voltmetergnd([4320,972],0,0,230)
    {
    Name = "U_Fe_P2_b"
    }
   0.voltmetergnd([4320,936],0,0,190)
    {
    Name = "U_Fe_P2_a"
    }
   0.nodeloop([4410,972],4,0,250)
    {
    View = "0"
    }
   0.rms3ph([4446,1080],0,0,300)
    {
    Type = "1"
    View = "0"
    Scale = "1.0 [kV]"
    Ts = "0.02 [sec]"
    freq = "50.0 [Hz]"
    NSAM = "256"
    Vinit = "0.0 [kV]"
    }
   0.datalabel([4518,1080],0,0,-1)
    {
    Name = "U_Fe_P2_RMS"
    }
   -Wire-([4518,1080],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.var([3330,1296],4,114180720,310)
    {
    Name = "Tap_Fe_P2_B2"
    Group = ""
    Display = "0"
    Max = "22"
    Min = "-6"
    Value = "-4.0"
    Units = ""
    Collect = "1"
    }
   -Wire-([3294,1296],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.mult([3186,1296],4,0,2410)
    {
    }
   0.const([3222,1332],4,0,330)
    {
    Name = ""
    Value = "0.0125"
    }
   -Wire-([3150,1296],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.sumjct([3078,1296],4,0,3110)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3114,1332],4,0,320)
    {
    Name = ""
    Value = "1.0"
    }
   0.datalabel([2988,1296],4,0,-1)
    {
    Name = "TapP_Fe_P2_B2"
    }
   -Sticky-([3042,1224],0)
    {
    Name = ""
    Font = 1
    Bounds = 3042,1224,3150,1278
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Input is tappos, +22/-6
step size 1.25%
"
    }
   -Sticky-([3222,1188],0)
    {
    Name = ""
    Font = 1
    Bounds = 3222,1188,3348,1278
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Output is
TapX= 1 + tp*0.0125
to trafo

TCP, Tappos to ctrl"
    }
   0.datalabel([2988,1404],4,0,-1)
    {
    Name = "TCP_Fe_P2_B2"
    }
   -Wire-([4410,1044],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.mult([3204,1404],4,0,2420)
    {
    }
   0.const([3240,1440],4,0,350)
    {
    Name = ""
    Value = "-1.0"
    }
   0.sumjct([3078,1404],4,0,3120)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3114,1440],4,0,340)
    {
    Name = ""
    Value = "22.0"
    }
   -Wire-([3168,1404],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.ground([3384,1080],7,0,-1)
    {
    }
   0.ground([3348,1080],7,0,-1)
    {
    }
   0.ground([3312,1080],7,0,-1)
    {
    }
   0.annotation([3348,1116],4,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   -Wire-([2898,846],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3078,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,1008],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2898,630],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.ammeter([4050,936],2,0,180)
    {
    Name = "I_Fe_P2_a"
    }
   0.ammeter([4050,972],2,0,200)
    {
    Name = "I_Fe_P2_b"
    }
   0.ammeter([4050,1008],2,0,240)
    {
    Name = "I_Fe_P2_c"
    }
   -Wire-([4104,936],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3780,936],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4104,972],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3780,972],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([4104,1008],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3780,1008],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([2826,1116],0,0,-1)
    {
    Vertex="0,0;72,0;72,-36"
    }
   -Wire-([2682,1116],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([3042,1296],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1404],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2718,738],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2718,774],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2718,972],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2718,1008],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4356,936],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4356,972],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4356,1008],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4356,936],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4158,936],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4356,972],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4158,972],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4356,1008],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4158,1008],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3042,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3042,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3042,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3042,1008],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.consti([2718,1044],6,0,160)
    {
    Name = ""
    Value = "1"
    }
   0.consti([2718,810],6,0,60)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([3078,702],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.ground([3240,810],6,0,-1)
    {
    }
   0.resistor([3240,810],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([3204,810],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.ground([3186,1080],7,0,-1)
    {
    }
   0.resistor([3186,1080],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([4122,900],6,0,-1)
    {
    Name = "COM"
    }
   -Wire-([4122,900],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2970,864],6,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([2970,630],6,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([2898,738],4,0,4620)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fe_P2_B2"
    VCurr = "Ivd_Fe_P2_B2"
    SCurr = ""
    }
   1.g6p200_421([2898,972],4,0,4600)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fe_P2_B2"
    VCurr = "Ivy_Fe_P2_B2"
    SCurr = ""
    }
   0.jumper2([3888,972],7,0,-1)
    {
    }
   0.jumper([3924,1008],7,0,-1)
    {
    }
   -Wire-([4014,936],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([4014,972],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([4014,1008],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([3924,972],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3960,1044],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   -Wire-([3924,1044],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   0.jumper2([3456,2034],3,0,-1)
    {
    }
   0.jumper([3492,1998],3,0,-1)
    {
    }
   -Wire-([3780,2070],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([3888,1980],0,0,-1)
    {
    Vertex="0,0;0,18;-18,18"
    }
   -Wire-([3924,1980],0,0,-1)
    {
    Vertex="0,0;0,54;-54,54"
    }
   -Wire-([3960,1980],0,0,-1)
    {
    Vertex="0,0;0,90;-90,90"
    }
   0.ammeter([1998,630],0,0,30)
    {
    Name = "Idn_Fe_P2"
    }
   0.datalabel([3222,1728],6,0,-1)
    {
    Name = "TapP_Fe_P2_B1"
    }
   -Wire-([3222,1728],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,1836],6,0,-1)
    {
    Name = "FPD_Fe_P2_B1"
    }
   -Wire-([2754,2070],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,1800],6,0,-1)
    {
    Name = "FTD_Fe_P2_B1"
    }
   0.datalabel([2664,2070],6,0,-1)
    {
    Name = "FPY_Fe_P2_B1"
    }
   -Wire-([2754,1836],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2664,2034],2,0,-1)
    {
    Name = "FTY_Fe_P2_B1"
    }
   -Wire-([2754,1800],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2754,2034],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.resistor([3150,2106],4,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([3150,2106],6,0,-1)
    {
    }
   0.datalabel([3222,1962],6,0,-1)
    {
    Name = "TapP_Fe_P2_B1"
    }
   -Wire-([3222,1962],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.xnode([1350,630],6,0,-1)
    {
    Name = "Neut_P2_Fe"
    }
   -Wire-([2898,1908],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3078,1998],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,2034],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,1836],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,1800],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2898,1692],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.voltmetergnd([1440,630],4,0,20)
    {
    Name = "Udn_Fe_P2"
    }
   -Wire-([2826,2178],0,0,-1)
    {
    Vertex="0,0;72,0;72,-36"
    }
   -Wire-([2682,2178],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([2718,1800],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2718,1836],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1836],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3042,2034],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,2070],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.consti([2718,2106],6,0,690)
    {
    Name = ""
    Value = "1"
    }
   0.consti([2718,1872],6,0,540)
    {
    Name = ""
    Value = "1"
    }
   0.ground([3240,1872],6,0,-1)
    {
    }
   0.resistor([3240,1872],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([3204,1872],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.ground([3186,2142],7,0,-1)
    {
    }
   0.resistor([3186,2142],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([2970,1926],6,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([2970,1692],6,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([2898,1800],4,0,4590)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fe_P2_B1"
    VCurr = "Ivd_Fe_P2_B1"
    SCurr = ""
    }
   1.g6p200_421([2898,2034],4,0,4560)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fe_P2_B1"
    VCurr = "Ivy_Fe_P2_B1"
    SCurr = ""
    }
   -Wire-([3960,1980],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([3924,1980],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([3888,1980],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([3276,2070],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3240,1404],0,0,-1)
    {
    Vertex="0,0;36,0;36,-108"
    }
   -Wire-([3726,936],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3690,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3456,936],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3456,972],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([3456,1008],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   0.var_switch([3744,900],4,114201120,150)
    {
    Name = "BRK_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([3636,900],6,0,-1)
    {
    Name = "BRK_Fe_P2_B2"
    }
   -Wire-([3708,900],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.var_switch([3708,2124],4,114201936,770)
    {
    Name = "BRK_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([3600,2124],6,0,-1)
    {
    Name = "BRK_Fe_P2_B1"
    }
   -Wire-([3672,2124],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3780,1998],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([3780,2034],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   1.DC_Breaker([2538,2178],2,0,6710)
    {
    NAME = "Q13_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([2502,1908],1,0,6760)
    {
    NAME = "Q12_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([2538,1692],2,0,6780)
    {
    NAME = "Q11_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   -Wire-([2502,1692],0,0,-1)
    {
    Vertex="0,0;0,-576"
    }
   0.var_switch([1818,1944],4,114202752,520)
    {
    Name = "Q13_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2016,1944],4,114203160,550)
    {
    Name = "Q12_Fe_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2016,1836],4,114203568,460)
    {
    Name = "Q11_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([1692,1944],6,0,-1)
    {
    Name = "Q13_Fe_P2"
    }
   0.datalabel([1890,1836],6,0,-1)
    {
    Name = "Q11_Fe_P2"
    }
   0.datalabel([1890,1944],6,0,-1)
    {
    Name = "Q12_Fe_P2"
    }
   1.DC_Breaker([2538,630],2,0,6920)
    {
    NAME = "Q14_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([2502,864],1,0,6900)
    {
    NAME = "Q15_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([2538,1116],2,0,6820)
    {
    NAME = "Q16_Fe_P2"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.var_switch([1818,1026],4,114205200,100)
    {
    Name = "Q16_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2016,1026],4,114205608,110)
    {
    Name = "Q15_Fe_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2016,918],4,114206016,80)
    {
    Name = "Q14_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([1692,1026],6,0,-1)
    {
    Name = "Q16_Fe_P2"
    }
   0.datalabel([1890,918],6,0,-1)
    {
    Name = "Q14_Fe_P2"
    }
   0.datalabel([1890,1026],6,0,-1)
    {
    Name = "Q15_Fe_P2"
    }
   -ControlPanel-([2178,1674],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2178,1674
    Extents = 0,0,0,0
    Switch(114203568)
    Switch(114203160)
    Switch(114202752)
    }
   -Wire-([3222,702],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3222,738],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3222,774],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3888,1044],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   -Wire-([3960,1044],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.xfmr-3p2w([3150,2034],4,0,3220)
    {
    Name = "YY_Fe_P2_B1"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00063 [p.u.]"
    CuL = "0.00217 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B1_Fe_P2"
    ILB2 = "IVY_b_B1_Fe_P2"
    ILC2 = "IVY_c_B1_Fe_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.xfmr-3p2w([3150,1800],4,0,3160)
    {
    Name = "YD_Fe_P2_B1"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00063 [p.u.]"
    CuL = "0.00221 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B1_Fe_P2"
    ILB2 = "IVD_b_B1_Fe_P2"
    ILC2 = "IVD_c_B1_Fe_P2"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   -Wire-([2664,2034],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2664,2070],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3222,936],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3222,972],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3222,1008],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inductor([2340,630],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2268,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1368,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([2268,630],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([1350,630],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.inductor([2214,2178],6,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2286,2178],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.inductor([2286,2178],6,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2214,2178],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([2106,2178],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   0.capacitor([1512,522],5,0,-1)
    {
    C = "14.0 [uF]"
    }
   -Wire-([1512,630],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.ground([1512,486],3,0,-1)
    {
    }
   -Wire-([2106,2178],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1602,1494],0,0,-1)
    {
    Vertex="0,0;0,684"
    }
   -Wire-([1404,630],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2196,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2160,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1458,630],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1548,630],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([1512,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1782,630],0,0,-1)
    {
    Vertex="0,0;216,0"
    }
   -Wire-([2034,630],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   1.Breaker_3ph([3636,2034],0,0,6720)
    {
    Ctrl = "0"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "0"
    ViewB = "1"
    DisPQ = "0"
    NAME = "BRK_Fe_P2_B1"
    NAMEA = "BRKA"
    NAMEB = "BRKB"
    NAMEC = "BRKC"
    ROFF = "1.0e6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [s]"
    TDB = "0.0 [s]"
    TDC = "0.0 [s]"
    TDRA = "0.05 [s]"
    TDRB = "0.05 [s]"
    TDRC = "0.05 [s]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   1.Breaker_3ph([3618,972],0,0,170)
    {
    Ctrl = "0"
    OPCUR = "0"
    ENAB = "0"
    CLVL = "0.0 [kA]"
    View = "0"
    ViewB = "1"
    DisPQ = "0"
    NAME = "BRK_Fe_P2_B2"
    NAMEA = "BRKA"
    NAMEB = "BRKB"
    NAMEC = "BRKC"
    ROFF = "1.0e6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.5 [ohm]"
    TDA = "0.0 [s]"
    TDB = "0.0 [s]"
    TDC = "0.0 [s]"
    TDRA = "0.05 [s]"
    TDRB = "0.05 [s]"
    TDRC = "0.05 [s]"
    PostIns = "0"
    TDBOA = "0.005 [s]"
    IBRA = ""
    IBRB = ""
    IBRC = ""
    IBR0 = ""
    SBRA = ""
    SBRB = ""
    SBRC = ""
    BP = ""
    BQ = ""
    BOpen1 = "0"
    BOpen2 = "0"
    BOpen3 = "0"
    P = "0 [MW]"
    Q = "0 [MVAR]"
    }
   0.ammeter([1512,864],7,0,50)
    {
    Name = "Idf_Fe_P2"
    }
   -Wire-([1512,900],0,0,-1)
    {
    Vertex="0,0;0,360"
    }
   -Wire-([1512,864],0,0,-1)
    {
    Vertex="0,0;0,-234"
    }
   0.pgb([1548,3204],0,114211320,1810)
    {
    Name = "Udn_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1476,3204],0,0,-1)
    {
    Name = "Udn_Fe_P2"
    }
   0.pgb([1386,3060],0,114212136,1550)
    {
    Name = "U_Fe_P2_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1314,3060],0,0,-1)
    {
    Name = "U_Fe_P2_a"
    }
   -Wire-([1314,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3168],0,114212952,1700)
    {
    Name = "I_Fe_P2_a"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1314,3168],0,0,-1)
    {
    Name = "I_Fe_P2_a"
    }
   -Wire-([1314,3168],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3204],0,114213768,1790)
    {
    Name = "I_Fe_P2_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1314,3204],0,0,-1)
    {
    Name = "I_Fe_P2_b"
    }
   -Wire-([1314,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3240],0,114214584,1830)
    {
    Name = "I_Fe_P2_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-3"
    Max = "3"
    }
   0.datalabel([1314,3240],0,0,-1)
    {
    Name = "I_Fe_P2_c"
    }
   -Wire-([1314,3240],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3096],0,114215400,1590)
    {
    Name = "U_Fe_P2_b"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1314,3096],0,0,-1)
    {
    Name = "U_Fe_P2_b"
    }
   -Wire-([1314,3096],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3132],0,114216216,1660)
    {
    Name = "U_Fe_P2_c"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-600"
    Max = "600"
    }
   0.datalabel([1314,3132],0,0,-1)
    {
    Name = "U_Fe_P2_c"
    }
   -Wire-([1314,3132],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1476,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1548,3096],0,114217032,1640)
    {
    Name = "Ud_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1476,3096],0,0,-1)
    {
    Name = "Ud_Fe_P2"
    }
   -Wire-([1476,3096],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1548,3132],0,114217848,1670)
    {
    Name = "Idn_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1476,3132],0,0,-1)
    {
    Name = "Idn_Fe_P2"
    }
   -Wire-([1476,3132],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1548,3168],0,114218664,1730)
    {
    Name = "Idf_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1476,3168],0,0,-1)
    {
    Name = "Idf_Fe_P2"
    }
   -Wire-([1476,3168],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2340,630],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2484,630],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2322,2178],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.ground([2124,2268],1,0,-1)
    {
    }
   -Wire-([2124,2214],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([2124,2268],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2574,630],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2664,630],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([2592,1116],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2664,1116],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2448,630],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2574,1692],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2664,1692],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2430,2178],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2574,2178],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2664,2178],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,936],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,972],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,1008],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,1998],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3834,2070],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,936],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,972],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,1008],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,1998],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3852,2070],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3240,2034],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3240,1998],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3528,3222],0,0,-1)
    {
    Name = "xmon"
    }
   1.Xdebug0_76([3438,3222],0,0,2060)
    {
    XSTAT = "0"
    XPORT = "30330"
    Xmon01 = "Mon01"
    Xmon11 = "Mon11"
    Xmon12 = "Mon12"
    Xmon02 = "Mon02"
    Xmon03 = "Mon03"
    Xmon13 = "Mon13"
    Xmon04 = "Mon04"
    Xmon14 = "Mon14"
    Xmon05 = "Mon05"
    Xmon15 = "Mon15"
    Xmon06 = "Mon06"
    Xmon16 = "Mon16"
    Mon07 = "Mon07"
    Xmon17 = "Mon17"
    Xmon08 = "Mon08"
    Xmon18 = "Mon18"
    Xmon09 = "Mon09"
    Xmon19 = "Mon19"
    Xmon10 = "Mon10"
    Xmon20 = "Mon20"
    }
   0.datalabel([1260,3384],2,0,-1)
    {
    Name = "xmon"
    }
   0.datatap([1350,3402],0,0,2940)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1386,3402],0,0,2950)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1422,3402],0,0,2960)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1458,3402],0,0,2980)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1494,3402],0,0,2990)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1530,3402],0,0,3000)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1566,3402],0,0,3020)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1602,3402],0,0,3030)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1638,3402],0,0,3040)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1674,3402],0,0,2070)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1332,3366],6,0,4910)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1368,3366],6,0,4880)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1404,3366],6,0,4850)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1440,3366],6,0,4830)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1476,3366],6,0,4810)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1512,3366],6,0,4790)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1548,3366],6,0,4780)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1584,3366],6,0,4770)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1620,3366],6,0,4760)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1656,3366],6,0,4730)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1332,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1332,3348],3,114228864,5020)
    {
    Name = "Xmon1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon1"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1368,3348],3,114229272,4990)
    {
    Name = "Xmon2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon2"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1368,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1404,3348],3,114229680,4970)
    {
    Name = "Xmon3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon3"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1440,3348],3,114230088,4950)
    {
    Name = "Xmon4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon4"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1404,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1440,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1476,3348],3,114230496,4930)
    {
    Name = "Xmon5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon5"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1512,3348],3,114230904,4900)
    {
    Name = "Xmon6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon6"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1476,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1512,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1548,3348],3,114231312,4870)
    {
    Name = "Xmon7"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon7"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1584,3348],3,114231720,4860)
    {
    Name = "Xmon8"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon8"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1620,3348],3,114232128,4840)
    {
    Name = "Xmon9"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon9"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1656,3348],3,114232536,4820)
    {
    Name = "Xmon10"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon10"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1548,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1584,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1620,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1656,3366],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1350,3420],1,114232944,4720)
    {
    Name = "Xmon11"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon11"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1386,3420],1,114233352,4710)
    {
    Name = "Xmon12"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon12"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1422,3420],1,114233760,4700)
    {
    Name = "Xmon13"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon13"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1458,3420],1,114234168,4690)
    {
    Name = "Xmon14"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon14"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1494,3420],1,114234576,4680)
    {
    Name = "Xmon15"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon15"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1530,3420],1,114234984,4670)
    {
    Name = "Xmon16"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon16"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1566,3420],1,114235392,4660)
    {
    Name = "Xmon17"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon17"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1602,3420],1,114235800,4650)
    {
    Name = "Xmon18"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon18"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1638,3420],1,114236208,4640)
    {
    Name = "Xmon19"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon19"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1674,3420],1,114236616,2090)
    {
    Name = "Xmon20"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Xmon20"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1350,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1386,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1422,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1458,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1494,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1530,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1566,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1602,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1638,3420],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1260,3384],0,0,-1)
    {
    Vertex="0,0;396,0"
    }
   0.pgb([1548,3060],0,114237024,1580)
    {
    Name = "U_Fe_P2_RMS"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kV"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "500"
    }
   0.datalabel([1476,3060],0,0,-1)
    {
    Name = "U_Fe_P2_RMS"
    }
   -Wire-([1476,3060],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3276,1008],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2502,1872],0,0,-1)
    {
    Vertex="0,0;0,-180"
    }
   -Wire-([2502,1944],0,0,-1)
    {
    Vertex="0,0;0,234"
    }
   -Wire-([2502,828],0,0,-1)
    {
    Vertex="0,0;0,-198"
    }
   -Wire-([2502,900],0,0,-1)
    {
    Vertex="0,0;0,216"
    }
   -Wire-([2574,1116],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([324,3474],0,0,-1)
    {
    Name = "Ud_Fe_P2"
    }
   0.datalabel([468,3528],0,0,-1)
    {
    Name = "Idn_Fe_P2"
    }
   0.datalabel([612,3474],0,0,-1)
    {
    Name = "Pd_Fe_P2"
    }
   0.datalabel([702,3546],6,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.compar([630,3546],4,0,4630)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "-1"
    OLo = "1"
    }
   0.mult([468,3474],0,0,4070)
    {
    }
   -Wire-([468,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([324,3474],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.mult([558,3474],0,0,4740)
    {
    }
   -Wire-([684,3546],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.const([684,3582],2,0,2200)
    {
    Name = ""
    Value = "0.5"
    }
   -Wire-([648,3582],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([702,3546],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,3546],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.select([342,3618],6,0,3060)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([270,3618],0,0,2190)
    {
    Name = ""
    Value = "-1.0"
    }
   0.const([270,3654],0,0,2260)
    {
    Name = ""
    Value = "1.0"
    }
   0.unity([342,3582],1,0,2120)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([342,3546],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([378,3618],0,0,-1)
    {
    Vertex="0,0;18,0;18,-108"
    }
   0.datalabel([342,3528],6,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.mult([396,3474],0,0,3430)
    {
    }
   0.radiolink([612,3456],3,0,4800)
    {
    Source = ""
    Name = "Pd_Fe_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([612,3474],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([594,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3780,1998],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3780,2034],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3780,2070],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3780,936],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3780,972],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3780,1008],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -ControlPanel-([3600,1836],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3600,1836
    Extents = 0,0,90,126
    Switch(114201936)
    }
   -Wire-([3006,1800],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3006,1764],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3006,1998],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3222,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3222,2070],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3222,1998],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -ControlPanel-([3582,1044],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 3582,1044
    Extents = 0,0,90,126
    Switch(114201120)
    }
   0.annotation([3348,1134],4,0,-1)
    {
    AL1 = "LV - Y"
    AL2 = ""
    }
   0.inductor([2664,630],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2664,1116],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2664,1692],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   0.inductor([2664,2178],2,0,-1)
    {
    L = "0.0005 [H]"
    }
   -Wire-([3654,2448],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,2484],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,2520],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var([3330,1494],4,114246000,360)
    {
    Name = "Tap_Fe_P2_B1"
    Group = ""
    Display = "0"
    Max = "22"
    Min = "-6"
    Value = "-4.0"
    Units = ""
    Collect = "1"
    }
   -Wire-([3294,1494],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.mult([3186,1494],4,0,2430)
    {
    }
   0.const([3222,1530],4,0,380)
    {
    Name = ""
    Value = "0.0125"
    }
   -Wire-([3150,1494],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.sumjct([3078,1494],4,0,3130)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3114,1530],4,0,370)
    {
    Name = ""
    Value = "1.0"
    }
   0.datalabel([2988,1494],4,0,-1)
    {
    Name = "TapP_Fe_P2_B1"
    }
   0.datalabel([2988,1602],4,0,-1)
    {
    Name = "TCP_Fe_P2_B1"
    }
   0.mult([3204,1602],4,0,2440)
    {
    }
   0.const([3240,1638],4,0,400)
    {
    Name = ""
    Value = "-1.0"
    }
   0.sumjct([3078,1602],4,0,3140)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3114,1638],4,0,390)
    {
    Name = ""
    Value = "22.0"
    }
   -Wire-([3168,1602],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1494],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1602],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3240,1602],0,0,-1)
    {
    Vertex="0,0;36,0;36,-108"
    }
   0.datamerge([3096,2790],3,0,3670)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   -Wire-([3042,2754],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3060,2736],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3330,2790],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.datalabel([2916,2736],2,0,-1)
    {
    Name = "UDref_Fe_P2"
    }
   -Wire-([3024,2736],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4482,2646],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([4464,2646],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([4500,2646],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.datamerge([4536,2664],3,0,1450)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.datamerge([3204,3132],2,0,2900)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.datamerge([4356,2700],3,0,3360)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.const([4518,2610],1,0,1370)
    {
    Name = ""
    Value = "0.0"
    }
   0.const([4410,2646],1,0,1400)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4464,2628],1,0,-1)
    {
    Name = "U_Fe_P2_a"
    }
   0.datalabel([4662,2430],2,0,-1)
    {
    Name = "TCP_Fe_P2_B1"
    }
   0.datalabel([5112,2628],2,0,-1)
    {
    Name = "FPD_Fe_P2_B1"
    }
   0.datalabel([5112,2664],2,0,-1)
    {
    Name = "FTD_Fe_P2_B1"
    }
   0.datalabel([2916,2772],2,0,-1)
    {
    Name = "Iord_Fe_P2"
    }
   0.datalabel([4482,2610],1,0,-1)
    {
    Name = "U_Fe_P2_b"
    }
   0.datalabel([4500,2592],1,0,-1)
    {
    Name = "U_Fe_P2_c"
    }
   -Wire-([5076,2556],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3078,2772],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([2952,2754],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([5130,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([2916,2718],2,0,-1)
    {
    Name = "Pref_Fe_P2"
    }
   -Wire-([2952,2736],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2970,2772],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.radiolink([2826,2700],4,0,1310)
    {
    Source = "Main"
    Name = "Freq_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2700],2,0,-1)
    {
    Name = "Freq_Ctrl_XS800"
    }
   -Wire-([2880,2700],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2880,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datamerge([5292,2484],7,0,4510)
    {
    N = "6"
    Type = "1"
    Disp = "1"
    }
   0.datatap([5184,2538],6,0,3790)
    {
    Index = "1"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5238,2538],6,0,4410)
    {
    Index = "2"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5256,2538],6,0,4400)
    {
    Index = "3"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5274,2538],6,0,4380)
    {
    Index = "4"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5292,2538],6,0,4360)
    {
    Index = "5"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,2538],6,0,4350)
    {
    Index = "6"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datalabel([5418,2484],0,0,-1)
    {
    Name = "FPY_Fe_P2_B1"
    }
   -Wire-([5346,2484],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datamerge([5292,2664],3,0,4190)
    {
    N = "6"
    Type = "2"
    Disp = "1"
    }
   -Wire-([5346,2664],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5418,2664],6,0,-1)
    {
    Name = "FTY_Fe_P2_B1"
    }
   0.select([5292,2394],6,0,3820)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5130,2340],6,0,-1)
    {
    Name = "CF_Fe_P2_B1"
    }
   0.unity([5202,2340],0,0,1200)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5220,2430],0,0,1290)
    {
    Name = ""
    Value = "0.0"
    }
   0.unity([5364,2394],0,0,3960)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5256,2394],0,0,3800)
    {
    IType = "1"
    OType = "2"
    }
   0.monostable([5238,2340],0,0,1210)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5130,2340],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([5292,2754],0,0,4180)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5130,2808],6,0,-1)
    {
    Name = "CF_Fe_P2_B1"
    }
   0.unity([5202,2808],6,0,1740)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5220,2718],6,0,1600)
    {
    Name = ""
    Value = "0.0"
    }
   0.monostable([5238,2808],6,0,1770)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5130,2808],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5220,2754],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5328,2754],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5274,2808],0,0,-1)
    {
    Vertex="0,0;18,0;18,-18"
    }
   -Wire-([5274,2340],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   0.radiolink([2664,2376],4,0,890)
    {
    Source = "Main"
    Name = "Half_Mode_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2394],2,0,-1)
    {
    Name = "Half_Mode_P2_XS800"
    }
   -Wire-([2880,2664],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2880,2664],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([2826,2628],4,0,1240)
    {
    Source = "Main"
    Name = "Bipole_Mode_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2628],2,0,-1)
    {
    Name = "Bipole_Mode_XS800"
    }
   -Wire-([2880,2628],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([2880,2628],0,0,-1)
    {
    Vertex="0,0;252,0;252,90"
    }
   0.radiolink([2826,2340],4,0,840)
    {
    Source = "Main"
    Name = "Bipole_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2826,2556],4,0,1190)
    {
    Source = "Main"
    Name = "SSDC_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2340],2,0,-1)
    {
    Name = "Bipole_Ctrl_XS800"
    }
   0.datalabel([2916,2556],2,0,-1)
    {
    Name = "SSDC_XS800"
    }
   0.datamerge([4374,3582],3,0,3610)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.const([4428,3528],1,0,2340)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4248,2628],2,0,-1)
    {
    Name = "IVD_a_B1_Fe_P2"
    }
   0.datalabel([4248,2646],2,0,-1)
    {
    Name = "IVY_c_B1_Fe_P2"
    }
   0.datalabel([4248,2664],2,0,-1)
    {
    Name = "IVY_b_B1_Fe_P2"
    }
   0.datalabel([4248,2682],2,0,-1)
    {
    Name = "IVY_a_B1_Fe_P2"
    }
   0.datalabel([4248,2592],2,0,-1)
    {
    Name = "IVD_c_B1_Fe_P2"
    }
   0.datalabel([4248,2610],2,0,-1)
    {
    Name = "IVD_b_B1_Fe_P2"
    }
   -Wire-([4248,2664],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4248,2682],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4266,2664],0,0,-1)
    {
    Vertex="0,0;36,0;36,18"
    }
   -Wire-([4248,2646],0,0,-1)
    {
    Vertex="0,0;72,0;72,36"
    }
   -Wire-([4248,2628],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([4248,2610],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([4248,2592],0,0,-1)
    {
    Vertex="0,0;126,0;126,90"
    }
   -Wire-([4266,3564],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4266,3546],0,0,-1)
    {
    Vertex="0,0;54,0;54,18"
    }
   -Wire-([4266,3528],0,0,-1)
    {
    Vertex="0,0;72,0;72,36"
    }
   -Wire-([4266,3510],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([4266,3492],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([4266,3474],0,0,-1)
    {
    Vertex="0,0;126,0;126,90"
    }
   0.datalabel([4266,3510],2,0,-1)
    {
    Name = "IVD_a_B2_Fe_P2"
    }
   0.datalabel([4266,3528],2,0,-1)
    {
    Name = "IVY_c_B2_Fe_P2"
    }
   0.datalabel([4266,3546],2,0,-1)
    {
    Name = "IVY_b_B2_Fe_P2"
    }
   0.datalabel([4266,3564],2,0,-1)
    {
    Name = "IVY_a_B2_Fe_P2"
    }
   0.datalabel([4266,3474],2,0,-1)
    {
    Name = "IVD_c_B2_Fe_P2"
    }
   0.datalabel([4266,3492],2,0,-1)
    {
    Name = "IVD_b_B2_Fe_P2"
    }
   -Wire-([4266,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([2826,2664],4,0,1280)
    {
    Source = "Main"
    Name = "CMR_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2664],2,0,-1)
    {
    Name = "CMR_XS800"
    }
   0.radiolink([2826,2592],4,0,1220)
    {
    Source = "Main"
    Name = "TCOM_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2592],2,0,-1)
    {
    Name = "TCOM_XS800"
    }
   0.datalabel([2916,2502],2,0,-1)
    {
    Name = "Red_Volt_P2_XS800"
    }
   0.radiolink([2826,2448],4,0,990)
    {
    Source = "Main"
    Name = "Damp_Ctrl_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([2916,2448],2,0,-1)
    {
    Name = "Damp_Ctrl_XS800"
    }
   -Wire-([2826,2502],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2952,2700],0,0,-1)
    {
    Vertex="0,0;144,0;144,72"
    }
   -Wire-([2952,2664],0,0,-1)
    {
    Vertex="0,0;162,0;162,108"
    }
   -Wire-([3132,2718],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([2826,2592],0,0,-1)
    {
    Vertex="0,0;324,0;324,180"
    }
   -Wire-([2826,2556],0,0,-1)
    {
    Vertex="0,0;342,0;342,216"
    }
   -Wire-([2880,2502],0,0,-1)
    {
    Vertex="0,0;306,0;306,252"
    }
   -Wire-([2826,2448],0,0,-1)
    {
    Vertex="0,0;378,0;378,288"
    }
   -Wire-([2826,2394],0,0,-1)
    {
    Vertex="0,0;396,0;396,324"
    }
   -Wire-([2826,2340],0,0,-1)
    {
    Vertex="0,0;414,0;414,342"
    }
   -Wire-([3240,2754],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   1.Array_Adder([3294,2772],6,0,3680)
    {
    Type = "2"
    Adim = "12"
    Bdim = "1"
    Cdim = "13"
    Disp = "1"
    }
   -Wire-([3330,2772],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([2916,2718],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([2916,2736],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2916,2772],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3204,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([3060,3186],4,0,1970)
    {
    Source = "DCFG_XS800_P1"
    Name = "Down_Rect_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.unity([3114,3186],6,0,1980)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3060,3186],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   1.Classic_MC2([4824,2556],0,0,3750)
    {
    SYS_ID = "Fengxian_P2_B1"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "2"
    AP11 = "2"
    AP12 = "2"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   -Wire-([4446,2700],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5076,2592],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   1.Classic_MC2([4842,3438],0,0,3760)
    {
    SYS_ID = "Fengxian_P2_B2"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "2"
    AP11 = "2"
    AP12 = "2"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   -Wire-([4500,3528],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([4482,3528],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([4518,3528],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.datamerge([4554,3546],3,0,2350)
    {
    N = "4"
    Type = "2"
    Disp = "1"
    }
   0.const([4536,3492],1,0,2330)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([4482,3510],1,0,-1)
    {
    Name = "U_Fe_P2_a"
    }
   0.datalabel([4500,3492],1,0,-1)
    {
    Name = "U_Fe_P2_b"
    }
   0.datalabel([4518,3474],1,0,-1)
    {
    Name = "U_Fe_P2_c"
    }
   -Wire-([4482,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4464,3582],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.datalabel([3888,2970],6,0,-1)
    {
    Name = "LAN_Out_PCC_Fe_P2"
    }
   -Wire-([3708,2934],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([4176,2952],6,0,-1)
    {
    Name = "LAN_In_Fe_P2_B1"
    }
   0.datalabel([4176,2988],6,0,-1)
    {
    Name = "LAN_In_Fe_P2_B2"
    }
   0.datalabel([4176,2808],2,0,-1)
    {
    Name = "LAN_Out_Fe_P2_B1"
    }
   0.datalabel([4176,2844],2,0,-1)
    {
    Name = "LAN_Out_Fe_P2_B2"
    }
   0.datalabel([3888,2826],2,0,-1)
    {
    Name = "LAN_In_PCC_Fe_P2"
    }
   0.datalabel([5112,2502],6,0,-1)
    {
    Name = "LAN_Out_Fe_P2_B1"
    }
   0.datalabel([4518,3384],6,0,-1)
    {
    Name = "LAN_In_Fe_P2_B2"
    }
   0.datalabel([4500,2502],6,0,-1)
    {
    Name = "LAN_In_Fe_P2_B1"
    }
   0.datalabel([3762,2934],6,0,-1)
    {
    Name = "LAN_Out_PCC_Fe_P2"
    }
   0.datalabel([3186,2934],6,0,-1)
    {
    Name = "LAN_In_PCC_Fe_P2"
    }
   -Wire-([3204,2934],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5310,2538],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5292,2538],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5274,2538],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5256,2538],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5238,2538],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5148,2556],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5202,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5220,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5238,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5256,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5274,2556],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5184,2538],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([5184,2466],0,0,-1)
    {
    Vertex="0,0;0,-72;36,-72"
    }
   -Wire-([5364,2394],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;-162,72;-162,108;-144,108"
    }
   -Wire-([5310,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5292,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5274,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5256,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5238,2610],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5184,2610],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([5184,2682],0,0,-1)
    {
    Vertex="0,0;0,72;36,72"
    }
   -Wire-([5364,2754],0,0,-1)
    {
    Vertex="0,0;0,-72;-162,-72;-162,-126;-144,-126;-144,-108"
    }
   -Wire-([5382,2484],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5382,2664],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5112,3510],2,0,-1)
    {
    Name = "FPD_Fe_P2_B2"
    }
   0.datalabel([5112,3546],2,0,-1)
    {
    Name = "FTD_Fe_P2_B2"
    }
   -Wire-([5094,3438],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5148,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datamerge([5310,3366],7,0,4060)
    {
    N = "6"
    Type = "1"
    Disp = "1"
    }
   0.datatap([5202,3420],6,0,3770)
    {
    Index = "1"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5256,3420],6,0,4050)
    {
    Index = "2"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5274,3420],6,0,4040)
    {
    Index = "3"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5292,3420],6,0,4030)
    {
    Index = "4"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,3420],6,0,4020)
    {
    Index = "5"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,3420],6,0,4010)
    {
    Index = "6"
    Dim = "1"
    Type = "1"
    Style = "0"
    Disp = "1"
    }
   0.datalabel([5436,3366],0,0,-1)
    {
    Name = "FPY_Fe_P2_B2"
    }
   -Wire-([5364,3366],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datamerge([5310,3546],3,0,4000)
    {
    N = "6"
    Type = "2"
    Disp = "1"
    }
   -Wire-([5364,3546],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5436,3546],6,0,-1)
    {
    Name = "FTY_Fe_P2_B2"
    }
   0.select([5310,3276],6,0,3810)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5148,3222],6,0,-1)
    {
    Name = "CF_Fe_P2_B2"
    }
   0.unity([5220,3222],0,0,2300)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5238,3312],0,0,2320)
    {
    Name = ""
    Value = "0.0"
    }
   0.unity([5382,3276],0,0,3890)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5274,3276],0,0,3780)
    {
    IType = "1"
    OType = "2"
    }
   0.monostable([5256,3222],0,0,2310)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5148,3222],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([5310,3636],0,0,3990)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.datalabel([5148,3690],6,0,-1)
    {
    Name = "CF_Fe_P2_B2"
    }
   0.unity([5220,3690],6,0,2370)
    {
    IType = "2"
    OType = "1"
    }
   0.const([5238,3600],6,0,2360)
    {
    Name = ""
    Value = "0.0"
    }
   0.monostable([5256,3690],6,0,2380)
    {
    T = "0.02 [s]"
    INTR = "0"
    }
   -Wire-([5148,3690],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5238,3636],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5346,3636],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5292,3690],0,0,-1)
    {
    Vertex="0,0;18,0;18,-18"
    }
   -Wire-([5292,3222],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([5094,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5094,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5076,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5076,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5094,3474],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5112,3384],6,0,-1)
    {
    Name = "LAN_Out_Fe_P2_B2"
    }
   -Wire-([5058,3384],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5328,3420],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5310,3420],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5292,3420],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5274,3420],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5256,3420],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([5166,3438],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5220,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5238,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5256,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5274,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5292,3438],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5202,3420],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([5202,3348],0,0,-1)
    {
    Vertex="0,0;0,-72;36,-72"
    }
   -Wire-([5382,3276],0,0,-1)
    {
    Vertex="0,0;18,0;18,72;-162,72;-162,108;-144,108"
    }
   -Wire-([5328,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5310,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5292,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5274,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5256,3492],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5202,3492],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([5202,3564],0,0,-1)
    {
    Vertex="0,0;0,72;36,72"
    }
   -Wire-([5382,3636],0,0,-1)
    {
    Vertex="0,0;0,-72;-162,-72;-162,-126;-144,-126;-144,-108"
    }
   -Wire-([5400,3366],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5400,3546],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([4680,3312],2,0,-1)
    {
    Name = "TCP_Fe_P2_B2"
    }
   -Wire-([3186,2934],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3726,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5094,3384],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5058,3474],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5058,3510],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5058,3546],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5040,2502],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,2628],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,2664],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([5040,2556],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5040,2592],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.xnode([1332,2178],0,0,-1)
    {
    Name = "DC_P2_Fe"
    }
   0.voltmetergnd([1422,2178],4,0,670)
    {
    Name = "Ud_Fe_P2"
    }
   0.datatap([5202,3492],0,0,3880)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5256,3492],0,0,3870)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5274,3492],0,0,3860)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5292,3492],0,0,3850)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,3492],0,0,3840)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5328,3492],0,0,3830)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([5220,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5238,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5256,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5274,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5292,3474],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5166,3474],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datatap([5184,2610],0,0,3950)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5238,2610],0,0,3940)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5256,2610],0,0,3930)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5274,2610],0,0,3920)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5292,2610],0,0,3910)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([5310,2610],0,0,3900)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([5202,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5220,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5238,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5256,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5274,2592],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5148,2592],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   1.Classic_MC1([3492,2970],0,0,3730)
    {
    SYS_ID = "Fengxian_P2_PCC"
    SET15 = "1"
    SET21 = "2.0"
    SET22 = "3200.0"
    SET23 = "515.0"
    SET24 = "212.8"
    SET25 = "800.0"
    SET26 = "0.0"
    SET27 = "4000.0"
    SET28 = "50.0"
    SET29 = "Gamma_REF_Fe_P2"
    SET30 = "15.0"
    SET16 = "6252.0"
    SET14 = "1.0"
    SET33 = "0.0835"
    SET34 = "0.003"
    SET35 = "0.0"
    SET36 = "220.2"
    SET31 = "22.0"
    SET32 = "0.0125"
    CFC1 = "Gamma_Min"
    CFC16 = "TC_Up_Inv"
    CFC2 = "0.0835"
    CFC17 = "0.0835"
    CFC3 = "VCA_Gain_P"
    CFC18 = "0.0835"
    CFC4 = "AMAX_Gain"
    CFC19 = "0.0835"
    CFC5 = "600.0"
    CFC20 = "0.0835"
    CFC21 = "0.003"
    CFC6 = "0.8"
    CFC7 = "Gain"
    CFC22 = "Gamma0_Set"
    CFC8 = "Kp"
    CFC23 = "Gamma0_Reset"
    CFC9 = "IO_Lim"
    CFC24 = "RAML_Dec"
    CFC10 = "Ud_High"
    CFC25 = "600.0"
    CFC11 = "Ud_Low_Rec"
    CFC26 = "600.0"
    CFC12 = "Ud_Low_Inv"
    CFC27 = "CRAML_Ref"
    CFC13 = "TC_Dn_Rec"
    CFC28 = "RAML_Ref"
    CFC14 = "TC_Dn_Inv"
    CFC29 = "CDL_Lev"
    CFC15 = "TC_Up_Rec"
    CFC30 = "DL_Lev"
    noname6 = ""
    AP25 = "2"
    AP26 = "2"
    AP27 = "0"
    AP28 = "0"
    AP29 = "0"
    noname5 = ""
    AP10 = "0"
    AP11 = "2"
    AP12 = "0"
    AP13 = "0"
    AP14 = "0"
    AP15 = "0"
    AP16 = "0"
    }
   0.datalabel([918,3132],2,0,-1)
    {
    Name = "Ivy_Fe_P2_B1"
    }
   0.datatap([990,3114],6,0,5690)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1026,3114],6,0,5670)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1062,3114],6,0,5660)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3114],6,0,5650)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3114],6,0,5640)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3114],6,0,5630)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([990,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([990,3096],3,115047104,5750)
    {
    Name = "Ivy_Fe_P2_B1_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1026,3096],3,115047512,5740)
    {
    Name = "Ivy_Fe_P2_B1_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1026,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1062,3096],3,115047920,5730)
    {
    Name = "Ivy_Fe_P2_B1_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3096],3,115048328,5720)
    {
    Name = "Ivy_Fe_P2_B1_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1062,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1134,3096],3,115048736,5710)
    {
    Name = "Ivy_Fe_P2_B1_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3096],3,115049144,5680)
    {
    Name = "Ivy_Fe_P2_B1_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1134,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3114],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([918,3132],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([918,3222],2,0,-1)
    {
    Name = "Ivd_Fe_P2_B1"
    }
   0.datatap([990,3204],6,0,5410)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1026,3204],6,0,5390)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1062,3204],6,0,5370)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3204],6,0,5360)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3204],6,0,5340)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3204],6,0,5310)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([990,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([990,3186],3,115052408,5580)
    {
    Name = "Ivd_Fe_P2_B1_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1026,3186],3,115052816,5540)
    {
    Name = "Ivd_Fe_P2_B1_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1026,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1062,3186],3,115053224,5520)
    {
    Name = "Ivd_Fe_P2_B1_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3186],3,115053632,5490)
    {
    Name = "Ivd_Fe_P2_B1_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1062,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.pgb([1134,3186],3,115054040,5450)
    {
    Name = "Ivd_Fe_P2_B1_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3186],3,115054448,5430)
    {
    Name = "Ivd_Fe_P2_B1_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   -Wire-([1134,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3204],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([918,3222],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([918,3312],2,0,-1)
    {
    Name = "Ivy_Fe_P2_B2"
    }
   0.datatap([990,3294],6,0,5140)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1026,3294],6,0,5120)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1062,3294],6,0,5110)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3294],6,0,5100)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3294],6,0,5090)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3294],6,0,5080)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([990,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1026,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1062,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1134,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3294],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([918,3312],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.datalabel([918,3402],2,0,-1)
    {
    Name = "Ivd_Fe_P2_B2"
    }
   0.datatap([990,3384],6,0,5010)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1026,3384],6,0,4980)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1062,3384],6,0,4960)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1098,3384],6,0,4940)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1134,3384],6,0,4920)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1170,3384],6,0,4890)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([990,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1026,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1062,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1098,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1134,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1170,3384],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([918,3402],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
   0.pgb([990,3276],3,115060568,5210)
    {
    Name = "Ivy_Fe_P2_B2_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1026,3276],3,115060976,5190)
    {
    Name = "Ivy_Fe_P2_B2_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1062,3276],3,115061384,5180)
    {
    Name = "Ivy_Fe_P2_B2_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3276],3,115061792,5170)
    {
    Name = "Ivy_Fe_P2_B2_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1134,3276],3,115062200,5160)
    {
    Name = "Ivy_Fe_P2_B2_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3276],3,115062608,5150)
    {
    Name = "Ivy_Fe_P2_B2_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([990,3366],3,115063016,5070)
    {
    Name = "Ivd_Fe_P2_B2_V1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1026,3366],3,115063424,5060)
    {
    Name = "Ivd_Fe_P2_B2_V2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1062,3366],3,115063832,5050)
    {
    Name = "Ivd_Fe_P2_B2_V3"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1098,3366],3,115064240,5040)
    {
    Name = "Ivd_Fe_P2_B2_V4"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1134,3366],3,115064648,5030)
    {
    Name = "Ivd_Fe_P2_B2_V5"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1170,3366],3,115065056,5000)
    {
    Name = "Ivd_Fe_P2_B2_V6"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1"
    }
   0.pgb([1548,3240],0,115065464,5130)
    {
    Name = "Pd_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "7000"
    }
   0.datalabel([1476,3240],0,0,-1)
    {
    Name = "Pd_Fe_P2"
    }
   -Wire-([1476,3240],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3762,3114],2,0,-1)
    {
    Name = "Plot_PCC_Fe_P2"
    }
   -Wire-([3708,3114],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([5112,2718],2,0,-1)
    {
    Name = "Plot_Fe_P2_B1"
    }
   -Wire-([5040,2718],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([5112,3600],2,0,-1)
    {
    Name = "Plot_Fe_P2_B2"
    }
   -Wire-([5058,3600],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([216,2952],2,0,-1)
    {
    Name = "Plot_PCC_Fe_P2"
    }
   0.datalabel([756,2952],2,0,-1)
    {
    Name = "Plot_Fe_P2_B1"
    }
   0.datalabel([1224,2952],2,0,-1)
    {
    Name = "Plot_Fe_P2_B2"
    }
   0.pgb([828,2916],5,115068728,6450)
    {
    Name = "Alpha_Ord_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([864,2916],5,115069136,6440)
    {
    Name = "Alpha_Meas_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([900,2916],5,115069544,6430)
    {
    Name = "Overlap_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([936,2916],5,115069952,6420)
    {
    Name = "Gamma_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1296,2916],5,115070360,6180)
    {
    Name = "Alpha_Ord_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1332,2916],5,115070768,6160)
    {
    Name = "Alpha_Meas_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1368,2916],5,115071176,6130)
    {
    Name = "Overlap_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1404,2916],5,115071584,6120)
    {
    Name = "Gamma_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([4662,2286],4,0,-1)
    {
    Name = "BPP_Fe_P2_B1"
    }
   0.var_switch([4554,2286],0,115072400,1010)
    {
    Name = "BPP_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "BPP"
    Toff = "Normal"
    }
   -Wire-([4608,2286],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4554,2214],0,115072808,940)
    {
    Name = "CF_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "CF"
    Toff = "Normal"
    }
   0.datalabel([4662,2214],4,0,-1)
    {
    Name = "CF_Fe_P2_B1"
    }
   -Wire-([4608,2214],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.inv([4896,2160],0,0,3490)
    {
    INTR = "0"
    }
   0.var_switch([4554,2250],0,115074032,970)
    {
    Name = "A90_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "A90"
    Toff = "Normal"
    }
   0.datalabel([4662,2250],4,0,-1)
    {
    Name = "A90_Fe_P2_B1"
    }
   -Wire-([4608,2250],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4644,2286],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4572,3114],0,115074848,2080)
    {
    Name = "CF_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "CF"
    Toff = "Normal"
    }
   0.datalabel([4662,3114],4,0,-1)
    {
    Name = "CF_Fe_P2_B2"
    }
   -Wire-([4608,3114],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4518,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4500,2502],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datamerge([4734,2268],0,0,3640)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([4824,2232],4,0,-1)
    {
    Name = "Ret_Fe_P2_B1"
    }
   0.datalabel([4824,2340],4,0,-1)
    {
    Name = "Station_Fe_P2"
    }
   0.datalabel([4824,2376],0,0,-1)
    {
    Name = "Res_BPP_Fe_P2_B1"
    }
   0.datalabel([4824,2394],0,0,-1)
    {
    Name = "Y_Block_Fe_P2_B1"
    }
   0.datalabel([4824,2196],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.datalabel([4824,2214],4,0,-1)
    {
    Name = "Debl_Fe_P2_B1"
    }
   -Wire-([4752,2232],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4824,2358],4,0,-1)
    {
    Name = "BPP_Fe_P2_B1"
    }
   -Wire-([4752,2358],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2268],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4824,2268],4,0,-1)
    {
    Name = "A90_Fe_P2_B1"
    }
   -Wire-([4752,2214],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2286],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2340],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2376],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4752,2394],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.var_switch([4770,2160],0,115079336,880)
    {
    Name = "Debl_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Deblock"
    Toff = "Block"
    }
   0.logic([4860,2124],6,0,3480)
    {
    Type = "1"
    Inv = "0"
    }
   0.compar([4554,1998],0,0,2500)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   -Wire-([4500,1998],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.time-sig([4464,1998],0,0,730)
    {
    }
   0.annotation([4482,1962],0,0,-1)
    {
    AL1 = "  START SEQUENCE:  "
    AL2 = ""
    }
   0.var([4518,2034],0,115081376,760)
    {
    Name = "T_start_inv_B1"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.1"
    Units = "s"
    Collect = "1"
    }
   -Wire-([4644,2088],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4698,2088],2,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   -Wire-([4500,2124],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.compar([4554,2124],0,0,2550)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.var([4518,2160],0,115082600,820)
    {
    Name = "T_start_rect_B1"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.25"
    Units = "s"
    Collect = "1"
    }
   0.buffer([4644,2070],3,0,2540)
    {
    HI = "0.5"
    LO = "0.5"
    Inv = "1"
    INTR = "0"
    }
   -Wire-([4644,2070],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4716,2124],0,0,3270)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4680,2124],0,0,2560)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4662,2160],0,0,2570)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4644,2088],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4626,2124],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4662,2160],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4752,2088],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4500,1998],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([4626,1998],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic([4716,2034],6,0,3260)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4680,1998],0,0,2510)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4680,2034],0,0,3250)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4752,2034],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4788,2088],6,0,3470)
    {
    Type = "2"
    Inv = "0"
    }
   0.unity([4842,2160],0,0,900)
    {
    IType = "2"
    OType = "3"
    }
   -Wire-([4842,2160],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18;-18,-36"
    }
   -Wire-([4896,2124],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -ControlPanel-([4248,2034],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4248,2034
    Extents = 0,0,108,126
    Slider(115082600)
    }
   -ControlPanel-([4356,2034],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4356,2034
    Extents = 0,0,108,126
    Slider(115081376)
    }
   -Wire-([4896,2160],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4806,2214],0,0,-1)
    {
    Vertex="0,0;90,0;90,-18"
    }
   0.logic([4932,2196],7,0,3630)
    {
    Type = "2"
    Inv = "0"
    }
   -Wire-([4806,2232],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.var_switch([5868,2196],0,115087088,1090)
    {
    Name = "Retard_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Retard"
    Toff = "Normal"
    }
   0.datalabel([4662,2322],4,0,-1)
    {
    Name = "Res_BPP_Fe_P2_B1"
    }
   0.var_switch([4554,2322],0,115087904,1070)
    {
    Name = "Res_BPP_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Reset"
    Toff = "Normal"
    }
   -Wire-([4608,2322],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4644,2322],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4590,2214],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4590,2250],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4590,2286],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4590,2322],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4554,2358],0,115088312,1170)
    {
    Name = "Y_Block_Fe_P2_B1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Y_Block"
    Toff = "Normal"
    }
   0.datalabel([4662,2358],4,0,-1)
    {
    Name = "Y_Block_Fe_P2_B1"
    }
   -Wire-([4590,2358],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.consti([4914,2322],4,0,1160)
    {
    Name = ""
    Value = "0"
    }
   0.consti([4914,2304],4,0,1120)
    {
    Name = ""
    Value = "0"
    }
   0.consti([4914,2250],4,0,1020)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4806,2196],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4806,2340],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4806,2358],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4806,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4806,2394],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4752,2322],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4752,2304],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4752,2250],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4806,2268],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.consti([4914,2286],4,0,1080)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4806,2286],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.var_switch([4788,3024],0,115090760,1990)
    {
    Name = "Debl_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Deblock"
    Toff = "Block"
    }
   0.logic([4878,2988],6,0,3570)
    {
    Type = "1"
    Inv = "0"
    }
   0.compar([4572,2862],0,0,2820)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   -Wire-([4518,2862],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.time-sig([4482,2862],0,0,1710)
    {
    }
   0.annotation([4500,2826],0,0,-1)
    {
    AL1 = "  START SEQUENCE:  "
    AL2 = ""
    }
   0.var([4536,2898],0,115092800,1800)
    {
    Name = "T_start_inv_B2"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.1"
    Units = "s"
    Collect = "1"
    }
   -Wire-([4662,2952],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4716,2952],2,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   -Wire-([4518,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.compar([4572,2988],0,0,2890)
    {
    Pulse = "0"
    INTR = "0"
    OPos = "1"
    ONone = "0"
    ONeg = "1"
    OHi = "1"
    OLo = "0"
    }
   0.var([4536,3024],0,115094024,1940)
    {
    Name = "T_start_rect_B2"
    Group = ""
    Display = "0"
    Max = "1"
    Min = "0"
    Value = "0.25"
    Units = "s"
    Collect = "1"
    }
   0.buffer([4662,2934],3,0,1850)
    {
    HI = "0.5"
    LO = "0.5"
    Inv = "1"
    INTR = "0"
    }
   -Wire-([4662,2934],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4734,2988],0,0,3420)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4698,2988],0,0,1900)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4680,3024],0,0,2930)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4662,2952],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4644,2988],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4680,3024],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4770,2952],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([4518,2862],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([4644,2862],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic([4734,2898],6,0,2860)
    {
    Type = "1"
    Inv = "0"
    }
   0.unity([4698,2862],0,0,2830)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4698,2898],0,0,2850)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([4770,2898],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.logic([4806,2952],6,0,3560)
    {
    Type = "2"
    Inv = "0"
    }
   0.unity([4860,3024],0,0,2000)
    {
    IType = "2"
    OType = "3"
    }
   -Wire-([4860,3024],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18;-18,-36"
    }
   -Wire-([4914,2988],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -ControlPanel-([4266,2898],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4266,2898
    Extents = 0,0,108,126
    Slider(115094024)
    }
   -ControlPanel-([4374,2898],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 4374,2898
    Extents = 0,0,108,126
    Slider(115092800)
    }
   0.datamerge([4752,3150],0,0,3710)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([4842,3114],4,0,-1)
    {
    Name = "Ret_Fe_P2_B2"
    }
   0.datalabel([4842,3222],4,0,-1)
    {
    Name = "Station_Fe_P2"
    }
   0.datalabel([4842,3258],0,0,-1)
    {
    Name = "Res_BPP_Fe_P2_B2"
    }
   0.datalabel([4842,3276],0,0,-1)
    {
    Name = "Y_Block_Fe_P2_B2"
    }
   0.datalabel([4842,3078],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.datalabel([4842,3096],4,0,-1)
    {
    Name = "Debl_Fe_P2_B2"
    }
   -Wire-([4770,3114],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4842,3240],4,0,-1)
    {
    Name = "BPP_Fe_P2_B2"
    }
   -Wire-([4770,3240],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([4842,3150],4,0,-1)
    {
    Name = "A90_Fe_P2_B2"
    }
   -Wire-([4770,3096],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4770,3168],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4770,3222],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4770,3258],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4770,3276],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4824,3096],0,0,-1)
    {
    Vertex="0,0;90,0;90,-18"
    }
   0.consti([4932,3204],4,0,2270)
    {
    Name = ""
    Value = "0"
    }
   0.consti([4932,3186],4,0,2240)
    {
    Name = ""
    Value = "0"
    }
   0.consti([4932,3132],4,0,2130)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4824,3222],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4824,3240],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4824,3258],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4824,3276],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4770,3204],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4770,3186],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([4770,3132],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.consti([4932,3168],4,0,2210)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([4824,3168],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.inv([4914,3042],0,0,3580)
    {
    INTR = "0"
    }
   -Wire-([4914,3042],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.var_switch([5850,3096],0,115103816,2250)
    {
    Name = "Retard_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Retard"
    Toff = "Normal"
    }
   -Wire-([4914,3024],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([4950,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic([4950,3078],7,0,3700)
    {
    Type = "2"
    Inv = "0"
    }
   -Wire-([4770,3078],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([4680,3186],4,0,-1)
    {
    Name = "BPP_Fe_P2_B2"
    }
   0.var_switch([4572,3186],0,115105040,2180)
    {
    Name = "BPP_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "BPP"
    Toff = "Normal"
    }
   -Wire-([4626,3186],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([4572,3150],0,115105448,2110)
    {
    Name = "A90_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "A90"
    Toff = "Normal"
    }
   0.datalabel([4680,3150],4,0,-1)
    {
    Name = "A90_Fe_P2_B2"
    }
   -Wire-([4626,3150],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4662,3186],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([4680,3222],4,0,-1)
    {
    Name = "Res_BPP_Fe_P2_B2"
    }
   0.var_switch([4572,3222],0,115106672,2230)
    {
    Name = "Res_BPP_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Reset"
    Toff = "Normal"
    }
   -Wire-([4626,3222],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4662,3222],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4608,3150],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4608,3186],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4608,3222],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.var_switch([4572,3258],0,115107080,2280)
    {
    Name = "Y_Block_Fe_P2_B2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Y_Block"
    Toff = "Normal"
    }
   0.datalabel([4680,3258],4,0,-1)
    {
    Name = "Y_Block_Fe_P2_B2"
    }
   -Wire-([4608,3258],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.unity([4968,2160],2,0,3620)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([4986,3042],2,0,3690)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5058,3438],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3420,2628],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3474,2736],4,0,-1)
    {
    Name = "Pctrl_Fe_P2"
    }
   0.datamerge([3402,2682],0,0,3660)
    {
    N = "12"
    Type = "2"
    Disp = "1"
    }
   0.consti([3564,2700],4,0,1360)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3420,2700],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3420,2718],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3420,2754],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.consti([3564,2718],4,0,1390)
    {
    Name = ""
    Value = "1"
    }
   0.datalabel([3474,2754],4,0,-1)
    {
    Name = "Station_Fe_P2"
    }
   0.consti([3564,2790],4,0,1490)
    {
    Name = ""
    Value = "0"
    }
   0.consti([3564,2808],4,0,1500)
    {
    Name = ""
    Value = "0"
    }
   0.datalabel([3708,2736],4,0,-1)
    {
    Name = "Pctrl_Fe_P2"
    }
   0.var_switch([3618,2736],0,115111976,1420)
    {
    Name = "Pctrl_Fe_P2"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Pwr"
    Toff = "Curr"
    }
   -Wire-([3654,2736],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_switch([3618,2700],0,115112384,1380)
    {
    Name = "Rect_Fe_P2"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Rect"
    Toff = "Inv"
    }
   0.datalabel([3474,2610],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.datalabel([3708,2610],4,0,-1)
    {
    Name = "Debl_Fe_P2_B1"
    }
   0.consti([3564,2754],4,0,1440)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3474,2736],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.datalabel([3708,2700],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   -Wire-([3654,2700],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3420,2610],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3474,2700],4,0,-1)
    {
    Name = "OLT_Fe_P2"
    }
   0.datalabel([3474,2718],4,0,-1)
    {
    Name = "VATG_Fe_P2"
    }
   0.datalabel([3474,2664],4,0,-1)
    {
    Name = "Down_Fe_P2"
    }
   0.annotation([3672,2754],0,0,-1)
    {
    AL1 = "Station = 1 - Fulong"
    AL2 = "Station = 0 - Fengxian"
    }
   -Wire-([3420,2664],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3690,2700],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3690,2736],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([3618,2628],2,0,3650)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.datalabel([3708,2646],4,0,-1)
    {
    Name = "Debl_Fe_P2_B2"
    }
   -Wire-([3456,2628],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3654,2610],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3654,2646],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.consti([3564,2772],4,0,1460)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3420,2808],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3420,2790],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3420,2772],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3510,2754],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3492,2718],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3492,2700],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.consti([3564,2682],4,0,1340)
    {
    Name = ""
    Value = "0"
    }
   0.consti([3564,2646],4,0,1320)
    {
    Name = ""
    Value = "0"
    }
   -Wire-([3420,2682],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3420,2646],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3510,2628],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4770,3150],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4662,3150],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([4248,2574],2,0,-1)
    {
    Name = "ID_B1_Fe_P2"
    }
   -Wire-([4248,2574],0,0,-1)
    {
    Vertex="0,0;144,0;144,108"
    }
   0.datalabel([4266,3456],2,0,-1)
    {
    Name = "ID_B2_Fe_P2"
    }
   -Wire-([4266,3456],0,0,-1)
    {
    Vertex="0,0;144,0;144,108"
    }
   0.ammeter([2754,630],0,0,40)
    {
    Name = "ID_B2_Fe_P2"
    }
   -Wire-([2790,630],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.ammeter([2736,1692],0,0,410)
    {
    Name = "ID_B1_Fe_P2"
    }
   -Wire-([2718,1692],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2772,1692],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4122,2952],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4122,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4176,2844],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([4176,2808],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   1.LAN_BUS([4050,2844],4,0,3720)
    {
    noname534 = ""
    L1 = "25"
    L2 = "25"
    }
   1.BUS_TAP([4032,2988],0,0,3740)
    {
    noname6 = ""
    L_IN = "50"
    noname9 = ""
    OUT_1 = "25"
    OUT_2 = "25"
    }
   -Wire-([3888,2826],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4104,2808],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4104,2844],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4104,2952],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([4104,2988],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3888,2970],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.capacitor([2124,2214],1,0,-1)
    {
    C = "0.0028 [uF]"
    }
   -Sticky-([486,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 486,2736,612,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: Alpha Order (P) 
Ch12: Alpha Order (I )
Ch13: Alpha Order (OVL) 
Ch14: Alpha Order (RAML) 
Ch15: I Order From APC 
Ch16: ID  
Ch17: ID Resp 
Ch18: I Order Lim
Ch19: UD  
Ch20: UD (VDCOL)"
    }
   0.annotation([450,2700],0,0,-1)
    {
    AL1 = "Signals from PCC"
    AL2 = ""
    }
   -Sticky-([828,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 828,2736,990,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order
Ch2: Alpha Measured
Ch3: Overlap CFC
Ch4: Gamma CFC
Ch5: Alpha Order (SCA) 
Ch6: Alpha Order (Pole)
Ch7: Alpha PLL
Ch8: Ang Between Fire Meas
Ch9: Alpha PCO 
Ch10:Alpha SUB"
    }
   -Sticky-([1008,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 1008,2736,1170,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: IDNC 
Ch12: ID Resp Bridge
Ch13: Max IVY
Ch14: Max IVD
Ch15: HPERTIME
Ch16: EMG Fire Ind
Ch17: AMIN Fire Ind 
Ch18: UMIN Fire Ind
Ch19: Inc Gamma Ind
Ch20: ABZ Det Ind"
    }
   0.annotation([1008,2700],0,0,-1)
    {
    AL1 = "Signals from Bridge 1"
    AL2 = ""
    }
   0.annotation([1476,2700],0,0,-1)
    {
    AL1 = "Signals from Bridge 2"
    AL2 = ""
    }
   -Sticky-([1296,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 1296,2736,1458,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order
Ch2: Alpha Measured
Ch3: Overlap CFC
Ch4: Gamma CFC
Ch5: Alpha Order (SCA) 
Ch6: Alpha Order (Pole)
Ch7: Alpha PLL
Ch8: Ang Between Fire Meas
Ch9: Alpha PCO 
Ch10:Alpha SUB"
    }
   -Sticky-([1476,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 1476,2736,1638,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch11: IDNC 
Ch12: ID Resp Bridge
Ch13: Max IVY
Ch14: Max IVD
Ch15: HPERTIME
Ch16: EMG Fire Ind
Ch17: AMIN Fire Ind 
Ch18: UMIN Fire Ind
Ch19: Inc Gamma Ind
Ch20: ABZ Det Ind"
    }
   -Sticky-([306,2736],0)
    {
    Name = ""
    Font = 0
    Bounds = 306,2736,468,2862
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch1: Alpha Order (PCC)
Ch2: Alpha Order (CV1) 
Ch3: Alpha Order (CV2) 
Ch4: Alpha Max (CV1) 
Ch5: Alpha Max (CV2) 
Ch6: Alpha Max Lim (CV1) 
Ch7: Alpha Max Lim (CV2)  
Ch8: Alpha Min Lim (CV1)  
Ch9: Alpha Min Lim (CV2)   
Ch10: Alpha Order (VCA) "
    }
   0.datatap([306,2970],0,0,4550)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([342,2970],0,0,4540)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([378,2970],0,0,4530)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([414,2970],0,0,4520)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([450,2970],0,0,4500)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([486,2970],0,0,4490)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([522,2970],0,0,4480)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([558,2970],0,0,4470)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([594,2970],0,0,4460)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([630,2970],0,0,4450)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([288,2934],6,0,6590)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([324,2934],6,0,6570)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([360,2934],6,0,6560)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([396,2934],6,0,6530)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([432,2934],6,0,6520)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([468,2934],6,0,6500)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([504,2934],6,0,6490)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([540,2934],6,0,6480)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([576,2934],6,0,6470)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([612,2934],6,0,6460)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([288,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([324,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([360,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([396,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([432,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([468,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([540,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([576,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([612,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([306,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([342,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([378,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([414,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([450,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([558,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([594,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([630,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([216,2952],0,0,-1)
    {
    Vertex="0,0;396,0"
    }
   0.pgb([306,2988],1,115129520,6380)
    {
    Name = "Alpha_Order_P_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([342,2988],1,115129928,6350)
    {
    Name = "Alpha_Order_I_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([378,2988],1,115130336,6320)
    {
    Name = "Alpha_Order_OVL_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([414,2988],1,115130744,6290)
    {
    Name = "Alpha_Order_RAML_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([450,2988],1,115131152,6260)
    {
    Name = "I_Order_From_APC_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([486,2988],1,115131560,6240)
    {
    Name = "ID_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([522,2988],1,115131968,6220)
    {
    Name = "ID_Resp_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([558,2988],1,115132376,6200)
    {
    Name = "I_Order_Lim_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([594,2988],1,115132784,6170)
    {
    Name = "UD_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([630,2988],1,115133192,6140)
    {
    Name = "UD_VDCOL_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([288,2916],5,115133600,6650)
    {
    Name = "Alpha_Order_PCC_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([324,2916],5,115134008,6640)
    {
    Name = "Alpha_Order_CV1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([360,2916],5,115134416,6630)
    {
    Name = "Alpha_Order_CV2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([396,2916],5,115134824,6620)
    {
    Name = "Alpha_Max_CV1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([432,2916],5,115135232,6610)
    {
    Name = "Alpha_Max_CV2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([468,2916],5,115135640,6600)
    {
    Name = "Alpha_Max_Lim_CV1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([504,2916],5,115136048,6580)
    {
    Name = "Alpha_Max_Lim_CV2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([540,2916],5,115136456,6550)
    {
    Name = "Alpha_Min_Lim_CV1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([612,2916],5,115136864,6510)
    {
    Name = "Alpha_Order_VCA_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([576,2916],5,115137272,6540)
    {
    Name = "Alpha_Min_Lim_CV2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([900,2970],0,0,4420)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([936,2970],0,0,4390)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([972,2970],0,0,4370)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1008,2970],0,0,4340)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1044,2970],0,0,4330)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([828,2934],6,0,6400)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([864,2934],6,0,6370)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([900,2934],6,0,6340)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([936,2934],6,0,6300)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([972,2934],6,0,6280)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1008,2934],6,0,6250)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1044,2934],6,0,6230)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1080,2934],6,0,6210)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([828,2970],0,0,4440)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([864,2970],0,0,4430)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([828,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([864,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([900,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([936,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([972,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1008,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1044,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1080,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([828,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([864,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([900,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([936,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([972,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1008,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1044,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1080,2970],0,0,4320)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1080,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([756,2952],0,0,-1)
    {
    Vertex="0,0;306,0"
    }
   0.pgb([828,2988],1,115144208,6040)
    {
    Name = "IDNC_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([864,2988],1,115144616,6010)
    {
    Name = "ID_Resp_Bridge_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([900,2988],1,115145024,6000)
    {
    Name = "Max_IVY_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([936,2988],1,115145432,5970)
    {
    Name = "Max_IVD_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([972,2988],1,115145840,5940)
    {
    Name = "HPERTIME_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "ms"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "20"
    }
   0.pgb([1008,2988],1,115146248,5930)
    {
    Name = "EMG_Fire_Ind_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1044,2988],1,115146656,5910)
    {
    Name = "AMIN_Fire_Ind_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1080,2988],1,115147064,5890)
    {
    Name = "UMIN_Fire_Ind_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1008,2916],5,115147472,6390)
    {
    Name = "Alpha_Order_Pole_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1080,2916],5,115147880,6330)
    {
    Name = "Ang_Between_Fire_Meas_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1044,2916],5,115148288,6360)
    {
    Name = "Alpha_PLL_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1116,2970],0,0,4310)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1116,2934],6,0,6190)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1152,2934],6,0,6150)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1116,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1152,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1116,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1152,2970],0,0,4300)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1152,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([1116,2988],1,115150328,5870)
    {
    Name = "Inc_Gamma_Ind_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1152,2988],1,115150736,5860)
    {
    Name = "ABZ_Det_Ind_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1152,2916],5,115151144,6270)
    {
    Name = "Alpha_SUB_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1116,2916],5,115151552,6310)
    {
    Name = "Alpha_PCO_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([1062,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([972,2916],5,115151960,6410)
    {
    Name = "Alpha_Order_SCA_Fe_P2_B1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1368,2970],0,0,4270)
    {
    Index = "13"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1404,2970],0,0,4260)
    {
    Index = "14"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1440,2970],0,0,4250)
    {
    Index = "15"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1476,2970],0,0,4240)
    {
    Index = "16"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1512,2970],0,0,4230)
    {
    Index = "17"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1296,2934],6,0,6090)
    {
    Index = "1"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1332,2934],6,0,6080)
    {
    Index = "2"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1368,2934],6,0,6050)
    {
    Index = "3"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1404,2934],6,0,6020)
    {
    Index = "4"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1440,2934],6,0,5980)
    {
    Index = "5"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1476,2934],6,0,5960)
    {
    Index = "6"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1512,2934],6,0,5950)
    {
    Index = "7"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1548,2934],6,0,5920)
    {
    Index = "8"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1296,2970],0,0,4290)
    {
    Index = "11"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1332,2970],0,0,4280)
    {
    Index = "12"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1296,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1332,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1368,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1404,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1440,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1476,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1512,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1548,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1296,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1332,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1368,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1404,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1440,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1476,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1512,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1548,2970],0,0,4220)
    {
    Index = "18"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1548,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1224,2952],0,0,-1)
    {
    Vertex="0,0;306,0"
    }
   0.pgb([1296,2988],1,115158896,5850)
    {
    Name = "IDNC_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1332,2988],1,115159304,5840)
    {
    Name = "ID_Resp_Bridge_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1368,2988],1,115159712,5830)
    {
    Name = "Max_IVY_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1404,2988],1,115160120,5820)
    {
    Name = "Max_IVD_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1440,2988],1,115160528,5810)
    {
    Name = "HPERTIME_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "ms"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "20"
    }
   0.pgb([1476,2988],1,115160936,5800)
    {
    Name = "EMG_Fire_Ind_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1512,2988],1,115161344,5790)
    {
    Name = "AMIN_Fire_Ind_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1548,2988],1,115161752,5780)
    {
    Name = "UMIN_Fire_Ind_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1440,2916],5,115162160,6110)
    {
    Name = "Alpha_Order_SCA_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1476,2916],5,115162568,6100)
    {
    Name = "Alpha_Order_Pole_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1548,2916],5,115162976,6060)
    {
    Name = "Ang_Between_Fire_Meas_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1512,2916],5,115163384,6070)
    {
    Name = "Alpha_PLL_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.datatap([1584,2970],0,0,4210)
    {
    Index = "19"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1584,2934],6,0,5900)
    {
    Index = "9"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([1620,2934],6,0,5880)
    {
    Index = "10"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1584,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1620,2934],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1584,2988],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datatap([1620,2970],0,0,4200)
    {
    Index = "20"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([1620,2970],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.pgb([1584,2988],1,115165424,5770)
    {
    Name = "Inc_Gamma_Ind_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Ind"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1620,2988],1,115165832,5760)
    {
    Name = "ABZ_Det_Ind_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([1620,2916],5,115166240,5990)
    {
    Name = "Alpha_SUB_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([1584,2916],5,115166648,6030)
    {
    Name = "Alpha_PCO_Fe_P2_B2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([1530,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1548,3276],0,115167056,1870)
    {
    Name = "ID_B2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1476,3276],0,0,-1)
    {
    Name = "ID_B2_Fe_P2"
    }
   -Wire-([1476,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.pgb([1386,3276],0,115167872,1860)
    {
    Name = "ID_B1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "kA"
    mrun = "0"
    Pol = "0"
    Min = "-100"
    Max = "100"
    }
   0.datalabel([1314,3276],0,0,-1)
    {
    Name = "ID_B1_Fe_P2"
    }
   -Wire-([1314,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.ground([3384,846],7,0,-1)
    {
    }
   0.ground([3348,846],7,0,-1)
    {
    }
   0.ground([3312,846],7,0,-1)
    {
    }
   -Wire-([3276,936],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3276,972],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3312,774],0,0,-1)
    {
    Vertex="0,0;144,0;144,126"
    }
   -Wire-([3348,738],0,0,-1)
    {
    Vertex="0,0;144,0;144,162"
    }
   -Wire-([3384,702],0,0,-1)
    {
    Vertex="0,0;144,0;144,234"
    }
   -Wire-([3456,936],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([3456,972],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([3456,1008],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.annotation([3348,882],4,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([3348,900],4,0,-1)
    {
    AL1 = "LV - D"
    AL2 = ""
    }
   0.annotation([3348,2178],4,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([3348,2196],4,0,-1)
    {
    AL1 = "HV - Y"
    AL2 = ""
    }
   0.annotation([3348,1944],4,0,-1)
    {
    AL1 = "Saturation"
    AL2 = ""
    }
   0.annotation([3348,1962],4,0,-1)
    {
    AL1 = "HV - D"
    AL2 = ""
    }
   -Wire-([3276,1998],0,0,-1)
    {
    Vertex="0,0;324,0"
    }
   -Wire-([3276,2034],0,0,-1)
    {
    Vertex="0,0;324,0"
    }
   -Wire-([3276,2070],0,0,-1)
    {
    Vertex="0,0;324,0"
    }
   -Wire-([3222,1836],0,0,-1)
    {
    Vertex="0,0;234,0"
    }
   -Wire-([3456,1836],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([3222,1800],0,0,-1)
    {
    Vertex="0,0;270,0;270,162"
    }
   -Wire-([3222,1764],0,0,-1)
    {
    Vertex="0,0;306,0;306,234"
    }
   0.ground([3384,2142],7,0,-1)
    {
    }
   0.ground([3348,2142],7,0,-1)
    {
    }
   0.ground([3312,2142],7,0,-1)
    {
    }
   1.Saturation([3384,2142],4,0,6670)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.18"
    V3 = "1.10"
    C4 = "121.07"
    V4 = "1.15"
    C5 = "339.64"
    V5 = "1.20"
    C6 = "929.92"
    V6 = "1.30"
    C7 = "1518.00"
    V7 = "1.40"
    C8 = "2744.22"
    V8 = "1.60"
    C9 = "4027.54"
    V9 = "1.80"
    C10 = "5353.03"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3348,2142],4,0,6680)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.18"
    V3 = "1.10"
    C4 = "121.07"
    V4 = "1.15"
    C5 = "339.64"
    V5 = "1.20"
    C6 = "929.92"
    V6 = "1.30"
    C7 = "1518.00"
    V7 = "1.40"
    C8 = "2744.22"
    V8 = "1.60"
    C9 = "4027.54"
    V9 = "1.80"
    C10 = "5353.03"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3312,2142],4,0,6690)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.18"
    V3 = "1.10"
    C4 = "121.07"
    V4 = "1.15"
    C5 = "339.64"
    V5 = "1.20"
    C6 = "929.92"
    V6 = "1.30"
    C7 = "1518.00"
    V7 = "1.40"
    C8 = "2744.22"
    V8 = "1.60"
    C9 = "4027.54"
    V9 = "1.80"
    C10 = "5353.03"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   0.ground([3384,1908],7,0,-1)
    {
    }
   0.ground([3348,1908],7,0,-1)
    {
    }
   0.ground([3312,1908],7,0,-1)
    {
    }
   1.Saturation([3384,1908],4,0,6730)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.15"
    V3 = "1.10"
    C4 = "120.78"
    V4 = "1.15"
    C5 = "338.16"
    V5 = "1.20"
    C6 = "924.98"
    V6 = "1.30"
    C7 = "1508.99"
    V7 = "1.40"
    C8 = "2728.19"
    V8 = "1.60"
    C9 = "4004.01"
    V9 = "1.80"
    C10 = "5321.70"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3348,1908],4,0,6740)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.15"
    V3 = "1.10"
    C4 = "120.78"
    V4 = "1.15"
    C5 = "338.16"
    V5 = "1.20"
    C6 = "924.98"
    V6 = "1.30"
    C7 = "1508.99"
    V7 = "1.40"
    C8 = "2728.19"
    V8 = "1.60"
    C9 = "4004.01"
    V9 = "1.80"
    C10 = "5321.70"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3312,1908],4,0,6750)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B1"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.75"
    V1 = "1.00"
    C2 = "6.49"
    V2 = "1.05"
    C3 = "35.15"
    V3 = "1.10"
    C4 = "120.78"
    V4 = "1.15"
    C5 = "338.16"
    V5 = "1.20"
    C6 = "924.98"
    V6 = "1.30"
    C7 = "1508.99"
    V7 = "1.40"
    C8 = "2728.19"
    V8 = "1.60"
    C9 = "4004.01"
    V9 = "1.80"
    C10 = "5321.70"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3384,1080],4,0,6790)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.74"
    V4 = "1.15"
    C5 = "226.69"
    V5 = "1.20"
    C6 = "675.36"
    V6 = "1.30"
    C7 = "1120.64"
    V7 = "1.40"
    C8 = "2062.13"
    V8 = "1.60"
    C9 = "3044.52"
    V9 = "1.80"
    C10 = "4060.97"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3348,1080],4,0,6800)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.74"
    V4 = "1.15"
    C5 = "226.69"
    V5 = "1.20"
    C6 = "675.36"
    V6 = "1.30"
    C7 = "1120.64"
    V7 = "1.40"
    C8 = "2062.13"
    V8 = "1.60"
    C9 = "3044.52"
    V9 = "1.80"
    C10 = "4060.97"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3312,1080],4,0,6810)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.74"
    V4 = "1.15"
    C5 = "226.69"
    V5 = "1.20"
    C6 = "675.36"
    V6 = "1.30"
    C7 = "1120.64"
    V7 = "1.40"
    C8 = "2062.13"
    V8 = "1.60"
    C9 = "3044.52"
    V9 = "1.80"
    C10 = "4060.97"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3384,846],4,0,6870)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.70"
    V4 = "1.15"
    C5 = "226.50"
    V5 = "1.20"
    C6 = "674.65"
    V6 = "1.30"
    C7 = "1119.34"
    V7 = "1.40"
    C8 = "2059.77"
    V8 = "1.60"
    C9 = "3041.03"
    V9 = "1.80"
    C10 = "4056.31"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3348,846],4,0,6880)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.70"
    V4 = "1.15"
    C5 = "226.50"
    V5 = "1.20"
    C6 = "674.65"
    V6 = "1.30"
    C7 = "1119.34"
    V7 = "1.40"
    C8 = "2059.77"
    V8 = "1.60"
    C9 = "3041.03"
    V9 = "1.80"
    C10 = "4056.31"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   1.Saturation([3312,846],4,0,6890)
    {
    1 = "0"
    3 = "0"
    4 = "0"
    5 = "0"
    6 = "0"
    7 = "0"
    RATIO = "TapP_Fe_P2_B2"
    UR = "515"
    PR = "297.1 [MVA]"
    TDAMP = "1.0 [s]"
    TSTART = "0.1 [s]"
    NAME = ""
    U0 = "515"
    P0 = "297.1 [MVA]"
    F0 = "50.0 [Hz]"
    C0 = "0"
    V0 = "0"
    C1 = "2.21"
    V1 = "1.00"
    C2 = "4.70"
    V2 = "1.05"
    C3 = "22.08"
    V3 = "1.10"
    C4 = "75.70"
    V4 = "1.15"
    C5 = "226.50"
    V5 = "1.20"
    C6 = "674.65"
    V6 = "1.30"
    C7 = "1119.34"
    V7 = "1.40"
    C8 = "2059.77"
    V8 = "1.60"
    C9 = "3041.03"
    V9 = "1.80"
    C10 = "4056.31"
    V10 = "2.00 "
    C11 = "0 [Apeak]"
    V11 = "0 [Vrms pu]"
    C12 = "0 [Apeak]"
    V12 = "0 [Vrms pu]"
    C13 = "0 [Apeak]"
    V13 = "0 [Vrms pu]"
    C14 = "0 [Apeak]"
    V14 = "0 [Vrms pu]"
    C15 = "0 [Apeak]"
    V15 = "0 [Vrms pu]"
    C16 = "0 [Apeak]"
    V16 = "0 [Vrms pu]"
    C17 = "0 [Apeak]"
    V17 = "0 [Vrms pu]"
    C18 = "0 [Apeak]"
    V18 = "0 [Vrms pu]"
    C19 = "0 [Apeak]"
    V19 = "0 [Vrms pu]"
    Ref = "1JNL100014-021"
    Rev = "00"
    }
   0.radiolink([5022,2142],3,0,6660)
    {
    Source = "Main"
    Name = "Retard_Fe_P2_B1"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([5004,2160],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5022,2142],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([5040,3024],3,0,4750)
    {
    Source = "Main"
    Name = "Retard_Fe_P2_B2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   -Wire-([5022,3042],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5040,3024],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([3060,3168],4,0,1920)
    {
    Source = "Fengxian_P1"
    Name = "Retard_Fe_P1_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([3060,3150],4,0,1890)
    {
    Source = "Fengxian_P1"
    Name = "Retard_Fe_P1_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.unity([3114,3150],6,0,1910)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3114,3168],6,0,1950)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3060,3168],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3060,3150],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5508,2106],2,0,920)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([5454,2070],2,0,830)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([6120,2196],4,0,-1)
    {
    Name = "Retard_Fe_P2_B1"
    }
   0.logic_mult([5778,2106],0,0,3290)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([6102,2196],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([6012,2196],6,0,3510)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([5904,2196],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([6048,2196],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([5886,2232],0,0,1180)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([5922,2232],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5958,2142],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([6012,2160],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([5562,2070],0,0,850)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5670,2124],0,0,2620)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([5598,2124],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.logic_mult([5940,2142],0,0,3500)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([5778,2178],0,0,3300)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5814,2106],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([5814,2178],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.inv([5688,2160],0,0,2640)
    {
    INTR = "0"
    }
   0.unity([5670,2160],0,0,2630)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5634,2088],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5670,2088],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5598,2124],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5670,2124],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5634,2124],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5670,2160],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5670,2196],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5724,2088],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5724,2124],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5724,2160],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5724,2196],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5454,2214],2,0,1050)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([5508,2178],2,0,980)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([5598,2088],0,0,2580)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([5562,2106],0,0,930)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5508,2070],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5508,2106],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([5598,2196],0,0,2650)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5634,2196],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.unity([5562,2178],0,0,1000)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5562,2214],0,0,1060)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5508,2178],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5508,2214],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([5490,2034],6,0,-1)
    {
    Name = "Retard_Rect_P2"
    }
   -Wire-([5454,2070],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5490,2070],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([5490,2250],4,0,-1)
    {
    Name = "Retard_Inv_P2"
    }
   -Wire-([5454,2214],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5490,2214],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([5076,2160],4,0,-1)
    {
    Name = "Retard_Fe_P2_B1"
    }
   -Wire-([5040,2160],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([5490,3006],2,0,2040)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Rect_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([6102,3096],4,0,-1)
    {
    Name = "Retard_Fe_P2_B2"
    }
   0.logic_mult([5760,3006],0,0,3050)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([6084,3096],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([5994,3096],6,0,3600)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([5886,3096],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([6030,3096],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([5868,3132],0,0,2290)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([5904,3132],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5940,3042],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5994,3060],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([5544,2970],0,0,2020)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5652,3024],0,0,2100)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([5580,3024],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.logic_mult([5922,3042],0,0,3590)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([5760,3078],0,0,3440)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5796,3006],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([5796,3078],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.inv([5670,3060],0,0,2150)
    {
    INTR = "0"
    }
   0.unity([5652,3060],0,0,2140)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5616,2988],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5652,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5580,3024],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5652,3024],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5616,3024],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([5652,3060],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5652,3096],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([5706,2988],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5706,3024],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5706,3060],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5706,3096],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([5490,3078],2,0,2160)
    {
    Source = "Sequences_XS800"
    Name = "Retard_Inv_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([5580,2988],0,0,2970)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([5544,3006],0,0,2050)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5490,2970],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5490,3006],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.logic_mult([5580,3096],0,0,3070)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([5616,3096],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.unity([5544,3078],0,0,2170)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([5544,3114],0,0,2220)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([5490,3078],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([5490,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([5454,2970],6,0,-1)
    {
    Name = "Retard_Rect_P2"
    }
   0.datalabel([5454,3114],4,0,-1)
    {
    Name = "Retard_Inv_P2"
    }
   -Wire-([5454,2970],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([5454,3114],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([5094,3042],4,0,-1)
    {
    Name = "Retard_Fe_P2_B2"
    }
   -Wire-([5058,3042],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.radiolink([2664,2412],4,0,950)
    {
    Source = "Sequences_XS800"
    Name = "Seq_Half_Mode_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([2754,2394],0,0,2590)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2718,2376],0,0,910)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2718,2412],0,0,960)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2664,2376],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2664,2412],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([2826,2394],0,0,2600)
    {
    IType = "1"
    OType = "2"
    }
   -Wire-([1674,3402],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.radiolink([2142,1836],6,0,480)
    {
    Source = "Sequences_XS800"
    Name = "Close_Rect_BPS_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.datalabel([2268,1872],0,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.radiolink([2142,1944],6,0,570)
    {
    Source = "Sequences_XS800"
    Name = "Close_Inv_BPS_P2_B1"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.radiolink([2142,918],6,0,90)
    {
    Source = "Sequences_XS800"
    Name = "Close_Rect_BPS_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   0.datalabel([2268,954],0,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.radiolink([2142,1026],6,0,120)
    {
    Source = "Sequences_XS800"
    Name = "Close_Inv_BPS_P2_B2"
    dim = "1"
    Mode = "0"
    Type = "1"
    }
   -Wire-([1638,630],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1332,2178],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   0.logic_mult([2106,936],4,0,3080)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([1944,1026],2,0,6860)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([2016,1062],4,0,140)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([1998,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1944,990],0,0,-1)
    {
    Vertex="0,0;0,-18;18,-18"
    }
   0.unity([2178,954],4,0,2390)
    {
    IType = "2"
    OType = "1"
    }
   0.logic_mult([2016,972],4,0,3980)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([2106,1008],4,0,3100)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.inv([2178,990],4,0,3090)
    {
    INTR = "0"
    }
   0.unity([2178,990],4,0,2400)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2250,954],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2214,954],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2160,954],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2268,954],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2178,954],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2070,936],0,0,-1)
    {
    Vertex="0,0;0,18;-18,18"
    }
   -Wire-([2070,1008],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   -Wire-([1908,1026],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.select([1746,1026],2,0,4610)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1944,972],0,0,-1)
    {
    Vertex="0,0;-198,0;-198,18"
    }
   0.const([1818,1062],4,0,130)
    {
    Name = ""
    Value = "1.0"
    }
   0.const([2016,882],4,0,70)
    {
    Name = ""
    Value = "1.0"
    }
   0.select([1944,918],4,0,6910)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1944,972],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1710,1026],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([1908,918],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.logic_mult([2106,1854],4,0,3150)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([1944,1944],2,0,4570)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   0.const([2016,1980],4,0,600)
    {
    Name = ""
    Value = "0.0"
    }
   -Wire-([1998,1890],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1944,1908],0,0,-1)
    {
    Vertex="0,0;0,-18;18,-18"
    }
   0.unity([2178,1872],4,0,2450)
    {
    IType = "2"
    OType = "1"
    }
   0.logic_mult([2016,1890],4,0,3970)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([2106,1926],4,0,3180)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.inv([2178,1908],4,0,3170)
    {
    INTR = "0"
    }
   0.unity([2178,1908],4,0,2460)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2250,1872],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([2214,1872],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([2160,1872],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2268,1872],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2178,1872],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2070,1854],0,0,-1)
    {
    Vertex="0,0;0,18;-18,18"
    }
   -Wire-([2070,1926],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   -Wire-([1908,1944],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.select([1746,1944],2,0,4580)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1944,1890],0,0,-1)
    {
    Vertex="0,0;-198,0;-198,18"
    }
   0.const([1818,1980],4,0,580)
    {
    Name = ""
    Value = "1.0"
    }
   0.const([2016,1800],4,0,430)
    {
    Name = ""
    Value = "1.0"
    }
   0.select([1944,1836],4,0,6770)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1944,1890],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([1710,1944],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([1908,1836],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([3114,3186],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3114,3168],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3114,3150],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3060,3204],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3114,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([3060,3204],4,0,-1)
    {
    Name = "Down_Rect_P2"
    }
   -Wire-([3078,3204],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3636,2448],4,0,-1)
    {
    Name = "Down_Rect_P2"
    }
   0.datalabel([1152,2106],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.select([1152,2034],0,0,3190)
    {
    A = "0"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([1188,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1260,2034],0,0,-1)
    {
    Name = "Ud_high"
    }
   -Wire-([1206,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.unity([1152,2070],5,0,2470)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([1044,2070],0,0,-1)
    {
    Name = "IO_Lim"
    }
   0.radiolink([972,2070],4,0,590)
    {
    Source = "Main_Ctrl"
    Name = "IO_Lim"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2070],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,1926],0,0,-1)
    {
    Name = "Ud_Low_Rec"
    }
   0.datalabel([1044,1962],0,0,-1)
    {
    Name = "Ud_Low_Inv"
    }
   0.radiolink([972,1926],4,0,450)
    {
    Source = "Main_Ctrl"
    Name = "Ud_Low_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,1926],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([972,1962],4,0,490)
    {
    Source = "Main_Ctrl"
    Name = "Ud_Low_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2106],0,0,-1)
    {
    Name = "TC_Dn_Rec"
    }
   0.radiolink([972,2106],4,0,610)
    {
    Source = "Main_Ctrl"
    Name = "TC_Dn_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2106],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2430],0,0,-1)
    {
    Name = "Kp"
    }
   0.datalabel([1044,2466],0,0,-1)
    {
    Name = "Gain"
    }
   0.radiolink([972,2430],4,0,780)
    {
    Source = "Main_Ctrl"
    Name = "Kp"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2430],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([972,2466],4,0,790)
    {
    Source = "Main_Ctrl"
    Name = "Gain"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2466],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2502],0,0,-1)
    {
    Name = "VCA_Gain_P"
    }
   0.datalabel([1044,2538],0,0,-1)
    {
    Name = "AMAX_Gain"
    }
   0.radiolink([972,2502],4,0,800)
    {
    Source = "Main_Ctrl"
    Name = "VCA_Gain_P"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2502],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([972,2538],4,0,860)
    {
    Source = "Main_Ctrl"
    Name = "AMAX_Gain"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2538],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2142],0,0,-1)
    {
    Name = "TC_Dn_Inv"
    }
   0.datalabel([1044,2178],0,0,-1)
    {
    Name = "TC_Up_Rec"
    }
   0.radiolink([972,2142],4,0,620)
    {
    Source = "Main_Ctrl"
    Name = "TC_Dn_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2142],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([972,2178],4,0,640)
    {
    Source = "Main_Ctrl"
    Name = "TC_Up_Rec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2178],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2214],0,0,-1)
    {
    Name = "TC_Up_Inv"
    }
   0.radiolink([972,2214],4,0,660)
    {
    Source = "Main_Ctrl"
    Name = "TC_Up_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2214],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([504,1926],0,0,-1)
    {
    Name = "Gamma0_Set"
    }
   0.datalabel([504,1962],0,0,-1)
    {
    Name = "Gamma0_Reset"
    }
   0.radiolink([432,1926],4,0,420)
    {
    Source = "Main_Ctrl"
    Name = "Gamma0_Set"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([432,1926],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([432,1962],4,0,440)
    {
    Source = "Main_Ctrl"
    Name = "Gamma0_Reset"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([432,1962],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([504,1998],0,0,-1)
    {
    Name = "RAML_Dec"
    }
   0.radiolink([432,1998],4,0,470)
    {
    Source = "Main_Ctrl"
    Name = "Raml_Dec"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([432,1998],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([720,2268],0,0,-1)
    {
    Name = "CRAML_Ref"
    }
   0.datalabel([720,2430],0,0,-1)
    {
    Name = "RAML_Ref"
    }
   0.radiolink([432,2268],4,0,650)
    {
    Source = "Main_Ctrl"
    Name = "CRAML_Ref"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([432,2430],4,0,750)
    {
    Source = "Main_Ctrl"
    Name = "RAML_Ref"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([720,2592],0,0,-1)
    {
    Name = "CDL_Lev"
    }
   0.radiolink([432,2592],4,0,870)
    {
    Source = "Main_Ctrl"
    Name = "CDL_Lev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.annotation([954,2394],0,0,-1)
    {
    AL1 = "CCA"
    AL2 = ""
    }
   0.annotation([954,1890],0,0,-1)
    {
    AL1 = "VDCOL"
    AL2 = ""
    }
   0.annotation([432,1890],0,0,-1)
    {
    AL1 = "Gamma0 + RAML"
    AL2 = ""
    }
   0.datalabel([720,2106],0,0,-1)
    {
    Name = "DL_Lev"
    }
   0.radiolink([432,2106],4,0,560)
    {
    Source = "Main_Ctrl"
    Name = "DL_Lev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([1044,2034],0,0,-1)
    {
    Name = "Ud_High_Re"
    }
   0.radiolink([972,2034],4,0,530)
    {
    Source = "Main_Ctrl"
    Name = "Ud_High_Re"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,1998],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,1998],0,0,-1)
    {
    Name = "Ud_High_Inv"
    }
   0.radiolink([972,1998],4,0,500)
    {
    Source = "Main_Ctrl"
    Name = "Ud_High_Inv"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2034],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.annotation([954,2268],0,0,-1)
    {
    AL1 = "AMIN"
    AL2 = ""
    }
   0.radiolink([972,2340],4,0,710)
    {
    Source = "Main_Ctrl"
    Name = "Gamma_Min"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datalabel([1044,2340],0,0,-1)
    {
    Name = "Gamma_Min_Norm"
    }
   -Wire-([1044,1998],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1044,2034],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.radiolink([432,2232],4,0,630)
    {
    Source = "Main_Ctrl"
    Name = "CRAML_Ref_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([432,2394],4,0,720)
    {
    Source = "Main_Ctrl"
    Name = "RAML_Ref_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([432,2556],4,0,810)
    {
    Source = "Main_Ctrl"
    Name = "CDL_Lev_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([432,2070],4,0,510)
    {
    Source = "Main_Ctrl"
    Name = "DL_Lev_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([972,2304],4,0,700)
    {
    Source = "Main_Ctrl"
    Name = "Gamma_Min_Rev"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([972,2340],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([1152,2340],0,0,3230)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([972,2304],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1008,2340],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([1044,2304],0,0,-1)
    {
    Name = "Gamma_Min_Rev"
    }
   -Wire-([1080,2304],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1080,2340],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([1152,2412],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.unity([1152,2376],5,0,2520)
    {
    IType = "2"
    OType = "1"
    }
   0.datalabel([1260,2340],0,0,-1)
    {
    Name = "Gamma_Min"
    }
   -Wire-([432,2268],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([612,2268],0,0,3210)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([432,2232],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([540,2232],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,2268],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([612,2340],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.unity([612,2304],5,0,2490)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([648,2268],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([432,2430],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([612,2430],0,0,3240)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([432,2394],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,2430],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([540,2394],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,2430],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([612,2502],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.unity([612,2466],5,0,2530)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([648,2430],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([432,2592],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([612,2592],0,0,3280)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([432,2556],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,2592],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([540,2556],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,2592],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([612,2664],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.unity([612,2628],5,0,2610)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([648,2592],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([432,2106],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([612,2106],0,0,3200)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([432,2070],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([468,2106],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([540,2070],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,2106],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([612,2178],4,0,-1)
    {
    Name = "Rect_Fe_P2"
    }
   0.unity([612,2142],5,0,2480)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([648,2106],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([504,2232],0,0,-1)
    {
    Name = "CRAML_Ref_Rev"
    }
   0.datalabel([504,2268],0,0,-1)
    {
    Name = "CRAML_Ref_Norm"
    }
   0.datalabel([504,2394],0,0,-1)
    {
    Name = "RAML_Ref_Rev"
    }
   0.datalabel([504,2430],0,0,-1)
    {
    Name = "RAML_Ref_Norm"
    }
   0.datalabel([504,2556],0,0,-1)
    {
    Name = "CDL_Lev_Rev"
    }
   0.datalabel([504,2592],0,0,-1)
    {
    Name = "CDL_Lev_Norm"
    }
   0.datalabel([504,2070],0,0,-1)
    {
    Name = "DL_Lev_Rev"
    }
   0.datalabel([504,2106],0,0,-1)
    {
    Name = "DL_Lev_Norm"
    }
   -Wire-([1098,1998],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1188,2340],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([1224,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1242,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1098,2034],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([2826,2754],2,0,1330)
    {
    Source = "Main"
    Name = "Red_Volt_Ref_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([2826,2754],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2934,2754],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.radiolink([2664,2520],4,0,1100)
    {
    Source = "Main"
    Name = "Red_Volt_P2_XS800"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2664,2484],4,0,1030)
    {
    Source = "DCFG_XS800_P2"
    Name = "Restart_Red_Volt_P2"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([2754,2502],0,0,2660)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2718,2484],0,0,1040)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2718,2520],0,0,1110)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2826,2502],0,0,2670)
    {
    IType = "1"
    OType = "2"
    }
   -Wire-([2664,2484],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2664,2520],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3186,2754],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3204,2736],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3222,2718],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([3240,2682],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([4752,2196],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4824,3114],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Sticky-([486,3060],0)
    {
    Name = ""
    Font = 0
    Bounds = 486,3060,648,3186
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch31: TRIP 
Ch32: LPTW_INIT_DOWN
Ch33: UDL_LOW 
Ch34: UDN_SWITCH_DEL 
Ch35: UDL_SW 
Ch36: DLP_D_REF1  
Ch37: DLP_D_REF2 
Ch38: POLE_THRESHOLD
Ch39: COM_MODE_THRESHOLD  
Ch40: SPARE"
    }
   -Sticky-([306,3060],0)
    {
    Name = ""
    Font = 0
    Bounds = 306,3060,468,3186
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Ch21: UDL_DER
Ch22: DLP_D_TRIP
Ch23: CURR_DERIV 
Ch24: UDN 
Ch25: IDL 
Ch26: UDL 
Ch27: ID_GND  
Ch28: COM_MODE_WAVE  
Ch29: BI_POS   
Ch30: POLE_WAVE "
    }
   0.datatap([324,3294],0,0,4170)
    {
    Index = "31"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([360,3294],0,0,4160)
    {
    Index = "32"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([396,3294],0,0,4150)
    {
    Index = "33"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([432,3294],0,0,4140)
    {
    Index = "34"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([468,3294],0,0,4130)
    {
    Index = "35"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([504,3294],0,0,4120)
    {
    Index = "36"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([540,3294],0,0,4110)
    {
    Index = "37"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([576,3294],0,0,4100)
    {
    Index = "38"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([612,3294],0,0,4090)
    {
    Index = "39"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([648,3294],0,0,4080)
    {
    Index = "40"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([306,3258],6,0,5560)
    {
    Index = "21"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([342,3258],6,0,5530)
    {
    Index = "22"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([378,3258],6,0,5480)
    {
    Index = "23"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([414,3258],6,0,5460)
    {
    Index = "24"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([450,3258],6,0,5420)
    {
    Index = "25"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([486,3258],6,0,5400)
    {
    Index = "26"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([522,3258],6,0,5380)
    {
    Index = "27"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([558,3258],6,0,5350)
    {
    Index = "28"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([594,3258],6,0,5330)
    {
    Index = "29"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   0.datatap([630,3258],6,0,5320)
    {
    Index = "30"
    Dim = "1"
    Type = "2"
    Style = "0"
    Disp = "1"
    }
   -Wire-([306,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([342,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([378,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([414,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([450,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([558,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([594,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([630,3258],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([324,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([360,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([396,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([432,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([468,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([540,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([576,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([612,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([648,3312],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([234,3276],0,0,-1)
    {
    Vertex="0,0;396,0"
    }
   0.pgb([324,3312],1,115253960,5300)
    {
    Name = "TRIP _Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([360,3312],1,115254368,5290)
    {
    Name = "LPTW_INIT_DOWN_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([396,3312],1,115254776,5280)
    {
    Name = "UDL_LOW_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([432,3312],1,115255184,5270)
    {
    Name = "UDN_SWITCH_DEL_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([468,3312],1,115255592,5260)
    {
    Name = "UDL_SW_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([504,3312],1,115256000,5250)
    {
    Name = "DLP_D_REF1_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([540,3312],1,115256408,5240)
    {
    Name = "DLP_D_REF2_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([576,3312],1,115256816,5230)
    {
    Name = "POLE_THRESHOLD_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([612,3312],1,115257224,5220)
    {
    Name = "COM_MODE_THRESHOLD_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([648,3312],1,115257632,5200)
    {
    Name = "SPARE_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "p.u."
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "2"
    }
   0.pgb([306,3240],5,115258040,5620)
    {
    Name = "UDL_DER_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([342,3240],5,115258448,5610)
    {
    Name = "DLP_D_TRIP_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([378,3240],5,115258856,5600)
    {
    Name = "CURR_DERIV_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([414,3240],5,115259264,5590)
    {
    Name = "UDN_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([450,3240],5,115259672,5570)
    {
    Name = "IDL_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([486,3240],5,115260080,5550)
    {
    Name = "UDL_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([522,3240],5,115260488,5510)
    {
    Name = "ID_GND_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([558,3240],5,115260896,5500)
    {
    Name = "COM_MODE_WAVE _Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([630,3240],5,115261304,5440)
    {
    Name = "POLE_WAVE_Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   0.pgb([594,3240],5,115261712,5470)
    {
    Name = "BI_POS _Fe_P2"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Deg"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "180"
    }
   -Wire-([216,3276],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([612,2952],0,0,-1)
    {
    Vertex="0,0;72,0;72,90;-396,90;-396,324"
    }
   0.radiolink([2628,3060],2,0,1720)
    {
    Source = "Fengxian_P1"
    Name = "Ud_Fe_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.radiolink([2628,2934],4,0,1540)
    {
    Source = ""
    Name = "Ud_Fe_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.radiolink([2628,2988],4,0,1630)
    {
    Source = ""
    Name = "Udn_Fe_P2"
    dim = "1"
    Mode = "1"
    Type = "0"
    }
   0.radiolink([2628,3132],2,0,1840)
    {
    Source = "Fengxian_P1"
    Name = "Udn_Fe_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.datamerge([3114,2988],4,0,3390)
    {
    N = "8"
    Type = "2"
    Disp = "1"
    }
   0.datalabel([2682,2934],6,0,-1)
    {
    Name = "Ud_Fe_P2"
    }
   0.datalabel([2682,2988],6,0,-1)
    {
    Name = "Udn_Fe_P2"
    }
   0.datalabel([2646,3204],6,0,-1)
    {
    Name = "Idn_Fe_P2"
    }
   -Wire-([3114,3078],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3024,2970],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3042,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([2664,3132],6,0,-1)
    {
    Name = "Udn_Fe_P1"
    }
   0.datalabel([2664,3060],6,0,-1)
    {
    Name = "Ud_Fe_P1"
    }
   -Wire-([3042,3006],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3042,3024],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3042,3042],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3024,2916],6,0,-1)
    {
    Name = "Icn_Fe_P2"
    }
   0.datalabel([2682,2790],6,0,-1)
    {
    Name = "Id_el_Fe_P2"
    }
   0.datalabel([2682,2862],6,0,-1)
    {
    Name = "Idl_Fe_P2"
    }
   -Wire-([3024,2952],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3024,2934],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([3024,2916],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.radiolink([2628,2790],2,0,1350)
    {
    Source = "Main"
    Name = "Id_el_Fe"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   -Wire-([2628,2790],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3132,3078],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   0.ammeter([1512,2178],4,0,680)
    {
    Name = "Idl_Fe_P2"
    }
   -Wire-([1512,2178],0,0,-1)
    {
    Vertex="0,0;486,0"
    }
   0.ammeter([1512,576],5,0,10)
    {
    Name = "Icn_Fe_P2"
    }
   -Wire-([1512,540],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.resistor([3960,846],3,0,-1)
    {
    R = "1.0 [ohm]"
    }
   0.ground([3960,810],3,0,-1)
    {
    }
   1.Arr200710([3942,846],0,0,-1)
    {
    Name = "defaultname"
    Type = "2"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "872[kV]"
    ISCAL = "1"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3924,846],3,0,-1)
    {
    R = "1.0 [ohm]"
    }
   0.ground([3924,810],3,0,-1)
    {
    }
   1.Arr200710([3906,846],0,0,-1)
    {
    Name = "defaultname"
    Type = "2"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "872[kV]"
    ISCAL = "1"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3888,846],3,0,-1)
    {
    R = "1.0 [ohm]"
    }
   0.ground([3888,810],3,0,-1)
    {
    }
   -Wire-([3960,882],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([3924,882],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([3888,882],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   1.Arr200710([3978,846],0,0,-1)
    {
    Name = "defaultname"
    Type = "2"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "872[kV]"
    ISCAL = "1"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.mult([2754,3204],0,0,2920)
    {
    }
   0.const([2718,3240],0,0,2010)
    {
    Name = ""
    Value = "0.8"
    }
   0.mult([2772,2862],0,0,2780)
    {
    }
   0.const([2736,2898],0,0,1520)
    {
    Name = ""
    Value = "0.8"
    }
   0.mult([2772,2790],0,0,2750)
    {
    }
   0.const([2736,2826],0,0,1430)
    {
    Name = ""
    Value = "0.8"
    }
   -Wire-([2646,3204],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2682,2862],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2682,2790],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   1.Arr200710([2952,2070],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,2070],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,2070],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1962],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,1962],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,1962],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1836],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,1836],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,1836],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1728],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,1728],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,1728],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,1008],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,1008],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,1008],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,900],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,900],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,900],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,774],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,774],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,774],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2952,666],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2880,666],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2808,666],0,0,-1)
    {
    Name = "S2P1V11"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "556.1 [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   1.Arr200710([2574,630],0,0,-1)
    {
    Name = "S2P1CBN1"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "461  [kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2556,702],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2556,702],1,0,-1)
    {
    }
   1.Arr200710([2412,630],0,0,-1)
    {
    Name = "S2P1CBN2"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "430.4  [kV]"
    ISCAL = "6"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2394,702],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2394,702],1,0,-1)
    {
    }
   1.Arr200710([1818,630],0,0,-1)
    {
    Name = "S2P1E"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "430.4 [kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([1800,702],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([1800,702],1,0,-1)
    {
    }
   1.Arr200710([2592,846],0,0,-1)
    {
    Name = "S2P1ML"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "650[kV]"
    ISCAL = "2"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2574,918],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2574,918],1,0,-1)
    {
    }
   -Wire-([2898,846],0,0,-1)
    {
    Vertex="0,0;-324,0"
    }
   1.Arr200710([2592,1692],0,0,-1)
    {
    Name = "S2P1CBL"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1041 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2574,1764],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2574,1764],1,0,-1)
    {
    }
   1.Arr200710([2754,2178],0,0,-1)
    {
    Name = "S2P1CBH"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1929.3 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([2736,2250],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([2736,2250],1,0,-1)
    {
    }
   1.Arr200710([1674,2178],0,0,-1)
    {
    Name = "S2P1DB1"
    Type = "3"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2501[kV]"
    ISCAL = "3"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([1656,2250],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([1656,2250],1,0,-1)
    {
    }
   1.Arr200710([1566,2178],0,0,-1)
    {
    Name = "S2P1DB2"
    Type = "3"
    v05v10 = "1"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "2501[kV]"
    ISCAL = "3"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([1548,2250],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([1548,2250],1,0,-1)
    {
    }
   0.fault_sw([1836,2286],1,0,6700)
    {
    Name = "FaultoppoletoG"
    OpCur = "1"
    CLVL = "0.0 [kA]"
    ROn = "0.01 [ohm]"
    ROff = "1.0E26 [ohm]"
    Iflt = ""
    AG1 = "0"
    }
   0.ground([1836,2322],1,0,-1)
    {
    }
   -Wire-([1836,2286],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   0.datalabel([1998,2268],0,0,-1)
    {
    Name = "FaultoppoletoG"
    }
   0.tfaultn([2034,2268],0,0,740)
    {
    TF = "200"
    DF = "0.06 [s]"
    }
   -ControlPanel-([2160,756],0)
    {
    Name = ""
    Flags = 0
    State = 1
    Icon = -1,-1
    Posn = 2160,756
    Extents = 0,0,0,0
    Switch(114206016)
    Switch(114205608)
    Switch(114205200)
    }
   -Wire-([2808,2790],0,0,-1)
    {
    Vertex="0,0;144,0;144,144;216,144"
    }
   -Wire-([2808,2862],0,0,-1)
    {
    Vertex="0,0;126,0;126,90;216,90"
    }
   0.mult([2772,2934],0,0,2800)
    {
    }
   0.const([2736,2970],0,0,1620)
    {
    Name = ""
    Value = "0.7273"
    }
   -Wire-([2628,2934],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2808,2934],0,0,-1)
    {
    Vertex="0,0;108,0;108,36;216,36"
    }
   0.mult([2772,2988],0,0,2810)
    {
    }
   0.const([2736,3024],0,0,1680)
    {
    Name = ""
    Value = "0.7273"
    }
   0.mult([2754,3060],0,0,2840)
    {
    }
   0.const([2718,3096],0,0,1820)
    {
    Name = ""
    Value = "0.7273"
    }
   0.mult([2754,3132],0,0,2880)
    {
    }
   0.const([2718,3168],0,0,1880)
    {
    Name = ""
    Value = "0.7273"
    }
   -Wire-([2628,2988],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2808,2988],0,0,-1)
    {
    Vertex="0,0;234,0"
    }
   -Wire-([2628,3060],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([2790,3060],0,0,-1)
    {
    Vertex="0,0;0,-54;252,-54"
    }
   -Wire-([2628,3132],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([2790,3132],0,0,-1)
    {
    Vertex="0,0;18,0;18,-108;252,-108"
    }
   -Wire-([2790,3204],0,0,-1)
    {
    Vertex="0,0;36,0;36,-162;252,-162"
    }
   1.Arr200710([3096,2106],0,0,-1)
    {
    Name = "S2P1A2yc"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1929.3 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3078,2178],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([3078,2178],1,0,-1)
    {
    }
   1.Arr200710([3060,2106],0,0,-1)
    {
    Name = "S2P1A2yb"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1929.3 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3042,2178],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([3042,2178],1,0,-1)
    {
    }
   1.Arr200710([3024,1998],2,0,-1)
    {
    Name = "S2P1A2ya"
    Type = "3"
    v05v10 = "0"
    MiMa = "1"
    ImpPT = "2"
    VSCAL = "1929.3 [kV]"
    ISCAL = "4"
    RST = "0.0 [Ohm]"
    ENAB = "1"
    Energy = ""
    Curr = ""
    Ref = "1JNL100038-652"
    Rev = "05"
    }
   0.resistor([3042,1926],1,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.ground([3042,1926],3,0,-1)
    {
    }
   -Wire-([3042,2106],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([3078,2106],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   .DCF_Ch_P2([1512,1314],0,0,290)
    {
    }
   .DCF_Ch_P2_2([1602,1278],0,0,260)
    {
    }
   .DCF_Ch_P2_3([1692,1278],0,0,280)
    {
    }
   -Wire-([1512,1170],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([1602,1170],0,0,-1)
    {
    Vertex="0,0;90,0;90,54"
    }
   -Wire-([1512,1368],0,0,-1)
    {
    Vertex="0,0;0,54;90,54;90,126"
    }
   0.capacitor([1188,1260],1,0,-1)
    {
    C = "0.35 [uF]"
    }
   0.inductor([1134,1386],3,0,-1)
    {
    L = "0.08935 [H]"
    }
   0.resistor([1224,1350],1,0,-1)
    {
    R = "10000 [ohm]"
    }
   0.inductor([1134,1494],3,0,-1)
    {
    L = "0.04886 [H]"
    }
   0.capacitor([1224,1458],1,0,-1)
    {
    C = "0.81 [uF]"
    }
   0.capacitor([1332,1260],1,0,-1)
    {
    C = "0.8 [uF]"
    }
   0.inductor([1332,1386],3,0,-1)
    {
    L = "0.01199 [H]"
    }
   0.inductor([1296,1494],3,0,-1)
    {
    L = "0.964 [H]"
    }
   0.capacitor([1386,1458],1,0,-1)
    {
    C = "1.825 [uF]"
    }
   0.resistor([1440,1386],1,0,-1)
    {
    R = "5700 [ohm]"
    }
   -Wire-([1188,1260],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([1188,1296],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([1134,1350],0,0,-1)
    {
    Vertex="0,0;0,-36;90,-36;90,0"
    }
   -Wire-([1134,1386],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([1224,1386],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([1134,1422],0,0,-1)
    {
    Vertex="0,0;90,0"
    }
   -Wire-([1134,1494],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1332,1296],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1332,1386],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([1296,1458],0,0,-1)
    {
    Vertex="0,0;0,-36;90,-36;90,0"
    }
   -Wire-([1296,1494],0,0,-1)
    {
    Vertex="0,0;0,18;90,18;90,0"
    }
   -Wire-([1332,1314],0,0,-1)
    {
    Vertex="0,0;108,0;108,72"
    }
   -Wire-([1440,1422],0,0,-1)
    {
    Vertex="0,0;0,90;-54,90"
    }
   -Wire-([1188,1512],0,0,-1)
    {
    Vertex="0,0;0,18;144,18;144,0"
    }
   -Wire-([1242,1530],0,0,-1)
    {
    Vertex="0,0;0,54;360,54"
    }
   -Wire-([1260,1260],0,0,-1)
    {
    Vertex="0,0;0,-90;216,-90"
    }
   0.pin([1512,630],0,0,-1)
    {
    }
   0.pin([1512,1170],0,0,-1)
    {
    }
   0.pin([1602,1584],0,0,-1)
    {
    }
   0.pin([1602,2178],0,0,-1)
    {
    }
   }
  }
 Module("Fengxian_P1")
  {
  Desc = ""
  FileDate = 1400066022
  Nodes = 
   {
   Electrical("DC_P1_Fe",-108,-54)
    {
    }
   Electrical("Neut_P1_Fe",-108,54)
    {
    }
   Electrical("Fe_P1_a",126,-36)
    {
    }
   Electrical("Fe_P1_b",126,0)
    {
    }
   Electrical("Fe_P1_c",126,36)
    {
    }
   Input("Tel_P1_Fu",-36,108)
    {
    Type = Real
    Dim  = [20]
    }
   Output("Tel_P1_Fe",72,108)
    {
    Type = Real
    Dim  = [20]
    }
   }

  Graphics = 
   {
   Rectangle(-72,-79,104,79)
   Line(-108,-54,-72,-54)
   Line(-108,54,-72,54)
   Line(104,-36,126,-36)
   Line(104,0,126,0)
   Line(104,36,126,36)
   Line(-36,107,-36,79)
   Line(72,107,72,79)
   Line(-33,86,-36,79)
   Line(-39,86,-36,79)
   Line(69,102,72,109)
   Line(75,102,72,109)
   Text(111,-24,"A")
   Text(111,13,"B")
   Text(113,48,"C")
   Font(,Medium)
   Text(16,12,"P1")
   Font(,Small)
   Text(-82,-41,"P1")
   Text(-89,67,"Neut")
   Font(,Medium)
   Text(16,-23,"Fengxian")
   Font(,Small)
   Text(-70,97,"Tdel_IN")
   Text(107,96,"Tdel_OUT")
   }


  Page(E_JUMBO,Landscape,16,[651,363],5)
   {
   0.xnode([4932,1458],2,0,-1)
    {
    Name = "Fe_P1_a"
    }
   0.xnode([4932,1494],2,0,-1)
    {
    Name = "Fe_P1_b"
    }
   0.xnode([4932,1530],2,0,-1)
    {
    Name = "Fe_P1_c"
    }
   0.var([2232,2988],0,115295576,1590)
    {
    Name = "UDref_Fe_P1"
    Group = ""
    Display = "0"
    Max = "10000"
    Min = "240"
    Value = "780.0"
    Units = "kV"
    Collect = "1"
    }
   0.var([2484,3492],0,115295984,2410)
    {
    Name = "Iord_Fe_P1"
    Group = ""
    Display = "0"
    Max = "3"
    Min = "0"
    Value = "1.1"
    Units = "p.u."
    Collect = "1"
    }
   0.export([3816,3276],4,0,6140)
    {
    Name = "Tel_P1_Fe"
    }
   0.import([3744,3276],4,0,2290)
    {
    Name = "Tel_P1_Fu"
    }
   0.var([2232,3384],0,115297208,2220)
    {
    Name = "Pref_Fe_P1"
    Group = ""
    Display = "0"
    Max = "4000"
    Min = "0"
    Value = "3600.0"
    Units = "MW"
    Collect = "1"
    }
   0.var([2484,3258],0,115297616,1960)
    {
    Name = "Gamma_REF_Fe_P1"
    Group = ""
    Display = "0"
    Max = "30"
    Min = "0.0"
    Value = "17.0"
    Units = "deg"
    Collect = "1"
    }
   0.datalabel([2682,3312],6,0,-1)
    {
    Name = "Gamma_REF_Fe_P1"
    }
   0.var_switch([3924,2988],0,115298432,1760)
    {
    Name = "Down_Fe_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Down"
    Toff = "Normal"
    }
   0.datalabel([4176,2988],4,0,-1)
    {
    Name = "Down_Fe_P1"
    }
   -Wire-([2520,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.sumjct([2484,3384],0,0,4320)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2322,3384],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.var([1962,3384],0,115299656,2150)
    {
    Name = "T_Step_Fe_P1"
    Group = ""
    Display = "0"
    Max = "1000"
    Min = "0"
    Value = "300.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([2088,3384],2,0,-1)
    {
    Name = "T_Step_Fe_P1"
    }
   -Wire-([2052,3384],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var([1962,3420],0,115300472,2240)
    {
    Name = "T_Dur_Step_Fe_P1"
    Group = ""
    Display = "0"
    Max = "6"
    Min = "0"
    Value = "1.0"
    Units = "Sec"
    Collect = "1"
    }
   0.datalabel([2088,3420],2,0,-1)
    {
    Name = "T_Dur_Step_Fe_P1"
    }
   -Wire-([2052,3420],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.tfault([1890,3402],2,0,3610)
    {
    TF = "T_Step_Fe_P1"
    DF = "T_Dur_Step_Fe_P1"
    REP = "0"
    }
   0.var([1962,3348],0,115301696,2070)
    {
    Name = "Step_Value_Fe_P1"
    Group = ""
    Display = "0"
    Max = "5"
    Min = "-5"
    Value = "-0.08"
    Units = ""
    Collect = "1"
    }
   0.const([2358,3474],0,0,2370)
    {
    Name = ""
    Value = "0.0"
    }
   0.select([2430,3474],0,0,4140)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2484,3420],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([1998,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1998,3420],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.mult([2358,3438],6,0,2320)
    {
    }
   -Wire-([2358,3402],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([2268,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([1998,3348],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.logic_mult([2376,3546],0,0,3660)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([2412,3546],0,0,-1)
    {
    Vertex="0,0;18,0;18,-36"
    }
   -Wire-([2016,3456],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.datalabel([2088,3456],2,0,-1)
    {
    Name = "Step_Type_Fe_P1"
    }
   -Wire-([2052,3348],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.logic_mult([2376,3654],0,0,3680)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.select([2430,3726],6,0,3720)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2412,3654],0,0,-1)
    {
    Vertex="0,0;18,0;18,36"
    }
   0.const([2358,3726],0,0,2660)
    {
    Name = ""
    Value = "0.0"
    }
   0.sumjct([2592,3492],0,0,4330)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   -Wire-([2484,3474],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([2574,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2232,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2232,3528],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2304,3528],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.var_pot([1980,3456],0,136778736,2300)
    {
    Name = "Step_Type_Fe_P1"
    Group = ""
    Display = "0"
    NDP = "4"
    Value = "1"
    F1 = "1.0"
    F2 = "2.0"
    F3 = "3.0"
    F4 = "4.0"
    F5 = "5.0"
    F6 = "6.0"
    F7 = "7.0"
    F8 = "8.0"
    F9 = "9.0"
    F10 = "10.0"
    }
   1.Decoder([2196,3528],0,0,2430)
    {
    Trig = "1"
    }
   1.Decoder([2196,3672],0,0,2570)
    {
    Trig = "2"
    }
   0.unity([2160,3672],0,0,2560)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([2160,3528],0,0,2420)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2088,3528],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2088,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2268,3528],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2268,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2304,3672],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2070,3528],2,0,-1)
    {
    Name = "Step_Type_Fe_P1"
    }
   0.datalabel([2070,3672],2,0,-1)
    {
    Name = "Step_Type_Fe_P1"
    }
   0.datalabel([2088,3348],2,0,-1)
    {
    Name = "Step_Value_Fe_P1"
    }
   0.datalabel([2250,3438],2,0,-1)
    {
    Name = "Step_Value_Fe_P1"
    }
   0.datalabel([2250,3762],2,0,-1)
    {
    Name = "Step_Value_Fe_P1"
    }
   -Wire-([2250,3438],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   1.Decoder([2196,3294],0,0,3590)
    {
    Trig = "3"
    }
   0.logic_mult([2376,3276],0,0,4110)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([2376,3132],0,0,4070)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.unity([2160,3294],0,0,3580)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2088,3294],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2070,3294],2,0,-1)
    {
    Name = "Step_Type_Fe_P1"
    }
   -Wire-([2232,3294],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([1926,3402],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   1.Decoder([2196,3114],0,0,3490)
    {
    Trig = "4"
    }
   0.unity([2160,3114],0,0,3480)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([2088,3114],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([2070,3114],2,0,-1)
    {
    Name = "Step_Type_Fe_P1"
    }
   -Wire-([2232,3114],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   0.sumjct([2556,3312],6,0,4130)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.select([2484,3312],6,0,4120)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2412,3276],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2268,3762],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2250,3762],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.const([2412,3312],0,0,2100)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2250,3348],2,0,-1)
    {
    Name = "Step_Value_Fe_P1"
    }
   -Wire-([2376,3348],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2538,3258],0,0,-1)
    {
    Vertex="0,0;18,0;18,18"
    }
   -Wire-([2592,3312],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2628,3312],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([2682,3492],2,0,-1)
    {
    Name = "Iord_Fe_P1"
    }
   0.datalabel([2682,3384],2,0,-1)
    {
    Name = "Pref_Fe_P1"
    }
   -Wire-([2628,3492],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2628,3384],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([2646,3312],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.select([2484,3096],0,0,4280)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([2412,3132],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   0.const([2412,3096],0,0,1680)
    {
    Name = ""
    Value = "0.0"
    }
   0.datalabel([2268,3060],2,0,-1)
    {
    Name = "Step_Value_Fe_P1"
    }
   -Wire-([2340,3258],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-108;0,-108"
    }
   -Wire-([1962,3402],0,0,-1)
    {
    Vertex="0,0;0,-198;360,-198"
    }
   -Wire-([2340,3636],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,-72;0,-72"
    }
   -Wire-([1962,3402],0,0,-1)
    {
    Vertex="0,0;0,198;360,198"
    }
   0.sumjct([2574,3096],6,0,4290)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.datalabel([2682,3096],2,0,-1)
    {
    Name = "UDref_Fe_P1"
    }
   0.mult([2412,3060],6,0,3450)
    {
    }
   -Wire-([2520,3096],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2520,3258],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2520,3492],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([2610,3096],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([2268,3060],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([2268,2988],0,0,-1)
    {
    Vertex="0,0;144,0;144,54"
    }
   -Wire-([2412,2988],0,0,-1)
    {
    Vertex="0,0;162,0;162,72"
    }
   -Wire-([2070,3114],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2070,3294],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2070,3528],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([2250,3348],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   -Wire-([2070,3672],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.annotation([2412,2934],0,0,-1)
    {
    AL1 = "STEP LOGIC"
    AL2 = ""
    }
   0.logic_mult([3834,2898],0,0,4040)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([4158,2988],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.select([4068,2988],6,0,4080)
    {
    A = "1"
    DPath = "1"
    COM = "Selector"
    }
   -Wire-([3960,2988],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([4104,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.const([3942,3024],0,0,1810)
    {
    Name = ""
    Value = "1.0"
    }
   -Wire-([3978,3024],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([4014,2934],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4068,2952],0,0,-1)
    {
    Vertex="0,0;0,-18;-18,-18"
    }
   0.unity([3726,2880],0,0,1630)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3726,2916],0,0,3440)
    {
    IType = "2"
    OType = "1"
    }
   0.radiolink([3654,2880],2,0,1620)
    {
    Source = "DCFG_XS800_P1"
    Name = "Down_Rect_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.logic_mult([3996,2934],0,0,4060)
    {
    Type = "1"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   0.logic_mult([3834,2970],0,0,3510)
    {
    Type = "0"
    Num_in = "2"
    Inv = "0"
    disnum = "0"
    INTR = "0"
    Inv1 = "0"
    Inv2 = "0"
    Inv3 = "0"
    Inv4 = "0"
    Inv5 = "0"
    Inv6 = "0"
    Inv7 = "0"
    Inv8 = "0"
    Inv9 = "0"
    }
   -Wire-([3870,2898],0,0,-1)
    {
    Vertex="0,0;90,0;90,18"
    }
   -Wire-([3870,2970],0,0,-1)
    {
    Vertex="0,0;0,-18;90,-18"
    }
   0.radiolink([3654,2988],2,0,1700)
    {
    Source = "DCFG_XS800_P1"
    Name = "Down_Inv_P1"
    dim = "1"
    Mode = "0"
    Type = "0"
    }
   0.inv([3744,2952],0,0,3470)
    {
    INTR = "0"
    }
   0.unity([3726,2988],0,0,1720)
    {
    IType = "2"
    OType = "1"
    }
   0.unity([3726,2952],0,0,3460)
    {
    IType = "2"
    OType = "1"
    }
   -Wire-([3654,2880],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3726,2880],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3654,2916],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3726,2916],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([3690,2916],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   -Wire-([3726,2952],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([3654,2988],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([3726,2988],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.datalabel([3654,2916],4,0,-1)
    {
    Name = "Rect_Fe_P1"
    }
   0.mult([2592,3582],5,0,4160)
    {
    }
   -Wire-([2466,3726],0,0,-1)
    {
    Vertex="0,0;126,0;126,-108"
    }
   -Wire-([2538,3492],0,0,-1)
    {
    Vertex="0,0;0,90;18,90"
    }
   -Wire-([2592,3546],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.xfmr-3p2w([3474,1494],4,0,4250)
    {
    Name = "YD_Fe_P1_B1"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00063 [p.u.]"
    CuL = "0.00221 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B1_Fe_P1"
    ILB2 = "IVD_b_B1_Fe_P1"
    ILC2 = "IVD_c_B1_Fe_P1"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.datalabel([3546,1188],6,0,-1)
    {
    Name = "TapP_Fe_P1_B1"
    }
   -Wire-([3546,1188],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3708,1224],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   0.jumper2([3780,1458],7,0,-1)
    {
    }
   -Wire-([3672,1260],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3636,1296],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,1530],6,0,-1)
    {
    Name = "FPD_Fe_P1_B1"
    }
   -Wire-([3078,1530],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,1494],6,0,-1)
    {
    Name = "FTD_Fe_P1_B1"
    }
   0.datalabel([2988,1296],6,0,-1)
    {
    Name = "FPY_Fe_P1_B1"
    }
   -Wire-([3078,1296],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,1260],2,0,-1)
    {
    Name = "FTY_Fe_P1_B1"
    }
   -Wire-([3078,1260],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,1494],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.xfmr-3p2w([3474,1260],4,0,4240)
    {
    Name = "YY_Fe_P1_B1"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00063 [p.u.]"
    CuL = "0.00217 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B1_Fe_P1"
    ILB2 = "IVY_b_B1_Fe_P1"
    ILC2 = "IVY_c_B1_Fe_P1"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.resistor([3564,1368],4,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([3564,1368],6,0,-1)
    {
    }
   0.datalabel([3546,1422],6,0,-1)
    {
    Name = "TapP_Fe_P1_B1"
    }
   -Wire-([3546,1422],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.nodeloop([4608,1494],4,0,590)
    {
    View = "0"
    }
   0.nodeloop([4572,1494],4,0,560)
    {
    View = "0"
    }
   0.power([4572,1386],3,0,7430)
    {
    DIR = "1"
    P = "1"
    Q = "1"
    TS = "0.02 [sec]"
    View = "0"
    }
   0.pgb([4572,1350],3,136801176,7460)
    {
    Name = "P_Fe_P1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "MW"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "1200"
    }
   0.pgb([4608,1350],3,136801584,7450)
    {
    Name = "Q_Fe_P1"
    Group = ""
    Display = "0"
    Scale = "1.0"
    Units = "Mvar"
    mrun = "0"
    Pol = "0"
    Min = "0"
    Max = "600"
    }
   0.resistor([4608,1458],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([4608,1494],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.resistor([4608,1530],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.xnode([1584,1152],6,0,-1)
    {
    Name = "DC_P1_Fe"
    }
   0.voltmetergnd([4734,1530],0,0,670)
    {
    Name = "U_Fe_P1_c"
    }
   0.voltmetergnd([4734,1494],0,0,610)
    {
    Name = "U_Fe_P1_b"
    }
   0.voltmetergnd([4734,1458],0,0,530)
    {
    Name = "U_Fe_P1_a"
    }
   0.nodeloop([4824,1494],4,0,630)
    {
    View = "0"
    }
   0.rms3ph([4860,1602],0,0,740)
    {
    Type = "1"
    View = "0"
    Scale = "1.0 [kV]"
    Ts = "0.02 [sec]"
    freq = "50.0 [Hz]"
    NSAM = "256"
    Vinit = "0.0 [kV]"
    }
   0.datalabel([4932,1602],0,0,-1)
    {
    Name = "U_Fe_P1_RMS"
    }
   -Wire-([4932,1602],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.var([3672,1818],4,136806072,750)
    {
    Name = "Tap_Fe_P1_B1"
    Group = ""
    Display = "0"
    Max = "22"
    Min = "-6"
    Value = "-4.0"
    Units = ""
    Collect = "1"
    }
   -Wire-([3636,1818],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.mult([3528,1818],4,0,3200)
    {
    }
   0.const([3564,1854],4,0,770)
    {
    Name = ""
    Value = "0.0125"
    }
   -Wire-([3492,1818],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.sumjct([3420,1818],4,0,3870)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3456,1854],4,0,760)
    {
    Name = ""
    Value = "1.0"
    }
   0.datalabel([3330,1818],4,0,-1)
    {
    Name = "TapP_Fe_P1_B1"
    }
   -Sticky-([3384,1746],0)
    {
    Name = ""
    Font = 1
    Bounds = 3384,1746,3492,1800
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Input is tappos, +22/-6
step size 1.25%
"
    }
   -Sticky-([3600,1710],0)
    {
    Name = ""
    Font = 1
    Bounds = 3600,1710,3726,1800
    Alignment = 0
    Style = 1
    Arrow = 0
    Color = 0,15792890
    Text = "\
Output is
TapX= 1 + tp*0.0125
to trafo

TCP, Tappos to ctrl"
    }
   0.datalabel([3330,1926],4,0,-1)
    {
    Name = "TCP_Fe_P1_B1"
    }
   -Wire-([4824,1566],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.mult([3546,1926],4,0,3210)
    {
    }
   0.const([3582,1962],4,0,790)
    {
    Name = ""
    Value = "-1.0"
    }
   0.sumjct([3420,1926],4,0,3880)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "1"
    G = "0"
    }
   0.const([3456,1962],4,0,780)
    {
    Name = ""
    Value = "22.0"
    }
   -Wire-([3510,1926],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.ground([3708,1602],7,0,-1)
    {
    }
   0.ground([3672,1602],7,0,-1)
    {
    }
   0.ground([3636,1602],7,0,-1)
    {
    }
   0.jumper([3816,1458],7,0,-1)
    {
    }
   -Wire-([3222,1368],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3402,1458],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3402,1494],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3402,1530],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3222,1152],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.voltmetergnd([1674,1152],4,0,10)
    {
    Name = "Ud_Fe_P1"
    }
   0.ammeter([4464,1458],2,0,480)
    {
    Name = "I_Fe_P1_a"
    }
   0.ammeter([4464,1494],2,0,540)
    {
    Name = "I_Fe_P1_b"
    }
   0.ammeter([4464,1530],2,0,620)
    {
    Name = "I_Fe_P1_c"
    }
   -Wire-([4518,1458],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4284,1458],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4518,1494],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4158,1494],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([4518,1530],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4158,1530],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([3150,1638],0,0,-1)
    {
    Vertex="0,0;72,0;72,-36"
    }
   -Wire-([3384,1818],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3384,1926],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1260],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1296],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1494],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,1530],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4770,1458],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4770,1494],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4770,1530],0,0,-1)
    {
    Vertex="0,0;162,0"
    }
   -Wire-([4770,1458],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4572,1458],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4770,1494],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4572,1494],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4770,1530],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([4572,1530],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3402,1260],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3402,1296],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3366,1458],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3366,1494],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3366,1530],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.consti([3042,1566],6,0,420)
    {
    Name = ""
    Value = "1"
    }
   0.consti([3042,1332],6,0,250)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([3402,1224],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.ground([3564,1332],6,0,-1)
    {
    }
   0.resistor([3564,1332],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([3528,1332],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.ground([3510,1602],7,0,-1)
    {
    }
   0.resistor([3510,1602],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([4536,1422],6,0,-1)
    {
    Name = "COM"
    }
   -Wire-([4536,1422],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.datalabel([3294,1386],6,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([3294,1152],6,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([3222,1494],4,0,5410)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fe_P1_B1"
    VCurr = "Ivd_Fe_P1_B1"
    SCurr = ""
    }
   1.g6p200_421([3222,1260],4,0,5440)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fe_P1_B1"
    VCurr = "Ivy_Fe_P1_B1"
    SCurr = ""
    }
   0.jumper2([4302,1494],7,0,-1)
    {
    }
   0.jumper([4338,1530],7,0,-1)
    {
    }
   -Wire-([4428,1458],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([4428,1494],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([4428,1530],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   -Wire-([4338,1494],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([4374,1566],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   -Wire-([4338,1566],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   0.jumper2([3780,2520],7,0,-1)
    {
    }
   0.jumper([3816,2520],7,0,-1)
    {
    }
   -Wire-([4158,2592],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([4302,2502],0,0,-1)
    {
    Vertex="0,0;0,18;-18,18"
    }
   -Wire-([4338,2502],0,0,-1)
    {
    Vertex="0,0;0,54;-54,54"
    }
   -Wire-([4374,2502],0,0,-1)
    {
    Vertex="0,0;0,90;-90,90"
    }
   0.ammeter([2448,2700],4,0,1350)
    {
    Name = "Idn_Fe_P1"
    }
   0.datalabel([3546,2250],6,0,-1)
    {
    Name = "TapP_Fe_P1_B2"
    }
   -Wire-([3546,2250],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,2592],6,0,-1)
    {
    Name = "FPD_Fe_P1_B2"
    }
   -Wire-([3078,2592],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,2556],6,0,-1)
    {
    Name = "FTD_Fe_P1_B2"
    }
   0.datalabel([2988,2358],6,0,-1)
    {
    Name = "FPY_Fe_P1_B2"
    }
   -Wire-([3078,2358],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([2988,2322],2,0,-1)
    {
    Name = "FTY_Fe_P1_B2"
    }
   -Wire-([3078,2322],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3078,2556],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.resistor([3474,2394],4,0,-1)
    {
    R = "1.0E6 [ohm]"
    }
   0.ground([3474,2394],6,0,-1)
    {
    }
   0.datalabel([3546,2484],6,0,-1)
    {
    Name = "TapP_Fe_P1_B2"
    }
   -Wire-([3546,2484],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.xnode([1584,2700],0,0,-1)
    {
    Name = "Neut_P1_Fe"
    }
   -Wire-([3222,2430],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([3402,2520],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3402,2556],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3402,2592],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3222,2214],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.voltmetergnd([1710,2700],4,0,1260)
    {
    Name = "Udn_Fe_P1"
    }
   -Wire-([3150,2700],0,0,-1)
    {
    Vertex="0,0;72,0;72,-36"
    }
   -Wire-([3006,2700],0,0,-1)
    {
    Vertex="0,0;144,0"
    }
   -Wire-([3042,2322],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,2358],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,2556],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3042,2592],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([3402,2322],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3402,2358],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3366,2520],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3366,2556],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3366,2592],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.consti([3042,2628],6,0,1330)
    {
    Name = ""
    Value = "1"
    }
   0.consti([3042,2394],6,0,1120)
    {
    Name = ""
    Value = "1"
    }
   -Wire-([3402,2286],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.ground([3564,2394],6,0,-1)
    {
    }
   0.resistor([3564,2394],4,0,-1)
    {
    R = "0.01 [ohm]"
    }
   -Wire-([3528,2394],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.ground([3510,2664],7,0,-1)
    {
    }
   0.resistor([3510,2664],3,0,-1)
    {
    R = "0.01 [ohm]"
    }
   0.datalabel([3294,2448],6,0,-1)
    {
    Name = "COM"
    }
   0.datalabel([3294,2214],6,0,-1)
    {
    Name = "COM"
    }
   1.g6p200_421([3222,2556],4,0,5370)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "0"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvd_Fe_P1_B2"
    VCurr = "Ivd_Fe_P1_B2"
    SCurr = ""
    }
   1.g6p200_421([3222,2322],4,0,5390)
    {
    UP = "0"
    FP = "2"
    SNUB = "1"
    KV = "-1"
    View = "0"
    FR = "50.0 [Hz]"
    GP = "10.0"
    GI = "100.0"
    KP = "1"
    RON = "0.00874 [ohm]"
    ROFF = "3.5E6 [ohm]"
    EFVD = "0.0667 [kV]"
    EBO = "1.0E5 [kV]"
    TEXT = "511 [usec]"
    CD = "0.0393 [uF]"
    RD = "1680 [ohm]"
    FPNM = ""
    VVolt = "Uvy_Fe_P1_B2"
    VCurr = "Ivy_Fe_P1_B2"
    SCurr = ""
    }
   -Wire-([4374,2502],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([4338,2502],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([4302,2502],0,0,-1)
    {
    Vertex="0,0;0,-270"
    }
   -Wire-([3600,2520],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3600,2556],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3600,2592],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3582,1926],0,0,-1)
    {
    Vertex="0,0;36,0;36,-108"
    }
   -Wire-([4104,1458],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([4068,1494],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([3978,2520],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([3978,2556],0,0,-1)
    {
    Vertex="0,0;-126,0"
    }
   -Wire-([3978,2592],0,0,-1)
    {
    Vertex="0,0;-162,0"
    }
   -Wire-([3960,1458],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([3960,1494],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([3960,1530],0,0,-1)
    {
    Vertex="0,0;-144,0"
    }
   0.datalabel([3942,1422],6,0,-1)
    {
    Name = "BRK_Fe_P1_B1"
    }
   -Wire-([4014,1422],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.datalabel([3960,2646],6,0,-1)
    {
    Name = "BRK_Fe_P1_B2"
    }
   -Wire-([4032,2646],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([4158,2520],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   -Wire-([4158,2556],0,0,-1)
    {
    Vertex="0,0;-108,0"
    }
   1.DC_Breaker([2862,2700],2,0,7210)
    {
    NAME = "Q14_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([2826,2430],1,0,7260)
    {
    NAME = "Q15_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([2862,2214],2,0,7280)
    {
    NAME = "Q16_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.var_switch([2142,2466],4,136827696,1090)
    {
    Name = "Q16_Fe_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2340,2466],4,136828104,1130)
    {
    Name = "Q15_Fe_P1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2340,2358],4,136828512,1000)
    {
    Name = "Q14_Fe_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([2016,2466],6,0,-1)
    {
    Name = "Q16_Fe_P1"
    }
   0.datalabel([2214,2358],6,0,-1)
    {
    Name = "Q14_Fe_P1"
    }
   0.datalabel([2214,2466],6,0,-1)
    {
    Name = "Q15_Fe_P1"
    }
   1.DC_Breaker([2862,1152],2,0,7730)
    {
    NAME = "Q13_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   1.DC_Breaker([2826,1386],1,0,7510)
    {
    NAME = "Q12_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "2"
    }
   1.DC_Breaker([2862,1638],2,0,7380)
    {
    NAME = "Q11_Fe_P1"
    OPCUR = "0"
    ENAB = "0"
    ViewB = "1"
    CLVL = "0.0 [kA]"
    ROFF = "1.E6 [ohm]"
    RON = "0.01 [ohm]"
    PRER = "0.1 [ohm]"
    TD = "0.0 [s]"
    TDR = "0.05 [s]"
    PostIns = "0"
    TDBO = "0.005 [s]"
    IBR = ""
    SBR = ""
    BOpen = "0"
    }
   0.var_switch([2358,1512],4,136830144,290)
    {
    Name = "Q11_Fe_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2358,1620],4,136830552,380)
    {
    Name = "Q12_Fe_P1"
    Group = ""
    Display = "0"
    Value = "1"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.var_switch([2160,1620],4,136830960,370)
    {
    Name = "Q13_Fe_P1"
    Group = ""
    Display = "0"
    Value = "0"
    Max = "1"
    Min = "0"
    Ton = "Open"
    Toff = "Closed"
    }
   0.datalabel([2232,1512],6,0,-1)
    {
    Name = "Q11_Fe_P1"
    }
   0.datalabel([2034,1620],6,0,-1)
    {
    Name = "Q13_Fe_P1"
    }
   0.datalabel([2232,1620],6,0,-1)
    {
    Name = "Q12_Fe_P1"
    }
   -Wire-([3042,1638],0,0,-1)
    {
    Vertex="0,0;108,0"
    }
   -Wire-([3006,1638],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([4374,1566],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([4302,1566],0,0,-1)
    {
    Vertex="0,0;0,666"
    }
   0.xfmr-3p2w([3474,2322],4,0,3950)
    {
    Name = "YY_Fe_P1_B2"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "0"
    Lead = "1"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00238 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVY_a_B2_Fe_P1"
    ILB2 = "IVY_b_B2_Fe_P1"
    ILC2 = "IVY_c_B2_Fe_P1"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.xfmr-3p2w([3474,2556],4,0,3980)
    {
    Name = "YD_Fe_P1_B2"
    Tmva = "1555.86 [MVA]"
    f = "50.0 [Hz]"
    YD1 = "0"
    YD2 = "1"
    Lead = "2"
    Xl = "0.24 [p.u.]"
    Ideal = "1"
    NLL = "0.00059 [p.u.]"
    CuL = "0.00230 [p.u.]"
    Tap = "1"
    View = "0"
    Dtls = "0"
    V1 = "515.0 [kV]"
    V2 = "231.61 [kV]"
    Enab = "0"
    Sat = "1"
    Xair = "0.24 [p.u.]"
    Tdc = "1.0 [sec]"
    Xknee = "1.20 [p.u.]"
    Txk = "0 [sec]"
    Im1 = "1.0 [%]"
    ILA1 = ""
    ILB1 = ""
    ILC1 = ""
    IAB1 = ""
    IBC1 = ""
    ICA1 = ""
    ILA2 = "IVD_a_B2_Fe_P1"
    ILB2 = "IVD_b_B2_Fe_P1"
    ILC2 = "IVD_c_B2_Fe_P1"
    IAB2 = ""
    IBC2 = ""
    ICA2 = ""
    IMA = ""
    IMB = ""
    IMC = ""
    FLXA = ""
    FLXB = ""
    FLXC = ""
    IMAB = ""
    IMBC = ""
    IMCA = ""
    FLXAB = ""
    FLXBC = ""
    FLXCA = ""
    }
   0.inductor([2646,1152],2,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2574,1152],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1602,1152],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.inductor([2574,1152],2,0,-1)
    {
    L = "0.075 [H]"
    }
   0.inductor([2556,2700],6,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2628,2700],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.inductor([2628,2700],6,0,-1)
    {
    L = "0.075 [H]"
    }
   -Wire-([2556,2700],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   0.capacitor([1854,2826],1,0,-1)
    {
    C = "14.0 [uF]"
    }
   -Wire-([1854,2700],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.ground([1854,2862],7,0,-1)
    {
    }
   -Wire-([1584,1152],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([1782,1746],0,0,-1)
    {
    Vertex="0,0;0,-594"
    }
   -Wire-([1584,2700],0,0,-1)
    {
    Vertex="0,0;234,0"
    }
   -Wire-([2088,2700],0,0,-1)
    {
    Vertex="0,0;252,0"
    }
    {
    }
