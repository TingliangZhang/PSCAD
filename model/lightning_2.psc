PSCAD 4.2.1

Settings
 {
 Id = "1268186459.1400592325"
 Author = "Administrator.wangyc"
 Desc = ""
 Arch = "windows"
 Options = 32
 Build = 18
 Warn = 1
 Check = 7
 Libs = ""
 Source = ""
 RunInfo = 
  {
  Fin = 0.0005
  Step = 1e-009
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
 Component("corona")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("corona")
    {
    Input("r00",4,4,160,12,2)
     {
     Desc = "conductor radius"
     Data = Real
     Unit = "cm"
     Len = 15
     }
    Input("h",4,16,160,12,2)
     {
     Desc = "conductor average height"
     Data = Real
     Unit = "m"
     Len = 15
     }
    Input("n",4,28,160,12,2)
     {
     Desc = "spacing number"
     Data = Real
     Len = 15
     }
    Input("d",4,40,160,12,2)
     {
     Desc = "spacing distance"
     Data = Real
     Unit = "m"
     Len = 15
     }
    Input("re",4,52,160,12,2)
     {
     Desc = "equivalent radius"
     Data = Real
     Unit = "m"
     Len = 15
     }
    Input("E0",4,64,160,12,2)
     {
     Desc = "breakover voltage gradient"
     Data = Real
     Unit = "kV/cm"
     Len = 15
     }
    Input("m",4,76,160,12,2)
     {
     Desc = "roughness coefficient"
     Data = Real
     Len = 15
     }
    Input("delta",4,88,160,12,2)
     {
     Desc = "relative air density"
     Data = Real
     Len = 15
     }
    Input("r01",4,100,160,12,2)
     {
     Desc = "conductor radius2"
     Data = Real
     Unit = "m"
     Len = 15
     }
    Input("C0",4,112,160,12,6)
     {
     Desc = "capacitance per unit"
     Data = Real
     Unit = "uF/km"
     Len = 15
     }
    Input("L",4,124,160,12,2)
     {
     Desc = "line length"
     Data = Real
     Unit = "km"
     Len = 15
     }
    Text("Name",4,136,160,12,2)
     {
     Desc = "Matlab Module Name"
     Len = 15
     }
    Text("Path",4,148,160,12,2)
     {
     Desc = "Path of .m file"
     Len = 15
     }
    Input("Enabl",4,160,160,12,2)
     {
     Desc = "Enable=1,Enable=0"
     Def = "1"
     Data = Real
     Len = 15
     Min = 0
     Max = 1
     }
    Input("sigmac",4,172,160,12,2)
     {
     Desc = "corona losses constant1"
     Data = Real
     Len = 15
     }
    Input("sigmag",4,184,160,12,2)
     {
     Desc = "corona losses constant2"
     Data = Real
     Len = 15
     }
    }
   }

  Nodes = 
   {
   Input("uin",-54,-18)
    {
    Type = Real
    }
   Input("phasef",-54,18)
    {
    Type = Real
    }
   Output("BRK",54,-72)
    {
    Type = Real
    }
   Output("Ubreak",54,-36)
    {
    Type = Real
    }
   Output("Ccorona",54,0)
    {
    Type = Real
    }
   Output("Rcorona",54,36)
    {
    Type = Real
    }
   Output("Cij",54,72)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-93,39,93)
   Pen(ByNode,ByNode,ByNode,uin)
   Line(-54,-18,-39,-18)
   Pen(,Solid)
   Line(-39,-18,-44,-23)
   Line(-39,-18,-44,-13)
   Pen(,ByNode,,phasef)
   Line(-54,18,-39,18)
   Pen(,Solid)
   Line(-39,18,-44,13)
   Line(-39,18,-44,23)
   Pen(,ByNode,,BRK)
   Line(54,-72,39,-72)
   Pen(,,,Ubreak)
   Line(54,-36,39,-36)
   Pen(,,,Ccorona)
   Line(54,0,39,0)
   Line(54,36,39,36)
   Pen(,,,Cij)
   Line(54,72,39,72)
   Text(-46,-22,"uin")
   Text(-46,14,"phasef")
   Text(46,-76,"BRK")
   Text(46,-40,"Ubreak")
   Text(46,-4,"Ccorona")
   Text(46,32,"Rcorona")
   Text(46,68,"Cij")
   Text(4,2,"corona")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   DSDYN = "\
#STORAGE  REAL:7
#LOCAL REAL Ec
#LOCAL REAL f
#LOCAL REAL k
#LOCAL REAL Cd
#LOCAL REAL Rd
#LOCAL REAL uu
#LOCAL REAL Kc
#LOCAL REAL Kg
#LOCAL REAL u2
#LOCAL REAL u1

f=1.0
k=1+0.308/sqrt($delta*$r00)
Ec=$E0*$m*$delta*f*k
Ec=Ec*100
uu=Ec*$n*$r01*log(2*$h/$re)/(1+($n-1)*$r01/$d)

$Ubreak=uu
Kc=$sigmac*sqrt($re/$h/2)*1e-11
Kg=$sigmag*sqrt($re/$h/2)*1e-11

u2=$uin



IF($Enabl.GT.0.9) THEN 
!   IF (u2==0) THEN 
!   $Ccorona=0
!   $Rcorona=0
!   ELSE
!   ENDIF



IF (abs(u2).GE.uu) THEN
   $BRK=0
ELSE
   $BRK=1
ENDIF
   STORF(NSTORF)=u2
   STORF(NSTORF+1)=uu
   STORF(NSTORF+2)=Kc
   STORF(NSTORF+3)=Kg
   STORF(NSTORF+4)=$L
   CALL MLAB_INT(\"$Path\", \"$Name\", \"R R R R R\" , \"R R\" )
   
   $Ccorona = STORF(NSTORF+5)   
   $Rcorona =  STORF(NSTORF+6)
$Cij=$Ccorona*$phasef

ENDIF

NSTORF = NSTORF +7
"
   }
  }
 Component("phasef")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("phasef")
    {
    Input("re",4,4,160,12,2)
     {
     Desc = "equivalent conductor radius"
     Data = Real
     Len = 15
     }
    Input("c1x",4,16,160,12,2)
     {
     Desc = "conductor 1 x"
     Data = Real
     Len = 15
     }
    Input("c1y",4,28,160,12,2)
     {
     Desc = "conductor 1 y"
     Data = Real
     Len = 15
     }
    Input("c2x",4,40,160,12,2)
     {
     Desc = "conductor 2 x"
     Data = Real
     Len = 15
     }
    Input("c2y",4,52,160,12,2)
     {
     Desc = "conductor 2 y"
     Data = Real
     Len = 15
     }
    Input("c3x",4,64,160,12,2)
     {
     Desc = "conductor 3 x"
     Data = Real
     Len = 15
     }
    Input("c3y",4,76,160,12,2)
     {
     Desc = "conductor 3 y"
     Data = Real
     Len = 15
     }
    Text("Name",4,88,160,12,2)
     {
     Desc = "Matlab module name"
     Len = 15
     }
    Text("Path",4,100,160,12,2)
     {
     Desc = "Path of .m file"
     Len = 15
     }
    }
   }

  Nodes = 
   {
   Output("phase1f",54,-36)
    {
    Type = Real
    }
   Output("phase2f",54,0)
    {
    Type = Real
    }
   Output("phase3f",54,36)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-57,39,57)
   Pen(ByNode,ByNode,ByNode,phase1f)
   Line(54,-36,39,-36)
   Pen(,,,phase2f)
   Line(54,0,39,0)
   Pen(,,,phase3f)
   Line(54,36,39,36)
   Text(46,-40,"phase1f")
   Text(46,-4,"phase2f")
   Text(46,32,"phase3f")
   Text(3,1,"phasef")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   DSDYN = "\
#STORAGE REAL:10

   STORF(NSTORF)=$c1x
   STORF(NSTORF+1)=$c2x
   STORF(NSTORF+2)=$c3x
   STORF(NSTORF+3)=$c1y
   STORF(NSTORF+4)=$c2y
   STORF(NSTORF+5)=$c3y
   STORF(NSTORF+6)=$re
   CALL MLAB_INT(\"$Path\", \"$Name\", \"R R R R R R R\" , \"R R R\" )
$phase1f= STORF(NSTORF+7)
$phase2f= STORF(NSTORF+8)
$phase3f= STORF(NSTORF+9)

NSTORF=NSTORF+10
"
   }
  }
 Component("grounding_RRR")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("grounding_RRR")
    {
    Text("Name",1,1,160,12,2)
     {
     Desc = "matlab module name"
     Def = "grounding_RRR1"
     Len = 15
     }
    Text("Path",1,12,160,12,2)
     {
     Desc = "Path of .m file"
     Def = "F:\\design\\pscad\\mfiles"
     Len = 15
     }
    Input("Enabl",1,24,160,12,2)
     {
     Desc = "Enable=1,Enable=0"
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
   Input("inI",0,-54)
    {
    Type = Real
    }
   Input("time",-54,0)
    {
    Type = Real
    }
   Output("outr",0,54)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,inI)
   Line(0,-54,0,-39)
   Pen(,Solid)
   Line(0,-39,-5,-44)
   Line(0,-39,5,-44)
   Pen(,ByNode,,time)
   Line(-54,0,-39,0)
   Pen(,Solid)
   Line(-39,0,-44,-5)
   Line(-39,0,-44,5)
   Pen(,ByNode,,outr)
   Line(0,54,0,39)
   Text(10,-42,"inI")
   Text(-46,-4,"time")
   Text(10,50,"outr")
   Text(0,2,"grounding_RRR")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   DSDYN = "\
#STORAGE REAL:3
! --------------------------------------------------
! --------------------------------------------------
! PSCAD/EMTDC - MATLAB INTERFACE
! Module: $Name
#LOCAL INTEGER I_CNT
#LOCAL REAL dt
#LOCAL REAL STEP
      dt=1e-9
      IF($Enabl.GT.0.9) THEN
! --------------------------------------------------
! Transfer EMTDC Input Variables to Matlab Interface
! --------------------------------------------------
!          STEP=$time/dt+1
      IF(TIMEZERO) THEN
          STEP=1
      ELSE 
          STEP=STEP+1
      ENDIF
          STORF(NSTORF) = $inI
          STORF(NSTORF+1)=STEP
! --------------------------------------------------
! Call PSCAD/EMTDC Matlab Interface:
! CALL MLAB_INT(\"MFILEPATH\",\"MFILENAME\",\"Input Format\",\"Output Format\")
! --------------------------------------------------
       CALL MLAB_INT(\"$Path\", \"$Name\", \"R R\" , \"R\" )
!
! --------------------------------------------------
! Transfer Matlab Output Variables from Matlab Interface
! --------------------------------------------------
!
! First Output Array (REAL(1))
       $outr = STORF(NSTORF+2)
      ENDIF
! Update STORx Pointers
      NSTORF = NSTORF + 3"
   }
  }
 Component("coronag")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("coronag")
    {
    Input("r00",4,4,160,12,2)
     {
     Desc = "conductor radius"
     Data = Real
     Unit = "cm"
     Len = 15
     }
    Input("h",4,16,160,12,2)
     {
     Desc = "conductor average height"
     Data = Real
     Unit = "m"
     Len = 15
     }
    Input("E0",4,28,160,12,2)
     {
     Desc = "breakover voltage gradient"
     Data = Real
     Unit = "kV/cm"
     Len = 15
     }
    Input("m",4,40,160,12,2)
     {
     Desc = "roughness coefficient"
     Data = Real
     Len = 15
     }
    Input("delta",4,52,160,12,2)
     {
     Desc = "relative air density"
     Data = Real
     Len = 15
     }
    Input("L",4,64,160,12,2)
     {
     Desc = "line length"
     Data = Real
     Unit = "km"
     Len = 15
     }
    Text("Name",4,76,160,12,2)
     {
     Desc = "Matlab Module Name"
     Len = 15
     }
    Text("Path",4,88,160,12,2)
     {
     Desc = "Path of .m file"
     Len = 15
     }
    Input("Enabl",4,100,160,12,2)
     {
     Desc = "Enable=1,Enable=0"
     Def = "1"
     Data = Real
     Len = 15
     Min = 0
     Max = 1
     }
    Input("sigmac",4,112,160,12,2)
     {
     Desc = "corona losses constant1"
     Data = Real
     Len = 15
     }
    Input("sigmag",4,124,160,12,2)
     {
     Desc = "corona losses constant2"
     Data = Real
     Len = 15
     }
    Input("r01",4,136,160,12,2)
     {
     Desc = "conductor radius2"
     Data = Real
     Unit = "m"
     Len = 15
     }
    }
   }

  Nodes = 
   {
   Input("uin",-54,0)
    {
    Type = Real
    }
   Output("BRK",54,-54)
    {
    Type = Real
    }
   Output("Ubreak",54,-18)
    {
    Type = Real
    }
   Output("Ccorona",54,18)
    {
    Type = Real
    }
   Output("Rcorona",54,54)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-75,39,75)
   Pen(ByNode,ByNode,ByNode,uin)
   Line(-54,0,-39,0)
   Pen(,Solid)
   Line(-39,0,-44,-5)
   Line(-39,0,-44,5)
   Pen(,ByNode,,BRK)
   Line(54,-54,39,-54)
   Pen(,,,Ubreak)
   Line(54,-18,39,-18)
   Pen(,,,Ccorona)
   Line(54,18,39,18)
   Pen(,,,Rcorona)
   Line(54,54,39,54)
   Text(-46,-4,"uin")
   Text(46,-58,"BRK")
   Text(46,-22,"Ubreak")
   Text(46,14,"Ccorona")
   Text(46,50,"Rcorona")
   Text(2,2,"coronag")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   DSDYN = "\
#STORAGE  REAL:7
#LOCAL REAL Ec
#LOCAL REAL f
#LOCAL REAL k
#LOCAL REAL Cd
#LOCAL REAL Rd
#LOCAL REAL uu
#LOCAL REAL Kc
#LOCAL REAL Kg
#LOCAL REAL u2
#LOCAL REAL u1

f=1.0
k=1+0.308/sqrt($delta*$r00)
Ec=$E0*$m*$delta*f*k
Ec=Ec*100
uu=Ec*1*$r01*log(2*$h/$r01)



$Ubreak=uu
Kc=$sigmac*sqrt($r01/$h/2)*1e-11
Kg=$sigmag*sqrt($r01/$h/2)*1e-11

u2=$uin



IF($Enabl.GT.0.9) THEN 


IF (abs(u2).GE.uu) THEN
   $BRK=0
ELSE
   $BRK=1
ENDIF
   STORF(NSTORF)=u2
   STORF(NSTORF+1)=uu
   STORF(NSTORF+2)=Kc
   STORF(NSTORF+3)=Kg
   STORF(NSTORF+4)=$L
   CALL MLAB_INT(\"$Path\", \"$Name\", \"R R R R R\" , \"R R\" )
   
   $Ccorona = STORF(NSTORF+5)   
   $Rcorona =  STORF(NSTORF+6)

ENDIF"
   }
  }
 Component("LPMinsulator")
  {
  Desc = ""
  FileDate = 0
  Parameters = 
   {
   Category("LPMinsulator")
    {
    Input("Emin",4,4,164,12,2)
     {
     Desc = "Emin E0 "
     Def = "500"
     Data = Real
     Unit = "kV/m"
     Len = 15
     Min = 1
     Max = 1000
     }
    Input("VK1",4,16,164,12,2)
     {
     Desc = "VK1 velocity parameter"
     Def = "170"
     Data = Real
     Len = 15
     }
    Input("VK2",4,28,164,12,2)
     {
     Desc = "VK2 velocity parameter"
     Def = "0.0015"
     Data = Real
     Len = 15
     }
    Input("Gap",4,40,164,12,2)
     {
     Desc = "Gap length"
     Def = "5.24"
     Data = Real
     Unit = "m"
     Len = 15
     }
    }
   }

  Nodes = 
   {
   Output("BRK",0,-54)
    {
    Type = Real
    }
   Electrical("V1",-54,0)
    {
    }
   Electrical("V2",54,0)
    {
    }
   Output("Length",0,54)
    {
    Type = Real
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,BRK)
   Line(0,-54,0,-39)
   Pen(,,,V1)
   Line(-54,0,-39,0)
   Pen(,,,V2)
   Line(54,0,39,0)
   Pen(,,,Length)
   Line(0,54,0,39)
   Text(10,-42,"BRK")
   Text(-46,-4,"V1")
   Text(46,-4,"V2")
   Text(10,50,"Length")
   Text(1,3,"LPM")
   }

  Section(EMTDC)
   {
   Fortran = ""
   Branch = ""
   Computations = ""
   DSDYN = "\
#STORAGE REAL:3  
#LOCAL INTEGER out
#LOCAL INTEGER ISTORF
#LOCAL INTEGER posA
#LOCAL INTEGER posB
#LOCAL REAL ts
#LOCAL REAL V 
#LOCAL REAL d
#LOCAL REAL x
#LOCAL REAL velocity
#LOCAL REAL K1
#LOCAL REAL K2
#LOCAL REAL E0
#LOCAL REAL Vmin
#LOCAL REAL DELTA1	
#LOCAL REAL DELTA2
#LOCAL REAL DELTA3
#LOCAL REAL DELTA4
d=$Gap

      ISTORF = NSTORF
      NSTORF = NSTORF+3
	V=EMTDC_VVDC($SS, $V1,$V2)
	V=ABS(V)
	K1=$VK1
	K2=$VK2
	E0=$Emin
IF (TIMEZERO) THEN
      !初始化
       STORF(ISTORF)=DELT	!ts
	STORF(ISTORF+1)=d	!d
	STORF(ISTORF+2)=d	!x
	OUT = 1
	$Length=d
	$BRK=OUT
      ELSE
!若非初始...
   	ts=STORF(ISTORF)
   	d=STORF(ISTORF+1)
   	x=STORF(ISTORF+2)

	!If the node is grounded, 
	!the node is zero, 
	!and the votage of the node is zero.
   	V     =     ABS(V);
!   	K1    =     170
!   	K2    =     0.0015
!   	E0    =     500
   	Vmin  =     E0*x;
 !如果电压超过最低发展电压
      IF    (V .GE. Vmin) THEN
      velocity	=	K1*d*EXP((K2)*V/d)*(V/(x)-E0)
            !x     =     x-velocity*DELT
	!	Runge Kutta
	DELTA1=	DELT*velocity
	DELTA2=	DELT*(K1*D*EXP((K2)*V/d)*(V/(x-0.5*DELTA1)-E0))
	DELTA3=	DELT*(K1*D*EXP((K2)*V/d)*(V/(x-0.5*DELTA2)-E0))
	DELTA4=	DELT*(K1*D*EXP((K2)*V/d)*(V/(x-DELTA3)-E0))
	x	=	x-DELTA1/6-DELTA2/3-DELTA3/3-DELTA4/6

      ENDIF

IF    (x .LE. 0.01) THEN
            OUT=0
		x=0

      ELSE  
            OUT=1

      ENDIF
	$BRK=OUT
	$Length=x
   	STORF(ISTORF)=ts
   	STORF(ISTORF+2)=x

ENDIF

"
   }
  }
 Module("tower5004")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(6,0,"tower4")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,180],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,180],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,306],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([450,18],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,306],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,648],1,0,100)
    {
    Name = "inI4"
    }
   0.varrlc([468,756],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,702],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,684],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,756],0,0,150)
    {
    Name = "V4"
    }
   -Wire-([468,756],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,774],1,0,-1)
    {
    }
   0.datalabel([990,252],0,0,-1)
    {
    Name = "inI4"
    }
   -Wire-([990,252],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([990,288],0,0,-1)
    {
    Name = "V4"
    }
   -Wire-([990,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1008,288],0,66248368,190)
    {
    Name = "V4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,252],0,66248776,200)
    {
    Name = "inI4"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,648],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([234,306],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([666,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,216],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([738,378],0)
    {
   Name = "grounding-kong\\grounding_RRRm.m"
    }
   0.breaker1([162,306],2,0,70)
    {
    NAME = "BRK4_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([90,306],0,0,-1)
    {
    }
   0.pin([216,306],0,0,-1)
    {
    }
   -Wire-([198,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([126,306],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([144,126],0,0,-1)
    {
    Name = "BRK4_1"
    }
   0.datalabel([144,270],0,0,-1)
    {
    Name = "x4_1"
    }
   -Wire-([144,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([144,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([90,306],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([216,306],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([540,126],3,0,40)
    {
    NAME = "BRK4_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,54],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([450,72],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([504,198],0,0,-1)
    {
    Name = "BRK4_2"
    }
   0.datalabel([378,126],0,0,-1)
    {
    Name = "x4_2"
    }
   -Wire-([396,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,198],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([540,162],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([450,180],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([792,306],2,0,80)
    {
    NAME = "BRK4_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([702,306],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([828,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,216],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([774,144],0,0,-1)
    {
    Name = "BRK4_3"
    }
   0.datalabel([774,288],0,0,-1)
    {
    Name = "x4_3"
    }
   -Wire-([774,162],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([774,288],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([702,216],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([828,216],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   0.datalabel([90,684],0,0,-1)
    {
    Name = "BRK4_1"
    }
   0.datalabel([90,720],0,0,-1)
    {
    Name = "BRK4_2"
    }
   0.datalabel([90,756],0,0,-1)
    {
    Name = "BRK4_3"
    }
   0.pgb([126,684],0,66255304,110)
    {
    Name = "BRK4_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,720],0,66255712,120)
    {
    Name = "BRK4_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,756],0,66256120,130)
    {
    Name = "BRK4_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,792],0,0,-1)
    {
    Name = "x4_1"
    }
   0.pgb([126,792],0,66256936,140)
    {
    Name = "x4_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,828],0,0,-1)
    {
    Name = "x4_2"
    }
   0.pgb([126,828],0,66257752,160)
    {
    Name = "x4_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,864],0,0,-1)
    {
    Name = "x4_3"
    }
   0.pgb([126,864],0,66258568,170)
    {
    Name = "x4_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([126,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,756],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,720],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,684],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([846,720],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [846,720]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(66255304,"BRK4_1",0,1,,)
     Curve(66255712,"BRK4_2",0,1,,)
     Curve(66256120,"BRK4_3",0,1,,)
     }
    }
   .LPMinsulator([144,198],0,0,50)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([450,126],1,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([774,216],0,0,60)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([90,306],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([450,234],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([450,36],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([846,306],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   0.voltmeter([180,378],1,0,90)
    {
    Name = "E41"
    }
   -Wire-([90,306],0,0,-1)
    {
    Vertex="0,0;0,72;54,72"
    }
   -Wire-([180,378],0,0,-1)
    {
    Vertex="0,0;36,0;36,-72"
    }
   0.datalabel([90,900],0,0,-1)
    {
    Name = "E41"
    }
   0.pgb([126,900],0,66261016,180)
    {
    Name = "E41"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([126,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([252,810],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [252,810]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(66256936,"x4_1",0,1,,)
     Curve(66257752,"x4_2",0,1,,)
     Curve(66258568,"x4_3",0,1,,)
     }
    }
   -TLine-([324,216],0,0,-1)
    {
    Name = "T4_10"
    Date = 1377679410
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,216],0,0,-1)
    {
    Name = "T4_11"
    Date = 1377679410
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,306],0,0,-1)
    {
    Name = "T4_6"
    Date = 1377679410
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,306],0,0,-1)
    {
    Name = "T4_7"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,450],0,0,-1)
    {
    Name = "T4_2"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,540],0,0,-1)
    {
    Name = "T4_1"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,306],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,360],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,288],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,288],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,360],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,522],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,540],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([666,306],0,0,-1)
    {
    Name = "T4_9"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,540],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,450],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,450],0,0,-1)
    {
    Name = "T4_3"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,432],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,612],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,612],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,540],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,540],0,0,-1)
    {
    Name = "T4_12"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,360],0,0,-1)
    {
    Name = "T4_5"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,360],0,0,-1)
    {
    Name = "T4_4"
    Date = 1377679411
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([306,306],0,0,-1)
    {
    Name = "T4_8"
    Date = 1377679412
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Plot-([828,450],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,252]
    Posn = [828,450]
    Icon = [-1,-1]
    Extents = 0,0,558,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,189],"y")
     {
     Options = 1
     Units = ""
     Curve(66248776,"inI4",0,1,-2,)
     Curve(66248368,"V4",0,1,-2,)
     Curve(66261016,"E41",0,1,,)
     Curve(33138872,"outr4",0,1,,)
     }
    }
   -Wire-([324,216],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   }
  }
 Module("lighting")
  {
  Desc = ""
  FileDate = 0
  Nodes = 
   {
   Electrical("ip",-54,0)
    {
    }
   Electrical("io",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,6,"lighting")
   Pen(ByNode,ByNode,ByNode,ip)
   Line(-54,0,-39,0)
   Text(-46,-4,"ip")
   Pen(,,,io)
   Line(54,0,39,0)
   Text(46,-4,"surge")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([414,198],0,0,-1)
    {
    Name = "io"
    }
   0.src_ccin_1([594,162],7,0,10)
    {
    Name = "Src"
    Cntrl = "1"
    Vm = "250 [kA]"
    f = "50.0 [Hz]"
    Ph = "0.0 [deg]"
    Tc = "1.0 [s]"
    }
   -Wire-([594,234],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([504,162],1,0,-1)
    {
    R = "300.0 [ohm]"
    }
   0.ground([504,198],1,0,-1)
    {
    }
   0.ground([594,234],1,0,-1)
    {
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([504,126],0,0,-1)
    {
    Vertex="0,0;90,0;90,36"
    }
   -Wire-([504,126],0,0,-1)
    {
    Vertex="0,0;-90,0;-90,72"
    }
   0.exp([468,360],0,0,30)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   0.sumjct([576,360],0,0,40)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "-1"
    G = "0"
    }
   0.exp([486,432],0,0,80)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   -Wire-([504,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([522,432],0,0,-1)
    {
    Vertex="0,0;54,0;54,-36"
    }
   0.time-sig([198,360],0,0,-1)
    {
    }
   0.mult([396,360],0,0,20)
    {
    }
   0.const([360,414],0,0,-1)
    {
    Name = ""
    Value = "-15000"
    }
   -Wire-([396,414],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([234,360],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.mult([414,432],0,0,70)
    {
    }
   -Wire-([270,360],0,0,-1)
    {
    Vertex="0,0;0,72;108,72"
    }
   0.const([378,486],0,0,-1)
    {
    Name = ""
    Value = "-1860000"
    }
   -Wire-([414,486],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.mult([666,360],0,0,50)
    {
    }
   -Wire-([630,162],0,0,-1)
    {
    Vertex="0,0;216,0;216,198;162,198"
    }
   -Wire-([756,450],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.div([756,360],0,0,60)
    {
    }
   0.const([720,450],0,0,-1)
    {
    Name = ""
    Value = "0.9538"
    }
   -Wire-([612,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([702,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([666,414],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.import([630,414],0,0,-1)
    {
    Name = "Ip"
    }
   }
  }
 Module("tower15")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower15")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([414,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([666,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([162,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([486,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([990,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([558,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([558,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([558,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([558,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([612,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([558,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([558,756],1,0,-1)
    {
    }
   0.datalabel([1080,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1080,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1080,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1080,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1098,270],0,142457872,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1098,234],0,142458280,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([558,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([414,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([666,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([252,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([180,288],0,0,-1)
    {
    }
   -Wire-([180,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([252,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([198,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([306,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([252,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([252,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([252,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([252,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([324,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([900,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([810,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([936,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([810,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([936,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([828,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([882,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([882,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([882,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([882,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([882,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([954,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([630,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([630,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([630,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([594,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([468,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([486,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([594,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([540,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([540,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([540,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([540,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([126,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([126,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([126,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([162,702],0,142465216,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([162,738],0,142465624,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([162,774],0,142466032,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([162,810],0,142466848,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([162,846],0,142467664,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([162,882],0,142468480,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([162,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([342,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [342,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142466848,"x1_1",0,1,,)
     Curve(142467664,"x1_2",0,1,,)
     Curve(142468480,"x1_3",0,1,,)
     }
    }
   -Plot-([954,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [954,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142465216,"BRK1_1",0,1,,)
     Curve(142465624,"BRK1_2",0,1,,)
     Curve(142466032,"BRK1_3",0,1,,)
     }
    }
   -Plot-([972,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [972,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142458280,"inI1",0,1,,)
     Curve(142457872,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([414,198],0,0,-1)
    {
    Name = "T15_10"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,198],0,0,-1)
    {
    Name = "T15_11"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([522,288],0,0,-1)
    {
    Name = "T15_6"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,288],0,0,-1)
    {
    Name = "T15_7"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([414,432],0,0,-1)
    {
    Name = "T15_2"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([486,522],0,0,-1)
    {
    Name = "T15_1"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([522,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([558,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([648,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([666,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([666,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([414,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([666,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([558,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([396,288],0,0,-1)
    {
    Name = "T15_8"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([756,288],0,0,-1)
    {
    Name = "T15_9"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([486,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([666,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([666,432],0,0,-1)
    {
    Name = "T15_3"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([558,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([630,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([558,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([630,522],0,0,-1)
    {
    Name = "T15_12"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,342],0,0,-1)
    {
    Name = "T15_5"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([414,342],0,0,-1)
    {
    Name = "T15_4"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([540,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower4")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower4")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,234],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,234],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,360],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([450,54],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,360],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,702],1,0,70)
    {
    Name = "inI7"
    }
   0.varrlc([468,810],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,756],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,810],0,0,100)
    {
    Name = "V7"
    }
   -Wire-([468,810],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,828],1,0,-1)
    {
    }
   0.datalabel([990,306],0,0,-1)
    {
    Name = "inI7"
    }
   -Wire-([990,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([990,342],0,0,-1)
    {
    Name = "V7"
    }
   -Wire-([990,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1008,342],0,142483168,150)
    {
    Name = "V7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,306],0,142483576,160)
    {
    Name = "inI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,702],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([324,270],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([576,270],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([900,882],0)
    {
   Name = "mfiles7\\grounding_RRR7.m"
    }
   -Plot-([846,558],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [846,558]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142483576,"inI7",0,1,,)
     Curve(142483168,"V7",0,1,,)
     Curve(0,"outr7",0,1,,)
     }
    }
   0.breaker1([162,360],2,0,50)
    {
    NAME = "BRK7_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([90,360],0,0,-1)
    {
    }
   0.pin([216,360],0,0,-1)
    {
    }
   -Wire-([198,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([126,360],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,360],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([144,180],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([144,324],0,0,-1)
    {
    Name = "x7_1"
    }
   -Wire-([144,198],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([144,324],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([90,360],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([216,360],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([540,180],3,0,20)
    {
    NAME = "BRK7_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,108],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,144],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([504,252],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([378,180],0,0,-1)
    {
    Name = "x7_2"
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,252],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([540,216],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([450,234],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([792,360],2,0,60)
    {
    NAME = "BRK7_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([702,234],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([828,234],0,0,-1)
    {
    Vertex="0,0;18,0;18,126"
    }
   -Wire-([702,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([828,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([774,306],0,0,-1)
    {
    Name = "x7_3"
    }
   -Wire-([774,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([774,162],0,0,-1)
    {
    Name = "BRK7_3"
    }
   -Wire-([774,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([162,792],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([162,828],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([162,864],0,0,-1)
    {
    Name = "BRK7_3"
    }
   0.pgb([198,792],0,142489696,80)
    {
    Name = "BRK7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([198,828],0,142490104,90)
    {
    Name = "BRK7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([198,864],0,142490512,110)
    {
    Name = "BRK7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,900],0,0,-1)
    {
    Name = "x7_1"
    }
   0.pgb([198,900],0,142491328,120)
    {
    Name = "x7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,936],0,0,-1)
    {
    Name = "x7_2"
    }
   0.pgb([198,936],0,142492144,130)
    {
    Name = "x7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,972],0,0,-1)
    {
    Name = "x7_3"
    }
   0.pgb([198,972],0,142492552,140)
    {
    Name = "x7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([198,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([990,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [990,972]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142489696,"BRK7_1",0,1,,)
     Curve(142490104,"BRK7_2",0,1,,)
     Curve(142490512,"BRK7_3",0,1,,)
     }
    }
   .LPMinsulator([144,252],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([450,180],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([774,234],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([450,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([846,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Plot-([324,936],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [324,936]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(142491328,"x7_1",0,1,,)
     Curve(142492144,"x7_2",0,1,,)
     Curve(142492552,"x7_3",0,1,,)
     }
    }
   -TLine-([324,270],0,0,-1)
    {
    Name = "T4_10"
    Date = 1397289550
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,270],0,0,-1)
    {
    Name = "T4_11"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,360],0,0,-1)
    {
    Name = "T4_6"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,360],0,0,-1)
    {
    Name = "T4_7"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-54,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,504],0,0,-1)
    {
    Name = "T4_2"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,594],0,0,-1)
    {
    Name = "T4_1"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,414],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,342],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,342],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,414],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,576],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,594],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([306,360],0,0,-1)
    {
    Name = "T4_8"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,360],0,0,-1)
    {
    Name = "T4_9"
    Date = 1397289551
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,504],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,504],0,0,-1)
    {
    Name = "T4_3"
    Date = 1397289552
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,486],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,666],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,666],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,594],0,0,-1)
    {
    Name = "T4_12"
    Date = 1397289552
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,414],0,0,-1)
    {
    Name = "T4_5"
    Date = 1397289552
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,414],0,0,-1)
    {
    Name = "T4_4"
    Date = 1397289552
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([450,288],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([234,360],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([666,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower14")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower14")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([378,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([630,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([126,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([450,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([954,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([522,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([522,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([522,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([522,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([576,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([522,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([522,756],1,0,-1)
    {
    }
   0.datalabel([1044,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1044,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1044,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1044,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1062,270],0,142508464,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1062,234],0,142508872,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([522,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([378,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([630,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([720,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([216,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([144,288],0,0,-1)
    {
    }
   -Wire-([144,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([216,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([162,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([270,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([216,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([216,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([216,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([216,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([288,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([180,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([864,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([774,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([900,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([774,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([792,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([846,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([846,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([846,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([846,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([846,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([918,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([594,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([594,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([594,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([558,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([432,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([450,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([558,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([504,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([504,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([504,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([90,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([90,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([90,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([126,702],0,142515808,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,738],0,142516216,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,774],0,142516624,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([126,810],0,142517440,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([126,846],0,142518256,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([126,882],0,142519072,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([126,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([306,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [306,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142517440,"x1_1",0,1,,)
     Curve(142518256,"x1_2",0,1,,)
     Curve(142519072,"x1_3",0,1,,)
     }
    }
   -Plot-([918,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [918,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142515808,"BRK1_1",0,1,,)
     Curve(142516216,"BRK1_2",0,1,,)
     Curve(142516624,"BRK1_3",0,1,,)
     }
    }
   -Plot-([936,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [936,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142508872,"inI1",0,1,,)
     Curve(142508464,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([378,198],0,0,-1)
    {
    Name = "T14_10"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([630,198],0,0,-1)
    {
    Name = "T14_11"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([486,288],0,0,-1)
    {
    Name = "T14_6"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,288],0,0,-1)
    {
    Name = "T14_7"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([378,432],0,0,-1)
    {
    Name = "T14_2"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([450,522],0,0,-1)
    {
    Name = "T14_1"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([360,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([486,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([522,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([612,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([630,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([630,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([378,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([630,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([522,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([360,288],0,0,-1)
    {
    Name = "T14_8"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([720,288],0,0,-1)
    {
    Name = "T14_9"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([450,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([630,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([630,432],0,0,-1)
    {
    Name = "T14_3"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([378,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([522,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([594,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([522,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([594,522],0,0,-1)
    {
    Name = "T14_12"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([630,342],0,0,-1)
    {
    Name = "T14_5"
    Date = 1397289548
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([378,342],0,0,-1)
    {
    Name = "T14_4"
    Date = 1397289549
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([504,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower13")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower13")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([396,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([648,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([144,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([468,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([972,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([540,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([540,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([540,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([540,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([594,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([540,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([540,756],1,0,-1)
    {
    }
   0.datalabel([1062,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1062,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1062,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1062,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1080,270],0,142533760,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1080,234],0,142534168,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([540,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([396,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([648,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([738,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([234,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([162,288],0,0,-1)
    {
    }
   -Wire-([162,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([234,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([180,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([288,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([234,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([234,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([234,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([234,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([306,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([882,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([792,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([918,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([792,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([918,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([810,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([864,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([864,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([864,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([864,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([864,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([936,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([612,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([612,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([612,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([576,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([450,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([468,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([576,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([522,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([522,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([522,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([108,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([108,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([108,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([144,702],0,142544776,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([144,738],0,142545184,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([144,774],0,142545592,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([144,810],0,142546408,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([144,846],0,142547224,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([144,882],0,142548040,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([144,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([324,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [324,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142546408,"x1_1",0,1,,)
     Curve(142547224,"x1_2",0,1,,)
     Curve(142548040,"x1_3",0,1,,)
     }
    }
   -Plot-([936,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [936,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142544776,"BRK1_1",0,1,,)
     Curve(142545184,"BRK1_2",0,1,,)
     Curve(142545592,"BRK1_3",0,1,,)
     }
    }
   -Plot-([954,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [954,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142534168,"inI1",0,1,,)
     Curve(142533760,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([396,198],0,0,-1)
    {
    Name = "T13_10"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,198],0,0,-1)
    {
    Name = "T13_11"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([504,288],0,0,-1)
    {
    Name = "T13_6"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([630,288],0,0,-1)
    {
    Name = "T13_7"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,432],0,0,-1)
    {
    Name = "T13_2"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([468,522],0,0,-1)
    {
    Name = "T13_1"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([378,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([630,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([648,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([648,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([540,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([378,288],0,0,-1)
    {
    Name = "T13_8"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([738,288],0,0,-1)
    {
    Name = "T13_9"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([468,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([648,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([648,432],0,0,-1)
    {
    Name = "T13_3"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([540,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([612,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([612,522],0,0,-1)
    {
    Name = "T13_12"
    Date = 1397289546
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,342],0,0,-1)
    {
    Name = "T13_5"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,342],0,0,-1)
    {
    Name = "T13_4"
    Date = 1397289547
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([522,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower12")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower12")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([360,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([612,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([108,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([432,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([936,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([504,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([504,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([504,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([504,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([558,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([504,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([504,756],1,0,-1)
    {
    }
   0.datalabel([1026,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1026,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1026,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1026,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1044,270],0,142565584,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1044,234],0,142565992,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([504,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([360,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([612,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([702,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([198,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([126,288],0,0,-1)
    {
    }
   -Wire-([126,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([198,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([144,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([252,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([198,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([198,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([198,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([198,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([270,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([846,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([756,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([882,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([882,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([774,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([828,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([828,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([828,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([828,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([828,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([576,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([576,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([576,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([540,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([414,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([432,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([540,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([486,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([486,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([72,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([72,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([72,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([108,702],0,142580272,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,738],0,142580680,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,774],0,142581088,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([108,810],0,142581904,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([108,846],0,142582720,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([108,882],0,142583536,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([108,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([288,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [288,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142581904,"x1_1",0,1,,)
     Curve(142582720,"x1_2",0,1,,)
     Curve(142583536,"x1_3",0,1,,)
     }
    }
   -Plot-([900,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [900,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142580272,"BRK1_1",0,1,,)
     Curve(142580680,"BRK1_2",0,1,,)
     Curve(142581088,"BRK1_3",0,1,,)
     }
    }
   -Plot-([918,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [918,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142565992,"inI1",0,1,,)
     Curve(142565584,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([360,198],0,0,-1)
    {
    Name = "T12_10"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,198],0,0,-1)
    {
    Name = "T12_11"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([468,288],0,0,-1)
    {
    Name = "T12_6"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,288],0,0,-1)
    {
    Name = "T12_7"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,432],0,0,-1)
    {
    Name = "T12_2"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,522],0,0,-1)
    {
    Name = "T12_1"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([342,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([594,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([342,288],0,0,-1)
    {
    Name = "T12_8"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([702,288],0,0,-1)
    {
    Name = "T12_9"
    Date = 1397289544
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([612,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([612,432],0,0,-1)
    {
    Name = "T12_3"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([360,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([504,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([576,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([576,522],0,0,-1)
    {
    Name = "T12_12"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,342],0,0,-1)
    {
    Name = "T12_5"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,342],0,0,-1)
    {
    Name = "T12_4"
    Date = 1397289545
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([486,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower11")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower11")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([396,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([648,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([144,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([468,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([972,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([540,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([540,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([540,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([540,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([594,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([540,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([540,756],1,0,-1)
    {
    }
   0.datalabel([1062,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1062,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1062,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1062,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1080,270],0,142598632,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1080,234],0,142599040,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([540,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([396,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([648,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([738,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([234,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([162,288],0,0,-1)
    {
    }
   -Wire-([162,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([234,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([180,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([288,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([234,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([234,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([234,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([234,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([306,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([882,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([792,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([918,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([792,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([918,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([810,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([864,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([864,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([864,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([864,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([864,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([936,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([612,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([612,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([612,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([576,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([450,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([468,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([576,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([522,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([522,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([522,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([522,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([108,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([108,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([108,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([144,702],0,142605976,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([144,738],0,142606384,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([144,774],0,142606792,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([144,810],0,142607608,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([144,846],0,142608424,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([108,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([144,882],0,142609240,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([144,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([144,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([324,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [324,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142607608,"x1_1",0,1,,)
     Curve(142608424,"x1_2",0,1,,)
     Curve(142609240,"x1_3",0,1,,)
     }
    }
   -Plot-([936,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [936,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142605976,"BRK1_1",0,1,,)
     Curve(142606384,"BRK1_2",0,1,,)
     Curve(142606792,"BRK1_3",0,1,,)
     }
    }
   -Plot-([954,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [954,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142599040,"inI1",0,1,,)
     Curve(142598632,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([396,198],0,0,-1)
    {
    Name = "T11_10"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,198],0,0,-1)
    {
    Name = "T11_11"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([504,288],0,0,-1)
    {
    Name = "T11_6"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([630,288],0,0,-1)
    {
    Name = "T11_7"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,432],0,0,-1)
    {
    Name = "T11_2"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([468,522],0,0,-1)
    {
    Name = "T11_1"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([378,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([630,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([648,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([396,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([648,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([540,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([378,288],0,0,-1)
    {
    Name = "T11_8"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([738,288],0,0,-1)
    {
    Name = "T11_9"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([468,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([648,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([648,432],0,0,-1)
    {
    Name = "T11_3"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([540,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([612,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([612,522],0,0,-1)
    {
    Name = "T11_12"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,342],0,0,-1)
    {
    Name = "T11_5"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,342],0,0,-1)
    {
    Name = "T11_4"
    Date = 1397289543
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([522,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower10")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower10")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([360,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([612,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([108,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([432,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([936,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([504,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([504,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([504,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([504,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([558,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([504,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([504,756],1,0,-1)
    {
    }
   0.datalabel([1026,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1026,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1026,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1026,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1044,270],0,142623928,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1044,234],0,142624336,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([504,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([360,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([612,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([702,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([198,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([126,288],0,0,-1)
    {
    }
   -Wire-([126,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([198,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([144,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([252,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([198,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([198,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([198,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([198,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([270,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([846,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([756,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([882,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([882,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([774,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([828,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([828,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([828,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([828,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([828,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([576,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([576,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([576,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([540,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([414,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([432,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([540,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([486,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([486,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([72,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([72,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([72,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([108,702],0,142631272,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,738],0,142631680,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,774],0,142632088,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([108,810],0,142632904,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([108,846],0,142633720,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([108,882],0,142634536,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([108,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([288,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [288,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142632904,"x1_1",0,1,,)
     Curve(142633720,"x1_2",0,1,,)
     Curve(142634536,"x1_3",0,1,,)
     }
    }
   -Plot-([900,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [900,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142631272,"BRK1_1",0,1,,)
     Curve(142631680,"BRK1_2",0,1,,)
     Curve(142632088,"BRK1_3",0,1,,)
     }
    }
   -Plot-([918,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [918,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142624336,"inI1",0,1,,)
     Curve(142623928,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([360,198],0,0,-1)
    {
    Name = "T10_10"
    Date = 1397289540
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,198],0,0,-1)
    {
    Name = "T10_11"
    Date = 1397289540
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([468,288],0,0,-1)
    {
    Name = "T10_6"
    Date = 1397289540
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,288],0,0,-1)
    {
    Name = "T10_7"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,432],0,0,-1)
    {
    Name = "T10_2"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,522],0,0,-1)
    {
    Name = "T10_1"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([342,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([594,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([342,288],0,0,-1)
    {
    Name = "T10_8"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-54,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([702,288],0,0,-1)
    {
    Name = "T10_9"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([612,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([612,432],0,0,-1)
    {
    Name = "T10_3"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([360,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([504,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([576,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([576,522],0,0,-1)
    {
    Name = "T10_12"
    Date = 1397289541
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,342],0,0,-1)
    {
    Name = "T10_5"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,342],0,0,-1)
    {
    Name = "T10_4"
    Date = 1397289542
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([486,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower9")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower9")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([342,234],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([594,234],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([90,360],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([468,54],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([918,360],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([486,702],1,0,70)
    {
    Name = "inI7"
    }
   0.varrlc([486,810],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([486,756],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([486,738],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([540,810],0,0,100)
    {
    Name = "V7"
    }
   -Wire-([486,810],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([486,828],1,0,-1)
    {
    }
   0.datalabel([1008,306],0,0,-1)
    {
    Name = "inI7"
    }
   -Wire-([1008,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1008,342],0,0,-1)
    {
    Name = "V7"
    }
   -Wire-([1008,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1026,342],0,142649224,150)
    {
    Name = "V7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1026,306],0,142649632,160)
    {
    Name = "inI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([486,702],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([342,270],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([594,270],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([918,882],0)
    {
   Name = "mfiles7\\grounding_RRR7.m"
    }
   -Plot-([864,558],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [864,558]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142649632,"inI7",0,1,,)
     Curve(142649224,"V7",0,1,,)
     Curve(0,"outr7",0,1,,)
     }
    }
   0.breaker1([180,360],2,0,50)
    {
    NAME = "BRK7_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([108,360],0,0,-1)
    {
    }
   0.pin([234,360],0,0,-1)
    {
    }
   -Wire-([216,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([144,360],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,360],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([162,180],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([162,324],0,0,-1)
    {
    Name = "x7_1"
    }
   -Wire-([162,198],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([162,324],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([108,360],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([234,360],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([558,180],3,0,20)
    {
    NAME = "BRK7_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([558,108],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([468,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([558,144],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([522,252],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([396,180],0,0,-1)
    {
    Name = "x7_2"
    }
   -Wire-([414,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([522,252],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([558,216],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([810,360],2,0,60)
    {
    NAME = "BRK7_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([846,234],0,0,-1)
    {
    Vertex="0,0;18,0;18,126"
    }
   -Wire-([720,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([846,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([738,234],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([792,306],0,0,-1)
    {
    Name = "x7_3"
    }
   -Wire-([792,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([792,162],0,0,-1)
    {
    Name = "BRK7_3"
    }
   -Wire-([792,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([180,792],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([180,828],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([180,864],0,0,-1)
    {
    Name = "BRK7_3"
    }
   0.pgb([216,792],0,142655752,80)
    {
    Name = "BRK7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([216,828],0,142656160,90)
    {
    Name = "BRK7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([216,864],0,142656568,110)
    {
    Name = "BRK7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([180,900],0,0,-1)
    {
    Name = "x7_1"
    }
   0.pgb([216,900],0,142657384,120)
    {
    Name = "x7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([180,936],0,0,-1)
    {
    Name = "x7_2"
    }
   0.pgb([216,936],0,142658200,130)
    {
    Name = "x7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([180,972],0,0,-1)
    {
    Name = "x7_3"
    }
   0.pgb([216,972],0,142659016,140)
    {
    Name = "x7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([216,972],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([216,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([1008,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [1008,972]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142655752,"BRK7_1",0,1,,)
     Curve(142656160,"BRK7_2",0,1,,)
     Curve(142656568,"BRK7_3",0,1,,)
     }
    }
   .LPMinsulator([162,252],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([468,180],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([792,234],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([468,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([864,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Plot-([342,936],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [342,936]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(142657384,"x7_1",0,1,,)
     Curve(142658200,"x7_2",0,1,,)
     Curve(142659016,"x7_3",0,1,,)
     }
    }
   -TLine-([342,270],0,0,-1)
    {
    Name = "T9_10"
    Date = 1397210965
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,270],0,0,-1)
    {
    Name = "T9_11"
    Date = 1397210965
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([450,360],0,0,-1)
    {
    Name = "T9_6"
    Date = 1397210965
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,360],0,0,-1)
    {
    Name = "T9_7"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([342,504],0,0,-1)
    {
    Name = "T9_2"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([414,594],0,0,-1)
    {
    Name = "T9_1"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,360],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,360],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([576,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,414],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([594,342],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,342],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,414],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([594,576],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([486,594],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([324,360],0,0,-1)
    {
    Name = "T9_8"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([684,360],0,0,-1)
    {
    Name = "T9_9"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([594,504],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([594,504],0,0,-1)
    {
    Name = "T9_3"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([342,486],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,666],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([558,666],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([486,594],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([558,594],0,0,-1)
    {
    Name = "T9_12"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,414],0,0,-1)
    {
    Name = "T9_5"
    Date = 1397210966
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([342,414],0,0,-1)
    {
    Name = "T9_4"
    Date = 1397210967
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([252,360],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([684,360],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower8")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower8")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,216],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,216],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,342],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([450,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,342],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,684],1,0,70)
    {
    Name = "inI7"
    }
   0.varrlc([468,792],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,738],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,792],0,0,100)
    {
    Name = "V7"
    }
   -Wire-([468,792],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,810],1,0,-1)
    {
    }
   0.datalabel([990,288],0,0,-1)
    {
    Name = "inI7"
    }
   -Wire-([990,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([990,324],0,0,-1)
    {
    Name = "V7"
    }
   -Wire-([990,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1008,324],0,142674928,150)
    {
    Name = "V7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,288],0,142675336,160)
    {
    Name = "inI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,684],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([900,864],0)
    {
   Name = "mfiles7\\grounding_RRR7.m"
    }
   -Plot-([846,540],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [846,540]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142675336,"inI7",0,1,,)
     Curve(142674928,"V7",0,1,,)
     Curve(0,"outr7",0,1,,)
     }
    }
   0.breaker1([162,342],2,0,50)
    {
    NAME = "BRK7_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([90,342],0,0,-1)
    {
    }
   0.pin([216,342],0,0,-1)
    {
    }
   -Wire-([198,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([126,342],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([144,162],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([144,306],0,0,-1)
    {
    Name = "x7_1"
    }
   -Wire-([144,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([144,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([90,342],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([216,342],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([540,162],3,0,20)
    {
    NAME = "BRK7_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,90],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([450,108],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([504,234],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([378,162],0,0,-1)
    {
    Name = "x7_2"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,234],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([540,198],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([450,216],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([792,342],2,0,60)
    {
    NAME = "BRK7_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([702,216],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([828,216],0,0,-1)
    {
    Vertex="0,0;18,0;18,126"
    }
   -Wire-([702,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([828,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,216],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([774,288],0,0,-1)
    {
    Name = "x7_3"
    }
   -Wire-([774,288],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([774,144],0,0,-1)
    {
    Name = "BRK7_3"
    }
   -Wire-([774,162],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([162,774],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([162,810],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([162,846],0,0,-1)
    {
    Name = "BRK7_3"
    }
   0.pgb([198,774],0,142681456,80)
    {
    Name = "BRK7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([198,810],0,142681864,90)
    {
    Name = "BRK7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([198,846],0,142682272,110)
    {
    Name = "BRK7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,882],0,0,-1)
    {
    Name = "x7_1"
    }
   0.pgb([198,882],0,142683088,120)
    {
    Name = "x7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,918],0,0,-1)
    {
    Name = "x7_2"
    }
   0.pgb([198,918],0,142683904,130)
    {
    Name = "x7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([162,954],0,0,-1)
    {
    Name = "x7_3"
    }
   0.pgb([198,954],0,142684720,140)
    {
    Name = "x7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([198,954],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,918],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([198,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([990,954],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [990,954]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142681456,"BRK7_1",0,1,,)
     Curve(142681864,"BRK7_2",0,1,,)
     Curve(142682272,"BRK7_3",0,1,,)
     }
    }
   .LPMinsulator([144,234],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([450,162],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([774,216],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([450,72],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([846,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Plot-([324,918],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [324,918]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(142683088,"x7_1",0,1,,)
     Curve(142683904,"x7_2",0,1,,)
     Curve(142684720,"x7_3",0,1,,)
     }
    }
   -TLine-([324,252],0,0,-1)
    {
    Name = "T8_10"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,252],0,0,-1)
    {
    Name = "T8_11"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,342],0,0,-1)
    {
    Name = "T8_6"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,342],0,0,-1)
    {
    Name = "T8_7"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,486],0,0,-1)
    {
    Name = "T8_2"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,576],0,0,-1)
    {
    Name = "T8_1"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,558],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([306,342],0,0,-1)
    {
    Name = "T8_8"
    Date = 1397199427
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,342],0,0,-1)
    {
    Name = "T8_9"
    Date = 1397199428
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,486],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,486],0,0,-1)
    {
    Name = "T8_3"
    Date = 1397199428
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,468],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,576],0,0,-1)
    {
    Name = "T8_12"
    Date = 1397199428
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,396],0,0,-1)
    {
    Name = "T8_5"
    Date = 1397199428
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,396],0,0,-1)
    {
    Name = "T8_4"
    Date = 1397199428
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([450,270],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([234,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([666,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower0")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Text(0,6,"tower0")
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Text(-62,50,"G1")
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Text(-26,50,"G2")
   Pen(,,,A)
   Line(0,54,0,39)
   Text(10,50,"A")
   Pen(,,,B)
   Line(36,54,36,39)
   Text(46,50,"B")
   Pen(,,,C)
   Line(72,54,72,39)
   Text(82,50,"C")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([360,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([612,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([108,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([432,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([936,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([504,630],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([504,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([504,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([504,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([558,738],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([504,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([504,756],1,0,-1)
    {
    }
   0.datalabel([1026,234],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([1026,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1026,270],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([1026,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1044,270],0,142700632,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1044,234],0,142701040,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([504,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([360,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([612,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([702,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([198,198],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([126,288],0,0,-1)
    {
    }
   -Wire-([126,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([198,288],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([144,198],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([252,288],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([198,126],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([198,270],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([198,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([198,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([270,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([846,288],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([756,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([882,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([882,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([774,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([828,126],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([828,270],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([828,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([828,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([828,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([900,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([576,108],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([576,72],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([576,144],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([540,180],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([414,108],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([432,108],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([540,180],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([486,108],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([486,54],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([486,36],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([486,162],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([72,702],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([72,738],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([72,774],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([108,702],0,142708184,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,738],0,142708592,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,774],0,142709000,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,810],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([108,810],0,142709816,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,846],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([108,846],0,142710632,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,882],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([108,882],0,142711448,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([108,882],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([288,972],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [288,972]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142709816,"x1_1",0,1,,)
     Curve(142710632,"x1_2",0,1,,)
     Curve(142711448,"x1_3",0,1,,)
     }
    }
   -Plot-([900,882],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [900,882]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142708184,"BRK1_1",0,1,,)
     Curve(142708592,"BRK1_2",0,1,,)
     Curve(142709000,"BRK1_3",0,1,,)
     }
    }
   -Plot-([918,468],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [918,468]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142701040,"inI1",0,1,,)
     Curve(142700632,"V1",0,1,-2,)
     Curve(0,"outr1",0,1,,)
     }
    }
   -TLine-([360,198],0,0,-1)
    {
    Name = "T0_10"
    Date = 1397199414
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,198],0,0,-1)
    {
    Name = "T0_11"
    Date = 1397199414
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([468,288],0,0,-1)
    {
    Name = "T0_6"
    Date = 1397199414
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,288],0,0,-1)
    {
    Name = "T0_7"
    Date = 1397199414
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,432],0,0,-1)
    {
    Name = "T0_2"
    Date = 1397199414
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,522],0,0,-1)
    {
    Name = "T0_1"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([342,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([504,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([594,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([612,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([360,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([612,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([342,288],0,0,-1)
    {
    Name = "T0_8"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([702,288],0,0,-1)
    {
    Name = "T0_9"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([612,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([612,432],0,0,-1)
    {
    Name = "T0_3"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([360,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([504,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([576,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([576,522],0,0,-1)
    {
    Name = "T0_12"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([612,342],0,0,-1)
    {
    Name = "T0_5"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,342],0,0,-1)
    {
    Name = "T0_4"
    Date = 1397199415
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([486,198],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("tower5007")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(7,3,"tower7")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([288,198],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([540,198],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([36,324],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([414,18],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([864,324],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([432,666],1,0,70)
    {
    Name = "inI7"
    }
   0.varrlc([432,774],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([432,720],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([432,702],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([486,774],0,0,100)
    {
    Name = "V7"
    }
   -Wire-([432,774],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([432,792],1,0,-1)
    {
    }
   0.datalabel([954,270],0,0,-1)
    {
    Name = "inI7"
    }
   -Wire-([954,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([954,306],0,0,-1)
    {
    Name = "V7"
    }
   -Wire-([954,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([972,306],0,142746128,150)
    {
    Name = "V7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([972,270],0,142746536,160)
    {
    Name = "inI7"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([432,666],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([288,234],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,234],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([864,846],0)
    {
   Name = "mfiles7\\grounding_RRR7.m"
    }
   -Plot-([810,522],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [810,522]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142746536,"inI7",0,1,,)
     Curve(142746128,"V7",0,1,,)
     Curve(32193864,"outr7",0,1,,)
     }
    }
   0.breaker1([126,324],2,0,50)
    {
    NAME = "BRK7_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([54,324],0,0,-1)
    {
    }
   0.pin([180,324],0,0,-1)
    {
    }
   -Wire-([162,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([90,324],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([54,324],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([108,144],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([108,288],0,0,-1)
    {
    Name = "x7_1"
    }
   -Wire-([108,162],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([108,288],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([54,324],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([180,324],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([504,144],3,0,20)
    {
    NAME = "BRK7_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([504,72],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([414,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([504,108],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([468,216],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([342,144],0,0,-1)
    {
    Name = "x7_2"
    }
   -Wire-([360,144],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([468,216],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([504,180],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([414,198],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([756,324],2,0,60)
    {
    NAME = "BRK7_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([666,198],0,0,-1)
    {
    Vertex="0,0;0,126"
    }
   -Wire-([792,198],0,0,-1)
    {
    Vertex="0,0;18,0;18,126"
    }
   -Wire-([666,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([792,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([684,198],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([738,270],0,0,-1)
    {
    Name = "x7_3"
    }
   -Wire-([738,270],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([738,126],0,0,-1)
    {
    Name = "BRK7_3"
    }
   -Wire-([738,144],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([126,756],0,0,-1)
    {
    Name = "BRK7_1"
    }
   0.datalabel([126,792],0,0,-1)
    {
    Name = "BRK7_2"
    }
   0.datalabel([126,828],0,0,-1)
    {
    Name = "BRK7_3"
    }
   0.pgb([162,756],0,142752656,80)
    {
    Name = "BRK7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([162,792],0,142753064,90)
    {
    Name = "BRK7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([162,828],0,142753472,110)
    {
    Name = "BRK7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,864],0,0,-1)
    {
    Name = "x7_1"
    }
   0.pgb([162,864],0,142754288,120)
    {
    Name = "x7_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,900],0,0,-1)
    {
    Name = "x7_2"
    }
   0.pgb([162,900],0,142755104,130)
    {
    Name = "x7_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([126,936],0,0,-1)
    {
    Name = "x7_3"
    }
   0.pgb([162,936],0,142755920,140)
    {
    Name = "x7_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([162,936],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,900],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([162,756],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([954,936],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [954,936]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142752656,"BRK7_1",0,1,,)
     Curve(142753064,"BRK7_2",0,1,,)
     Curve(142753472,"BRK7_3",0,1,,)
     }
    }
   .LPMinsulator([108,216],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([414,144],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([738,198],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([414,54],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([810,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Plot-([288,900],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [288,900]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(142754288,"x7_1",0,1,,)
     Curve(142755104,"x7_2",0,1,,)
     Curve(142755920,"x7_3",0,1,,)
     }
    }
   -TLine-([288,234],0,0,-1)
    {
    Name = "T7_10"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([540,234],0,0,-1)
    {
    Name = "T7_11"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,324],0,0,-1)
    {
    Name = "T7_6"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([522,324],0,0,-1)
    {
    Name = "T7_7"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([288,468],0,0,-1)
    {
    Name = "T7_2"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([360,558],0,0,-1)
    {
    Name = "T7_1"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([270,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([396,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([522,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([540,378],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([540,306],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([288,306],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([288,378],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([540,540],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([432,558],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([270,324],0,0,-1)
    {
    Name = "T7_8"
    Date = 1397199425
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([630,324],0,0,-1)
    {
    Name = "T7_9"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([360,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([540,468],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([540,468],0,0,-1)
    {
    Name = "T7_3"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([288,450],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([432,630],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([504,630],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([432,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([504,558],0,0,-1)
    {
    Name = "T7_12"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([540,378],0,0,-1)
    {
    Name = "T7_5"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([288,378],0,0,-1)
    {
    Name = "T7_4"
    Date = 1397199426
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,252],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([198,324],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([630,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower5006")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(-1,1,"tower6")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,216],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,216],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,342],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([450,54],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,342],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,684],1,0,90)
    {
    Name = "inI6"
    }
   0.varrlc([468,792],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,738],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,792],0,0,130)
    {
    Name = "V6"
    }
   -Wire-([468,792],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,810],1,0,-1)
    {
    }
   0.datalabel([990,288],0,0,-1)
    {
    Name = "inI6"
    }
   -Wire-([990,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([990,324],0,0,-1)
    {
    Name = "V6"
    }
   -Wire-([990,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1008,324],0,142790600,150)
    {
    Name = "V6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,288],0,142791008,160)
    {
    Name = "inI6"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,684],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([774,810],0)
    {
   Name = "mfiles6\\grounding_RRR6.m"
    }
   -Plot-([882,504],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [882,504]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142791008,"inI6",0,1,,)
     Curve(142790600,"V6",0,1,,)
     Curve(32375144,"outr6",0,1,,)
     }
    }
   0.breaker1([162,342],2,0,50)
    {
    NAME = "BRK6_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([90,342],0,0,-1)
    {
    }
   0.pin([216,342],0,0,-1)
    {
    }
   -Wire-([198,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([126,342],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([144,162],0,0,-1)
    {
    Name = "BRK6_1"
    }
   0.datalabel([144,306],0,0,-1)
    {
    Name = "x6_1"
    }
   -Wire-([144,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([144,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([90,234],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([216,342],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([540,162],3,0,20)
    {
    NAME = "BRK6_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,90],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([450,108],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([504,234],0,0,-1)
    {
    Name = "BRK6_2"
    }
   0.datalabel([378,162],0,0,-1)
    {
    Name = "x6_2"
    }
   -Wire-([396,162],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,234],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([540,198],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([450,216],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([792,342],2,0,60)
    {
    NAME = "BRK6_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([702,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([828,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([774,306],0,0,-1)
    {
    Name = "x6_3"
    }
   -Wire-([774,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([774,162],0,0,-1)
    {
    Name = "BRK6_3"
    }
   -Wire-([774,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([702,234],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([828,234],0,0,-1)
    {
    Vertex="0,0;18,0;18,108"
    }
   0.datalabel([54,666],0,0,-1)
    {
    Name = "BRK6_1"
    }
   0.datalabel([54,702],0,0,-1)
    {
    Name = "BRK6_2"
    }
   0.datalabel([54,738],0,0,-1)
    {
    Name = "BRK6_3"
    }
   0.pgb([90,666],0,142797128,70)
    {
    Name = "BRK6_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([90,702],0,142797536,80)
    {
    Name = "BRK6_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([90,738],0,142797944,100)
    {
    Name = "BRK6_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([54,774],0,0,-1)
    {
    Name = "x6_1"
    }
   0.pgb([90,774],0,142798760,110)
    {
    Name = "x6_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([54,810],0,0,-1)
    {
    Name = "x6_2"
    }
   0.pgb([90,810],0,142799576,120)
    {
    Name = "x6_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([54,846],0,0,-1)
    {
    Name = "x6_3"
    }
   0.pgb([90,846],0,142800392,140)
    {
    Name = "x6_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([90,846],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,810],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,774],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,738],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,702],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([90,666],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([216,900],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [216,900]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142798760,"x6_1",0,1,,)
     Curve(142799576,"x6_2",0,1,,)
     Curve(142800392,"x6_3",0,1,,)
     }
    }
   -Plot-([882,846],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [882,846]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142797128,"BRK6_1",0,1,,)
     Curve(142797536,"BRK6_2",0,1,,)
     Curve(142797944,"BRK6_3",0,1,,)
     }
    }
   .LPMinsulator([144,234],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([450,162],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([774,234],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([90,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([846,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,72],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([324,252],0,0,-1)
    {
    Name = "T6_10"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,252],0,0,-1)
    {
    Name = "T6_11"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,342],0,0,-1)
    {
    Name = "T6_6"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,342],0,0,-1)
    {
    Name = "T6_7"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,486],0,0,-1)
    {
    Name = "T6_2"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,576],0,0,-1)
    {
    Name = "T6_1"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,558],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([306,342],0,0,-1)
    {
    Name = "T6_8"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,342],0,0,-1)
    {
    Name = "T6_9"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,486],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,486],0,0,-1)
    {
    Name = "T6_3"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,468],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,576],0,0,-1)
    {
    Name = "T6_12"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,396],0,0,-1)
    {
    Name = "T6_5"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,396],0,0,-1)
    {
    Name = "T6_4"
    Date = 1397199424
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([234,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([450,270],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([666,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower5005")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(5,4,"tower5")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([306,198],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([558,198],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([54,324],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([432,18],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([882,324],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([450,666],1,0,80)
    {
    Name = "inI5"
    }
   0.varrlc([450,774],5,0,-1)
    {
    RLC = "0"
    R = "80"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([450,720],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([450,702],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([504,774],0,0,120)
    {
    Name = "V5"
    }
   -Wire-([450,774],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([450,792],1,0,-1)
    {
    }
   0.datalabel([972,270],0,0,-1)
    {
    Name = "inI5"
    }
   -Wire-([972,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([972,306],0,0,-1)
    {
    Name = "V5"
    }
   -Wire-([972,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([990,306],0,142816304,150)
    {
    Name = "V5"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([990,270],0,142816712,160)
    {
    Name = "inI5"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([450,666],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([306,234],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([558,234],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([792,846],0)
    {
   Name = "mfiles5\\grounding_RRR5.m"
    }
   -Plot-([810,486],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,288]
    Posn = [810,486]
    Icon = [-1,-1]
    Extents = 0,0,540,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,225],"y")
     {
     Options = 129
     Units = ""
     Curve(142816712,"inI5",0,1,,)
     Curve(142816304,"V5",0,1,,)
     Curve(32550520,"outr5",0,1,,)
     }
    }
   0.breaker1([144,324],2,0,50)
    {
    NAME = "BRK5_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([72,324],0,0,-1)
    {
    }
   0.pin([198,324],0,0,-1)
    {
    }
   -Wire-([180,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([108,324],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([126,144],0,0,-1)
    {
    Name = "BRK5_1"
    }
   0.datalabel([126,288],0,0,-1)
    {
    Name = "x5_1"
    }
   -Wire-([126,162],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([126,288],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([72,216],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([198,324],0,0,-1)
    {
    Vertex="0,0;0,-108;-18,-108"
    }
   0.breaker1([522,144],3,0,20)
    {
    NAME = "BRK5_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([522,72],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([432,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([522,108],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([486,216],0,0,-1)
    {
    Name = "BRK5_2"
    }
   0.datalabel([360,144],0,0,-1)
    {
    Name = "x5_2"
    }
   -Wire-([378,144],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([486,216],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([522,180],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([432,198],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([774,324],2,0,60)
    {
    NAME = "BRK5_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([684,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([810,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([702,216],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([756,288],0,0,-1)
    {
    Name = "x5_3"
    }
   -Wire-([756,288],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([756,144],0,0,-1)
    {
    Name = "BRK5_3"
    }
   -Wire-([684,216],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([810,216],0,0,-1)
    {
    Vertex="0,0;18,0;18,108"
    }
   -Wire-([756,162],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.datalabel([90,684],0,0,-1)
    {
    Name = "BRK5_1"
    }
   0.datalabel([90,720],0,0,-1)
    {
    Name = "BRK5_2"
    }
   0.datalabel([90,756],0,0,-1)
    {
    Name = "BRK5_3"
    }
   0.pgb([126,684],0,142822832,70)
    {
    Name = "BRK5_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,720],0,142823240,90)
    {
    Name = "BRK5_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([126,756],0,142823648,100)
    {
    Name = "BRK5_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,792],0,0,-1)
    {
    Name = "x5_1"
    }
   0.pgb([126,792],0,142824464,110)
    {
    Name = "x5_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,828],0,0,-1)
    {
    Name = "x5_2"
    }
   0.pgb([126,828],0,142825280,130)
    {
    Name = "x5_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([90,864],0,0,-1)
    {
    Name = "x5_3"
    }
   0.pgb([126,864],0,142826096,140)
    {
    Name = "x5_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([126,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,756],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,720],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,684],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([306,954],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [306,954]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142824464,"x5_1",0,1,,)
     Curve(142825280,"x5_2",0,1,,)
     Curve(142826096,"x5_3",0,1,,)
     }
    }
   -Plot-([918,864],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [918,864]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142822832,"BRK5_1",0,1,,)
     Curve(142823240,"BRK5_2",0,1,,)
     Curve(142823648,"BRK5_3",0,1,,)
     }
    }
   .LPMinsulator([126,216],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([432,144],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([756,216],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([72,324],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([432,54],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([828,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([306,234],0,0,-1)
    {
    Name = "T5_10"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,234],0,0,-1)
    {
    Name = "T5_11"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([414,324],0,0,-1)
    {
    Name = "T5_6"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([540,324],0,0,-1)
    {
    Name = "T5_7"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([306,468],0,0,-1)
    {
    Name = "T5_2"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([378,558],0,0,-1)
    {
    Name = "T5_1"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([288,324],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([414,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([450,324],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([540,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([558,378],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([558,306],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([306,306],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([306,378],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([558,540],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([450,558],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([288,324],0,0,-1)
    {
    Name = "T5_8"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([648,324],0,0,-1)
    {
    Name = "T5_9"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([378,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([558,468],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([558,468],0,0,-1)
    {
    Name = "T5_3"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,450],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([450,630],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([522,630],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([450,558],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([522,558],0,0,-1)
    {
    Name = "T5_12"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,378],0,0,-1)
    {
    Name = "T5_5"
    Date = 1397199422
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([306,378],0,0,-1)
    {
    Name = "T5_4"
    Date = 1397199423
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([432,252],0,0,-1)
    {
    Vertex="0,0;0,72"
    }
   -Wire-([216,324],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([648,324],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   }
  }
 Module("tower5003")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(1,3,"tower3")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,216],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,216],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,342],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([414,90],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,342],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,684],1,0,130)
    {
    Name = "inI3"
    }
   0.varrlc([468,792],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,738],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,720],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,792],0,0,140)
    {
    Name = "V3"
    }
   -Wire-([468,792],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,810],1,0,-1)
    {
    }
   0.datalabel([1152,306],0,0,-1)
    {
    Name = "inI3"
    }
   -Wire-([1152,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1152,342],0,0,-1)
    {
    Name = "V3"
    }
   -Wire-([1152,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1170,342],0,142842008,150)
    {
    Name = "V3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1170,306],0,142842416,160)
    {
    Name = "inI3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,684],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.breaker1([162,342],2,0,50)
    {
    NAME = "BRK3_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([90,342],0,0,-1)
    {
    }
   0.pin([216,342],0,0,-1)
    {
    }
   -Wire-([198,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([126,342],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([144,162],0,0,-1)
    {
    Name = "BRK3_1"
    }
   0.datalabel([144,306],0,0,-1)
    {
    Name = "x3_1"
    }
   -Wire-([144,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([144,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([198,234],0,0,-1)
    {
    Vertex="0,0;18,0;18,108"
    }
   -Wire-([90,342],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   0.breaker1([540,180],3,0,20)
    {
    NAME = "BRK3_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,108],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([450,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([540,144],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([504,252],0,0,-1)
    {
    Name = "BRK3_2"
    }
   0.datalabel([378,180],0,0,-1)
    {
    Name = "x3_2"
    }
   -Wire-([396,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,252],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([540,216],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   -Wire-([450,234],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.breaker1([792,342],2,0,60)
    {
    NAME = "BRK3_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([702,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([828,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,234],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([774,162],0,0,-1)
    {
    Name = "BRK3_3"
    }
   0.datalabel([774,306],0,0,-1)
    {
    Name = "x3_3"
    }
   -Wire-([774,180],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([774,306],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([810,234],0,0,-1)
    {
    Vertex="0,0;36,0;36,108"
    }
   -Wire-([702,234],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   0.datalabel([1134,414],0,0,-1)
    {
    Name = "BRK3_1"
    }
   0.datalabel([1134,450],0,0,-1)
    {
    Name = "BRK3_2"
    }
   0.datalabel([1134,486],0,0,-1)
    {
    Name = "BRK3_3"
    }
   0.pgb([1170,414],0,142848536,70)
    {
    Name = "BRK3_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1170,450],0,142848944,80)
    {
    Name = "BRK3_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1170,486],0,142849352,90)
    {
    Name = "BRK3_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1134,522],0,0,-1)
    {
    Name = "x3_1"
    }
   0.pgb([1170,522],0,142850168,100)
    {
    Name = "x3_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1134,558],0,0,-1)
    {
    Name = "x3_2"
    }
   0.pgb([1170,558],0,142850984,110)
    {
    Name = "x3_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([1134,594],0,0,-1)
    {
    Name = "x3_3"
    }
   0.pgb([1170,594],0,142851800,120)
    {
    Name = "x3_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([1170,594],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1170,558],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1170,522],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1170,486],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1170,450],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([1170,414],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   .LPMinsulator([144,234],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([450,180],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   .LPMinsulator([774,234],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([90,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([450,90],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([846,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -TLine-([324,252],0,0,-1)
    {
    Name = "T3_10"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,252],0,0,-1)
    {
    Name = "T3_11"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,342],0,0,-1)
    {
    Name = "T3_6"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,342],0,0,-1)
    {
    Name = "T3_7"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,486],0,0,-1)
    {
    Name = "T3_2"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,576],0,0,-1)
    {
    Name = "T3_1"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,342],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,342],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,324],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,396],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,558],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([306,342],0,0,-1)
    {
    Name = "T3_8"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,342],0,0,-1)
    {
    Name = "T3_9"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,486],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,486],0,0,-1)
    {
    Name = "T3_3"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,468],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,648],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,576],0,0,-1)
    {
    Name = "T3_12"
    Date = 1397199420
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,396],0,0,-1)
    {
    Name = "T3_5"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,396],0,0,-1)
    {
    Name = "T3_4"
    Date = 1397199421
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([234,342],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([666,342],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([450,288],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   }
  }
 Module("tower5002")
  {
  Desc = ""
  FileDate = 1400588732
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(0,2,"tower2")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([342,162],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([594,162],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([90,288],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([378,36],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([918,288],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([486,630],1,0,80)
    {
    Name = "inI2"
    }
   0.varrlc([486,738],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([486,684],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([486,666],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([540,738],0,0,120)
    {
    Name = "V2"
    }
   -Wire-([486,738],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([486,756],1,0,-1)
    {
    }
   0.datalabel([1008,234],0,0,-1)
    {
    Name = "inI2"
    }
   -Wire-([1008,234],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([1008,270],0,0,-1)
    {
    Name = "V2"
    }
   -Wire-([1008,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1026,270],0,142867712,150)
    {
    Name = "V2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1026,234],0,142868120,160)
    {
    Name = "inI2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([486,630],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([342,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -SrcFile-([738,792],0)
    {
   Name = "mfiles2\\grounding_RRR2.m"
    }
   0.breaker1([180,288],2,0,50)
    {
    NAME = "BRK2_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   0.pin([108,288],0,0,-1)
    {
    }
   0.pin([234,288],0,0,-1)
    {
    }
   -Wire-([216,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([144,288],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.datalabel([162,108],0,0,-1)
    {
    Name = "BRK2_1"
    }
   0.datalabel([162,252],0,0,-1)
    {
    Name = "x2_1"
    }
   -Wire-([162,126],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([162,252],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([108,288],0,0,-1)
    {
    Vertex="0,0;0,-108"
    }
   -Wire-([216,180],0,0,-1)
    {
    Vertex="0,0;18,0;18,108"
    }
   .LPMinsulator([162,180],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([108,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([810,288],2,0,60)
    {
    NAME = "BRK2_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([720,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([846,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([738,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([792,108],0,0,-1)
    {
    Name = "BRK2_3"
    }
   0.datalabel([792,252],0,0,-1)
    {
    Name = "x2_3"
    }
   -Wire-([792,126],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([792,252],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([720,180],0,0,-1)
    {
    Vertex="0,0;0,108"
    }
   -Wire-([828,180],0,0,-1)
    {
    Vertex="0,0;36,0;36,108"
    }
   .LPMinsulator([792,180],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([918,288],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   0.breaker1([558,126],3,0,20)
    {
    NAME = "BRK2_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([558,54],0,0,-1)
    {
    Vertex="0,0;0,-18;-90,-18"
    }
   -Wire-([468,72],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([558,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.datalabel([522,198],0,0,-1)
    {
    Name = "BRK2_2"
    }
   -Wire-([414,126],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([522,198],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   -Wire-([558,162],0,0,-1)
    {
    Vertex="0,0;0,72;-90,72"
    }
   .LPMinsulator([468,126],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.datalabel([396,126],0,0,-1)
    {
    Name = "x2_2"
    }
   -Wire-([468,36],0,0,-1)
    {
    Vertex="0,0;-90,0"
    }
   -Wire-([468,180],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   -Wire-([468,234],0,0,-1)
    {
    Vertex="0,0;0,54"
    }
   0.datalabel([72,648],0,0,-1)
    {
    Name = "BRK2_1"
    }
   0.datalabel([72,684],0,0,-1)
    {
    Name = "BRK2_2"
    }
   0.datalabel([72,720],0,0,-1)
    {
    Name = "BRK2_3"
    }
   0.pgb([108,648],0,142875464,70)
    {
    Name = "BRK2_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,684],0,142875872,90)
    {
    Name = "BRK2_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([108,720],0,142876280,100)
    {
    Name = "BRK2_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,756],0,0,-1)
    {
    Name = "x2_1"
    }
   0.pgb([108,756],0,142877096,110)
    {
    Name = "x2_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,792],0,0,-1)
    {
    Name = "x2_2"
    }
   0.pgb([108,792],0,142877912,130)
    {
    Name = "x2_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([72,828],0,0,-1)
    {
    Name = "x2_3"
    }
   0.pgb([108,828],0,142878728,140)
    {
    Name = "x2_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([108,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,756],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,720],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,684],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([108,648],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([288,918],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [288,918]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142877096,"x2_1",0,1,,)
     Curve(142877912,"x2_2",0,1,,)
     Curve(142878728,"x2_3",0,1,,)
     }
    }
   -Plot-([900,828],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [900,828]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142875464,"BRK2_1",0,1,,)
     Curve(142875872,"BRK2_2",0,1,,)
     Curve(142876280,"BRK2_3",0,1,,)
     }
    }
   -Plot-([792,432],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,324]
    Posn = [792,432]
    Icon = [-1,-1]
    Extents = 0,0,522,324
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,261],"y")
     {
     Options = 129
     Units = ""
     Curve(142868120,"inI2",0,1,,)
     Curve(142867712,"V2",0,1,,)
     Curve(33096848,"outr2",0,1,,)
     }
    }
   -TLine-([342,198],0,0,-1)
    {
    Name = "T2_10"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,36;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,198],0,0,-1)
    {
    Name = "T2_11"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([450,288],0,0,-1)
    {
    Name = "T2_6"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,288],0,0,-1)
    {
    Name = "T2_7"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([342,432],0,0,-1)
    {
    Name = "T2_2"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([414,522],0,0,-1)
    {
    Name = "T2_1"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,288],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([450,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([576,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([594,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,270],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([342,342],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([594,504],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([486,522],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([324,288],0,0,-1)
    {
    Name = "T2_8"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([684,288],0,0,-1)
    {
    Name = "T2_9"
    Date = 1397199418
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([414,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([594,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([594,432],0,0,-1)
    {
    Name = "T2_3"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([342,414],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([486,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([558,594],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([486,522],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([558,522],0,0,-1)
    {
    Name = "T2_12"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([594,342],0,0,-1)
    {
    Name = "T2_5"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([342,342],0,0,-1)
    {
    Name = "T2_4"
    Date = 1397199419
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([252,288],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([684,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([594,198],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   }
  }
 Module("tower5001")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Electrical("G1",-72,54)
    {
    }
   Electrical("G2",-36,54)
    {
    }
   Electrical("A",0,54)
    {
    }
   Electrical("B",36,54)
    {
    }
   Electrical("C",72,54)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-93,-39,93,39)
   Pen(ByNode,ByNode,ByNode,G1)
   Line(-72,54,-72,39)
   Pen(,,,G2)
   Line(-36,54,-36,39)
   Pen(,,,A)
   Line(0,54,0,39)
   Pen(,,,B)
   Line(36,54,36,39)
   Pen(,,,C)
   Line(72,54,72,39)
   Text(-62,50,"G1")
   Text(-26,50,"G2")
   Text(10,50,"A")
   Text(46,50,"B")
   Text(82,50,"C")
   Text(-3,1,"tower1")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.xnode([324,144],0,0,-1)
    {
    Name = "G1"
    }
   0.xnode([576,144],0,0,-1)
    {
    Name = "G2"
    }
   0.xnode([72,270],0,0,-1)
    {
    Name = "A"
    }
   0.xnode([396,18],0,0,-1)
    {
    Name = "B"
    }
   0.xnode([900,270],0,0,-1)
    {
    Name = "C"
    }
   0.ammeter([468,612],1,0,70)
    {
    Name = "inI1"
    }
   0.varrlc([468,720],5,0,-1)
    {
    RLC = "0"
    R = "10"
    L = "1.0 [H]"
    C = "1.0 [uF]"
    E = "0.0 [kV]"
    I = ""
    }
   -Wire-([468,666],0,0,-1)
    {
    Vertex="0,0;54,0;54,54"
    }
   -Wire-([468,648],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.voltmetergnd([522,720],0,0,110)
    {
    Name = "V1"
    }
   -Wire-([468,720],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   0.ground([468,738],1,0,-1)
    {
    }
   0.datalabel([990,216],0,0,-1)
    {
    Name = "inI1"
    }
   -Wire-([990,216],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.datalabel([990,252],0,0,-1)
    {
    Name = "V1"
    }
   -Wire-([990,252],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pgb([1008,252],0,142893416,150)
    {
    Name = "V1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([1008,216],0,142893824,160)
    {
    Name = "inI1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([468,612],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([324,180],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([576,180],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([666,270],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .LPMinsulator([162,180],0,0,30)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   0.pin([90,270],0,0,-1)
    {
    }
   -Wire-([90,270],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.breaker1([162,270],2,0,50)
    {
    NAME = "BRK1_1"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([108,180],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,90"
    }
   -Wire-([216,270],0,0,-1)
    {
    Vertex="0,0;0,-90"
    }
   0.datalabel([162,108],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([162,252],0,0,-1)
    {
    Name = "x1_1"
    }
   -Wire-([162,126],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([162,252],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([234,270],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([126,270],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   0.breaker1([810,270],2,0,60)
    {
    NAME = "BRK1_3"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([720,180],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   -Wire-([846,180],0,0,-1)
    {
    Vertex="0,0;18,0;18,90"
    }
   -Wire-([720,270],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([846,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([738,180],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   0.datalabel([792,108],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.datalabel([792,252],0,0,-1)
    {
    Name = "x1_3"
    }
   -Wire-([792,126],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([792,252],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   .LPMinsulator([792,180],0,0,40)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([864,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.breaker1([540,90],3,0,20)
    {
    NAME = "BRK1_2"
    OPCUR = "0"
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
    BOpen = "2"
    }
   -Wire-([540,54],0,0,-1)
    {
    Vertex="0,0;0,-36;-90,-36"
    }
   -Wire-([540,126],0,0,-1)
    {
    Vertex="0,0;0,54;-90,54"
    }
   0.datalabel([504,162],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([378,90],0,0,-1)
    {
    Name = "x1_2"
    }
   -Wire-([396,90],0,0,-1)
    {
    Vertex="0,0;-18,0"
    }
   -Wire-([504,162],0,0,-1)
    {
    Vertex="0,0;0,-72"
    }
   .LPMinsulator([450,90],1,0,10)
    {
    Emin = "500 [kV/m]"
    VK1 = "170"
    VK2 = "0.0015"
    Gap = "5.24 [m]"
    }
   -Wire-([450,36],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([450,18],0,0,-1)
    {
    Vertex="0,0;-54,0"
    }
   -Wire-([450,144],0,0,-1)
    {
    Vertex="0,0;0,36"
    }
   0.datalabel([36,684],0,0,-1)
    {
    Name = "BRK1_1"
    }
   0.datalabel([36,720],0,0,-1)
    {
    Name = "BRK1_2"
    }
   0.datalabel([36,756],0,0,-1)
    {
    Name = "BRK1_3"
    }
   0.pgb([72,684],0,142900760,80)
    {
    Name = "BRK1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([72,720],0,142901168,90)
    {
    Name = "BRK1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.pgb([72,756],0,142901576,100)
    {
    Name = "BRK1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([36,792],0,0,-1)
    {
    Name = "x1_1"
    }
   0.pgb([72,792],0,142902392,120)
    {
    Name = "x1_1"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([36,828],0,0,-1)
    {
    Name = "x1_2"
    }
   0.pgb([72,828],0,142903208,130)
    {
    Name = "x1_2"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.datalabel([36,864],0,0,-1)
    {
    Name = "x1_3"
    }
   0.pgb([72,864],0,142904024,140)
    {
    Name = "x1_3"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   -Wire-([72,864],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([72,828],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([72,792],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([72,756],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([72,720],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Wire-([72,684],0,0,-1)
    {
    Vertex="0,0;-36,0"
    }
   -Plot-([252,954],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,522,252]
    Posn = [252,954]
    Icon = [-1,-1]
    Extents = 0,0,522,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,522,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142902392,"x1_1",0,1,,)
     Curve(142903208,"x1_2",0,1,,)
     Curve(142904024,"x1_3",0,1,,)
     }
    }
   -Plot-([864,864],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,540,252]
    Posn = [864,864]
    Icon = [-1,-1]
    Extents = 0,0,540,252
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,540,189],"y")
     {
     Options = 128
     Units = ""
     Curve(142900760,"BRK1_1",0,1,,)
     Curve(142901168,"BRK1_2",0,1,,)
     Curve(142901576,"BRK1_3",0,1,,)
     }
    }
   -Plot-([882,450],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,558,360]
    Posn = [882,450]
    Icon = [-1,-1]
    Extents = 0,0,558,360
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,558,297],"y")
     {
     Options = 129
     Units = ""
     Curve(142893824,"inI1",0,1,,)
     Curve(142893416,"V1",0,1,-2,)
     Curve(33222088,"outr1",0,1,,)
     }
    }
   -TLine-([324,180],0,0,-1)
    {
    Name = "T1_10"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,180],0,0,-1)
    {
    Name = "T1_11"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "2.72 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "150 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([432,270],0,0,-1)
    {
    Name = "T1_6"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([558,270],0,0,-1)
    {
    Name = "T1_7"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "9.3 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,414],0,0,-1)
    {
    Name = "T1_2"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([396,504],0,0,-1)
    {
    Name = "T1_1"
    Date = 1397199416
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "80 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([306,270],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   -Wire-([432,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([468,270],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([558,270],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([576,324],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,252],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([324,324],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   -Wire-([576,486],0,0,-1)
    {
    Vertex="0,0;-252,0"
    }
   -Wire-([468,504],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([306,270],0,0,-1)
    {
    Name = "T1_8"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;-36,0;-54,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([666,270],0,0,-1)
    {
    Name = "T1_9"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "1.7 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,0;-72,0;-72,0"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "247.36 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([396,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([576,414],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -TLine-([576,414],0,0,-1)
    {
    Name = "T1_3"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "6.4046 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "100 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([324,396],0,0,-1)
    {
    Vertex="0,0;0,18"
    }
   -Wire-([468,576],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([540,576],0,0,-1)
    {
    Vertex="0,0;-72,0"
    }
   -Wire-([468,504],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -TLine-([540,504],0,0,-1)
    {
    Name = "T1_12"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "19.215 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "720 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([576,324],0,0,-1)
    {
    Name = "T1_5"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -TLine-([324,324],0,0,-1)
    {
    Name = "T1_4"
    Date = 1397199417
    Freq = "50.0 [Hz]"
    Length = "5.24 [m]"
    Dim = 1
    Mode = 1
    Vertex="0,0;0,18;0,54;0,72"
    PageLayer(A/A4,Landscape,50,[651,363],5)
     {
     0.Line_Berg_Options([594,198],0,0,-1)
      {
      BDamp = "0"
      Interp1 = "1"
      F1 = "2000 [Hz]"
      TZ = "0.005 [ms]"
      TP = "0.005 [ms]"
      Inflen = "0"
      }
     0.Line_ManualYZ([414,396],0,0,-1)
      {
      NCond = "1"
      PU = "2"
      Estim = "0"
      REst = "10.458"
      ZEst = "1.932"
      TEst = "1.392"
      LONGLN = "0"
      VR = "230 [kV]"
      MVA = "100 [MVA]"
      RPUP = ".6861e-7 [pu/m]"
      XLPUP = ".951e-6 [pu/m]"
      XCPUP = ".571e6 [pu*m]"
      RPUZ = ".7175e-6 [pu/m]"
      XLPUZ = ".251e-5 [pu/m]"
      XCPUZ = ".793e6 [pu*m]"
      RPUZM = "1.0e-6 [pu/m]"
      XLPUZM = ".1e-5 [pu/m]"
      XCPUZM = ".756e6 [pu*m]"
      RP = ".36294e-4 [ohm/m]"
      XLP = ".5031e-3 [ohm/m]"
      XCP = "302.151 [Mohm*m]"
      RZ = ".37958e-3 [ohm/m]"
      XLZ = ".13277e-2 [ohm/m]"
      XCZ = "419.34 [Mohm*m]"
      RZM = ".295e-3 [ohm/m]"
      XLZM = ".10e-2 [ohm/m]"
      XCZM = "400.0 [Mohm*m]"
      RTP = ".36294e-4 [ohm/m]"
      TTP = "3.425049e-9 [s/m]"
      ZTP = "120 [ohm]"
      RTZ = ".37958e-3 [ohm/m]"
      TTZ = "4.767013e-9 [s/m]"
      ZTZ = "753.5955 [ohm]"
      RTZM = ".3e-4 [ohm/m]"
      TTZM = "4.0e-9 [s/m]"
      ZTZM = "600 [ohm]"
      VR2 = "230 [kV]"
      MVA2 = "100 [MVA]"
      RPUP2 = ".6861e-7 [pu/m]"
      XLPUP2 = ".951e-6 [pu/m]"
      BPUP2 = "1.75131e-6 [pu/m]"
      RPUZ2 = ".7175e-6 [pu/m]"
      XLPUZ2 = ".251e-5 [pu/m]"
      BPUZ2 = "1.26103e-6 [pu/m]"
      RPUZM2 = "1.0e-6 [pu/m]"
      XLPUZM2 = ".1e-5 [pu/m]"
      BPUZM2 = "1.32275e-6 [pu/m]"
      fname = "inputYZ.txt"
      path = "0"
      dformat = "0"
      }
     }
    }
   -Wire-([450,180],0,0,-1)
    {
    Vertex="0,0;0,90"
    }
   }
  }
 Module("lightning")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Input("Ip",-54,0)
    {
    Type = Real
    }
   Electrical("In",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Text(0,-13,"lightning")
   Pen(ByNode,ByNode,ByNode,Ip)
   Line(-54,0,-39,0)
   Pen(,Solid)
   Line(-39,0,-44,-5)
   Line(-39,0,-44,5)
   Text(-46,-4,"Ip")
   Pen(,ByNode,,In)
   Line(54,0,39,0)
   Text(46,-4,"In")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.import([594,342],0,0,30)
    {
    Name = "Ip"
    }
   0.xnode([378,126],0,0,-1)
    {
    Name = "In"
    }
   0.src_ccin_1([558,90],7,0,130)
    {
    Name = "Src"
    Cntrl = "1"
    Vm = "250 [kA]"
    f = "50.0 [Hz]"
    Ph = "0.0 [deg]"
    Tc = "1.0 [s]"
    }
   -Wire-([558,162],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([468,90],1,0,-1)
    {
    R = "300.0 [ohm]"
    }
   0.ground([468,126],1,0,-1)
    {
    }
   0.ground([558,162],1,0,-1)
    {
    }
   -Wire-([468,90],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([468,54],0,0,-1)
    {
    Vertex="0,0;90,0;90,36"
    }
   -Wire-([468,54],0,0,-1)
    {
    Vertex="0,0;-90,0;-90,72"
    }
   0.exp([432,288],0,0,70)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   0.sumjct([540,288],0,0,100)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "-1"
    G = "0"
    }
   0.exp([450,360],0,0,90)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   -Wire-([468,288],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([486,360],0,0,-1)
    {
    Vertex="0,0;54,0;54,-36"
    }
   0.time-sig([162,288],0,0,10)
    {
    }
   0.mult([360,288],0,0,60)
    {
    }
   0.const([324,342],0,0,20)
    {
    Name = ""
    Value = "-15000"
    }
   -Wire-([360,342],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   -Wire-([198,288],0,0,-1)
    {
    Vertex="0,0;126,0"
    }
   0.mult([378,360],0,0,80)
    {
    }
   -Wire-([234,288],0,0,-1)
    {
    Vertex="0,0;0,72;108,72"
    }
   0.const([342,414],0,0,50)
    {
    Name = ""
    Value = "-1860000"
    }
   -Wire-([378,414],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.mult([630,288],0,0,110)
    {
    }
   -Wire-([594,90],0,0,-1)
    {
    Vertex="0,0;216,0;216,198;162,198"
    }
   -Wire-([720,378],0,0,-1)
    {
    Vertex="0,0;0,-54"
    }
   0.div([720,288],0,0,120)
    {
    }
   0.const([684,378],0,0,40)
    {
    Name = ""
    Value = "0.9538"
    }
   -Wire-([576,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([666,288],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([630,342],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   }
  }
 Module("Lightning_1")
  {
  Desc = ""
  FileDate = 1400588731
  Nodes = 
   {
   Input("Ip",-54,0)
    {
    Type = Real
    }
   Electrical("surge",54,0)
    {
    }
   }

  Graphics = 
   {
   Rectangle(-39,-39,39,39)
   Pen(ByNode,ByNode,ByNode,Ip)
   Line(-54,0,-39,0)
   Pen(,Solid)
   Line(-39,0,-44,-5)
   Line(-39,0,-44,5)
   Pen(,ByNode,,surge)
   Line(54,0,39,0)
   Text(-46,-4,"Ip")
   Text(46,-4,"surge")
   Text(7,-1,"Lightning")
   }


  Page(A/A4,Landscape,16,[651,363],5)
   {
   0.import([360,144],0,0,10)
    {
    Name = "Ip"
    }
   0.xnode([756,90],0,0,-1)
    {
    Name = "surge"
    }
   0.pgb([1260,180],0,142729400,240)
    {
    Name = "s"
    Group = ""
    Display = "1"
    Scale = "1.0"
    Units = ""
    mrun = "0"
    Pol = "0"
    Min = "-2.0"
    Max = "2.0"
    }
   0.src_ccin_1([936,54],7,0,250)
    {
    Name = "Src"
    Cntrl = "1"
    Vm = "250 [kA]"
    f = "50.0 [Hz]"
    Ph = "0.0 [deg]"
    Tc = "1.0 [s]"
    }
   -Wire-([936,126],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.resistor([846,54],1,0,-1)
    {
    R = "300.0 [ohm]"
    }
   0.ground([846,90],1,0,-1)
    {
    }
   0.ground([936,126],1,0,-1)
    {
    }
   -Wire-([846,54],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   0.exp([990,306],0,0,150)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   0.const([360,504],0,0,70)
    {
    Name = "tau1"
    Value = "15000"
    }
   0.const([594,378],0,0,40)
    {
    Name = "tau2"
    Value = "1860000"
    }
   -Wire-([936,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.exp([990,216],0,0,200)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   0.sqrt([684,216],0,0,100)
    {
    Dim = "1"
    }
   0.sqrt([792,216],0,0,110)
    {
    Dim = "1"
    }
   0.div([504,342],0,0,140)
    {
    }
   0.mult([594,216],0,0,90)
    {
    }
   0.div([504,216],0,0,80)
    {
    }
   0.const([540,252],0,0,20)
    {
    Name = "n"
    Value = "3.0"
    }
   -Wire-([576,252],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([540,216],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([630,216],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([720,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.const([684,252],0,0,30)
    {
    Name = ""
    Value = "-1.0"
    }
   0.mult([792,252],0,0,180)
    {
    }
   -Wire-([540,342],0,0,-1)
    {
    Vertex="0,0;180,0;180,-54;252,-54"
    }
   -Wire-([720,252],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   0.mult([900,216],0,0,190)
    {
    }
   -Wire-([828,216],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([828,252],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([936,216],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.div([1044,180],0,0,210)
    {
    }
   -Wire-([1026,216],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.pin([648,378],0,0,-1)
    {
    }
   0.pin([432,504],0,0,-1)
    {
    }
   0.pin([468,504],0,0,-1)
    {
    }
   -Wire-([396,504],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,504],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([432,504],0,0,-1)
    {
    Vertex="0,0;0,-162;36,-162"
    }
   -Wire-([648,378],0,0,-1)
    {
    Vertex="0,0;0,36;-144,36;-144,0"
    }
   -Wire-([468,504],0,0,-1)
    {
    Vertex="0,0;0,-252;36,-252"
    }
   -Wire-([1080,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([972,54],0,0,-1)
    {
    Vertex="0,0;252,0;252,126"
    }
   -Wire-([468,216],0,0,-1)
    {
    Vertex="0,0;-18,0;-18,72;180,72;180,162"
    }
   -Wire-([630,378],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.mult([1152,180],0,0,230)
    {
    }
   -Wire-([1188,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1224,180],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([846,18],0,0,-1)
    {
    Vertex="0,0;90,0;90,36"
    }
   -Wire-([846,18],0,0,-1)
    {
    Vertex="0,0;-90,0;-90,72"
    }
   -Wire-([396,144],0,0,-1)
    {
    Vertex="0,0;54,0;54,36;612,36"
    }
   0.const([738,378],0,0,60)
    {
    Name = ""
    Value = "-1.0"
    }
   0.mult([774,306],0,0,120)
    {
    }
   -Wire-([774,378],0,0,-1)
    {
    Vertex="0,0;0,-36"
    }
   -Wire-([468,504],0,0,-1)
    {
    Vertex="0,0;396,0;396,-162"
    }
   -Wire-([810,306],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   -Wire-([900,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([648,378],0,0,-1)
    {
    Vertex="0,0;36,0;36,54;270,54"
    }
   -Wire-([828,306],0,0,-1)
    {
    Vertex="0,0;0,72;54,72"
    }
   -Wire-([918,432],0,0,-1)
    {
    Vertex="0,0;0,-18"
    }
   0.exp([1008,378],0,0,170)
    {
    Base = "1"
    A = "1"
    B = "1"
    COM = "Double Exponential"
    Dim = "1"
    }
   -Wire-([954,378],0,0,-1)
    {
    Vertex="0,0;18,0"
    }
   0.sumjct([1098,306],0,0,220)
    {
    DPath = "1"
    A = "0"
    B = "0"
    C = "0"
    D = "1"
    E = "0"
    F = "-1"
    G = "0"
    }
   -Wire-([1026,306],0,0,-1)
    {
    Vertex="0,0;36,0"
    }
   -Wire-([1044,378],0,0,-1)
    {
    Vertex="0,0;54,0;54,-36"
    }
   -Wire-([1134,306],0,0,-1)
    {
    Vertex="0,0;18,0;18,-90"
    }
   0.mult([864,306],0,0,130)
    {
    }
   0.mult([918,378],0,0,160)
    {
    }
   -Plot-([450,576],0)
    {
    Title = "$(GROUP) : Graphs"
    Draw = 1
    Area = [0,0,0,0]
    Posn = [450,576]
    Icon = [-1,-1]
    Extents = 0,0,576,288
    XLabel = " "
    AutoPan = "false,75"
    Graph([0,0],[0,0,576,225],"y")
     {
     Options = 128
     Units = ""
     Curve(142729400,"s",0,1,,)
     }
    }
   -Wire-([234,432],0,0,-1)
    {
    Vertex="0,0;72,0"
    }
   -Wire-([306,432],0,0,-1)
    {
    Vertex="0,0;0,-126;432,-126"
    }
   0.time-sig([198,432],0,0,50)
    {
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


  Page(E_JUMBO,Landscape,144,[651,363],5)
   {
   0.const([54,108],0,0,10)
    {
    Name = ""
    Value = "50"
    }
   -Wire-([90,108],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .Lightning_1([198,108],0,0,20)
    {
    }
   0.const([54,216],0,0,40)
    {
    Name = ""
    Value = "50"
    }
   -Wire-([90,216],0,0,-1)
    {
    Vertex="0,0;54,0"
    }
   .lightning([198,216],0,0,50)
    {
    }
   }
  }
 }

