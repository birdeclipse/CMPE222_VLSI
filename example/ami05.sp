*MOSIS file ami-c5/t62r-params.txt                                         
*                           MOSIS WAFER ACCEPTANCE TESTS
*                                          
*           RUN: T62R                                        VENDOR: AMIS
*     TECHNOLOGY: SCN05                                FEATURE SIZE: 0.5 microns
*                                   Run type: SKD
*
*
*INTRODUCTION: This report contains the lot average results obtained by MOSIS
*              from measurements of MOSIS test structures on each wafer of
*              this fabrication lot. SPICE parameters obtained from similar
*             measurements on a selected wafer are also attached.
*
*COMMENTS: American Microsystems, Inc. C5
*
*
*TRANSISTOR PARAMETERS     W/L      N-CHANNEL P-CHANNEL  UNITS
*                                                       
* MINIMUM                  3.0/0.6                      
*  Vth                                   0.75     -0.93  volts
*                                                       
* SHORT                    20.0/0.6                     
*  Idss                                460      -246     uA/um
*  Vth                                   0.64     -0.90  volts
*  Vpt                                  10.0     -10.0   volts
*                                                       
* WIDE                     20.0/0.6                     
*  Ids0                                < 2.5     < 2.5   pA/um
*                                                       
* LARGE                    50/50                        
*  Vth                                   0.65     -0.96  volts
*  Vjbkd                                10.9     -11.7   volts
*  Ijlk                                <50.0     <50.0   pA
*  Gamma                                 0.49      0.57  V^0.5
                                                       
* K' (Uo*Cox/2)                         55.1     -18.5   uA/V^2
* Low-field Mobility                   449.98    151.08  cm^2/V*s
                                                       
*COMMENTS: Poly bias varies with design technology. To account for mask
*           bias use the appropriate value for the parameter XL in your
*           SPICE model card.
*                       Design Technology                   XL (um)  XW (um)
*                       -----------------                   -------  ------
*                       SCMOS_SUBM (lambda=0.30)             0.10     0.00
*                       SCMOS (lambda=0.35)                  0.00     0.20
*
*
*FOX TRANSISTORS           GATE      N+ACTIVE  P+ACTIVE  UNITS
* Vth                      Poly        >15.0    <-15.0   volts
*
*
*
*PROCESS PARAMETERS     N+     P+     POLY  PLY2_HR  POLY2   M1    M2   UNITS
* Sheet Resistance      81.6  104.1  22.8   1058     41.5   0.09  0.09  ohms/sq
* Contact Resistance    61.5  160.2  16.6            27.7         0.92  ohms
* Gate Oxide Thickness 141                                              angstrom
*                                                                      
*PROCESS PARAMETERS             M3   N\PLY      N_W      UNITS
* Sheet Resistance             0.05    841       832     ohms/sq
* Contact Resistance           0.96                      ohms
*                                                       
*COMMENTS: N\POLY is N-well under polysilicon.
*
*
*CAPACITANCE PARAMETERS   N+   P+   POLY   POLY2   M1   M2   M3   N_W    UNITS
* Area (substrate)       429  729    85            32   17   10     39   aF/um^2
* Area (N+active)                  2441            37   17   12          aF/um^2
* Area (P+active)                  2342                                  aF/um^2
* Area (poly)                              912     60   17    9          aF/um^2
* Area (poly2)                                     54                    aF/um^2
* Area (metal1)                                         36   13          aF/um^2
* Area (metal2)                                              32          aF/um^2
* Fringe (substrate)     348  281                  72   52   39          aF/um
* Fringe (poly)                                    68   40   28          aF/um
* Fringe (metal1)                                       57   34          aF/um
* Fringe (metal2)                                            47          aF/um
* Overlap (N+active)                204                                  aF/um
* Overlap (P+active)                232                                  aF/um
*                                                                       
*
*
*CIRCUIT PARAMETERS                            UNITS      
* Inverters                     K                         
*  Vinv                        1.0       1.99  volts      
*  Vinv                        1.5       2.24  volts      
*  Vol (100 uA)                2.0       0.12  volts      
*  Voh (100 uA)                2.0       4.86  volts      
*  Vinv                        2.0       2.43  volts      
*  Gain                        2.0     -19.16             
* Ring Oscillator Freq.                                   
*  DIV256 (31-stg,5.0V)                 96.84  MHz        
*  D256_WIDE (31-stg,5.0V)             148.91  MHz        
* Ring Oscillator Power                                   
*  DIV256 (31-stg,5.0V)                  0.50  uW/MHz/gate
*  D256_WIDE (31-stg,5.0V)               1.02  uW/MHz/gate
*                                                         
*COMMENTS: SUBMICRON

* T62R SPICE BSIM3 VERSION 3.1 PARAMETERS

*SPICE 3f5 Level 8, Star-HSPICE Level 49, UTMOST Level 8

* DATE: May  5/06
* LOT: T62R                  WAF: 3103
* Temperature_parameters=Default
.MODEL nfet NMOS (                                LEVEL   = 8
+VERSION = 3.1            TNOM    = 27             TOX     = 1.41E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6300731
+K1      = 0.8852853      K2      = -0.0996648     K3      = 22.3534891
+K3B     = -8.2980719     W0      = 1.064539E-8    NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3526745      DVT1    = 0.4326871      DVT2    = -0.1022202
+U0      = 465.6211495    UA      = 7.062414E-13   UB      = 1.854404E-18
+UC      = 1.152914E-12   VSAT    = 1.85404E5      A0      = 0.6183047
+AGS     = 0.1258366      B0      = 2.431986E-6    B1      = 5E-6
+KETA    = -2.494134E-3   A1      = 1.968338E-6    A2      = 0.3186979
+RDSW    = 1.406898E3     PRWG    = 0.0310342      PRWB    = -4.027956E-3
+WR      = 1              WINT    = 2.332547E-7    LINT    = 7.479243E-8
* Should ignore this, but we will.
*+XL      = 1E-7           XW      = 0
+DWG     = -7.728214E-9
+DWB     = 2.675245E-8    VOFF    = -0.0268668     NFACTOR = 0.8055587
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 2.884717E-3    ETAB    = 6.382743E-5
+DSUB    = 0.0776939      PCLM    = 2.583688       PDIBLC1 = 1
+PDIBLC2 = 2.155457E-3    PDIBLCB = -0.0868504     DROUT   = 0.9812272
+PSCBE1  = 6.572719E8     PSCBE2  = 2.684421E-4    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.6           MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.04E-10       CGSO    = 2.04E-10       CGBO    = 1E-9
+CJ      = 4.280589E-4    PB      = 0.9150202      MJ      = 0.4341527
+CJSW    = 3.259371E-10   PBSW    = 0.8            MJSW    = 0.1931438
+CJSWG   = 1.64E-10       PBSWG   = 0.8            MJSWG   = 0.1931438
+CF      = 0              PVTH0   = 0.0598968      PRDSW   = 104.5179148
+PK2     = -0.0253518     WKETA   = -0.0181179     LKETA   = 3.548703E-3     )
*
.MODEL pfet PMOS (                                LEVEL   = 8
+VERSION = 3.1            TNOM    = 27             TOX     = 1.41E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9435456
+K1      = 0.5419233      K2      = 7.625821E-3    K3      = 6.3631192
+K3B     = -0.6421575     W0      = 1.285927E-8    NLX     = 4.569437E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 1.9990597      DVT1    = 0.49267        DVT2    = -0.1162218
+U0      = 228.7987742    UA      = 3.339839E-9    UB      = 1.144024E-21
+UC      = -5.33128E-11   VSAT    = 1.573126E5     A0      = 0.8930542
+AGS     = 0.1450022      B0      = 6.218861E-7    B1      = 5E-6
+KETA    = -1.627332E-3   A1      = 0              A2      = 0.3300992
+RDSW    = 3E3            PRWG    = -0.0410853     PRWB    = -0.0208211
+WR      = 1              WINT    = 2.599548E-7    LINT    = 1.039191E-7
* Should ignore this, but we will.
*+XL      = 1E-7           XW      = 0
+DWG     = -1.561026E-8
+DWB     = 2.118769E-8    VOFF    = -0.0787136     NFACTOR = 0.7897181
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.5920375      ETAB    = -0.0679506
+DSUB    = 1              PCLM    = 2.1059313      PDIBLC1 = 0.0202837
+PDIBLC2 = 2.81498E-3     PDIBLCB = -0.0559708     DROUT   = 0.1424302
+PSCBE1  = 1.85276E10     PSCBE2  = 1.750528E-9    PVAG    = 0.0111582
+DELTA   = 0.01           RSH     = 104.1          MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.32E-10       CGSO    = 2.32E-10       CGBO    = 1E-9
+CJ      = 7.259003E-4    PB      = 0.9610303      MJ      = 0.4979233
+CJSW    = 2.916581E-10   PBSW    = 0.99           MJSW    = 0.307116
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.307116
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 9.34556E-4     LKETA   = -1.917735E-3    )

* END OF FILE
