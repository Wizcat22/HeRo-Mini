<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="HeRo" urn="urn:adsk.eagle:library:4344731">
<packages>
<package name="QFP80P1200X1200X120-44" urn="urn:adsk.eagle:footprint:6356641/1" library_version="4">
<description>44-QFP, 0.80 mm pitch, 12.00 mm span, 10.00 X 10.00 X 1.20 mm body
&lt;p&gt;44-pin QFP package with 0.80 mm pitch, 12.00 mm lead span1 X 12.00 mm lead span2 with body size 10.00 X 10.00 X 1.20 mm&lt;/p&gt;</description>
<circle x="-5.7656" y="4.7775" radius="0.25" width="0" layer="21"/>
<wire x1="-5.05" y1="4.5275" x2="-5.05" y2="5.05" width="0.12" layer="21"/>
<wire x1="-5.05" y1="5.05" x2="-4.5275" y2="5.05" width="0.12" layer="21"/>
<wire x1="5.05" y1="4.5275" x2="5.05" y2="5.05" width="0.12" layer="21"/>
<wire x1="5.05" y1="5.05" x2="4.5275" y2="5.05" width="0.12" layer="21"/>
<wire x1="5.05" y1="-4.5275" x2="5.05" y2="-5.05" width="0.12" layer="21"/>
<wire x1="5.05" y1="-5.05" x2="4.5275" y2="-5.05" width="0.12" layer="21"/>
<wire x1="-5.05" y1="-4.5275" x2="-5.05" y2="-5.05" width="0.12" layer="21"/>
<wire x1="-5.05" y1="-5.05" x2="-4.5275" y2="-5.05" width="0.12" layer="21"/>
<wire x1="5.05" y1="-5.05" x2="-5.05" y2="-5.05" width="0.12" layer="51"/>
<wire x1="-5.05" y1="-5.05" x2="-5.05" y2="5.05" width="0.12" layer="51"/>
<wire x1="-5.05" y1="5.05" x2="5.05" y2="5.05" width="0.12" layer="51"/>
<wire x1="5.05" y1="5.05" x2="5.05" y2="-5.05" width="0.12" layer="51"/>
<smd name="1" x="-5.6813" y="4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="2" x="-5.6813" y="3.2" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="3" x="-5.6813" y="2.4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="4" x="-5.6813" y="1.6" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="5" x="-5.6813" y="0.8" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="6" x="-5.6813" y="0" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="7" x="-5.6813" y="-0.8" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="8" x="-5.6813" y="-1.6" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="9" x="-5.6813" y="-2.4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="10" x="-5.6813" y="-3.2" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="11" x="-5.6813" y="-4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="12" x="-4" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="13" x="-3.2" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="14" x="-2.4" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="15" x="-1.6" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="16" x="-0.8" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="17" x="0" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="18" x="0.8" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="19" x="1.6" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="20" x="2.4" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="21" x="3.2" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="22" x="4" y="-5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="23" x="5.6813" y="-4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="24" x="5.6813" y="-3.2" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="25" x="5.6813" y="-2.4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="26" x="5.6813" y="-1.6" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="27" x="5.6813" y="-0.8" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="28" x="5.6813" y="0" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="29" x="5.6813" y="0.8" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="30" x="5.6813" y="1.6" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="31" x="5.6813" y="2.4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="32" x="5.6813" y="3.2" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="33" x="5.6813" y="4" dx="1.5998" dy="0.5471" layer="1"/>
<smd name="34" x="4" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="35" x="3.2" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="36" x="2.4" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="37" x="1.6" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="38" x="0.8" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="39" x="0" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="40" x="-0.8" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="41" x="-1.6" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="42" x="-2.4" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="43" x="-3.2" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<smd name="44" x="-4" y="5.6813" dx="1.5998" dy="0.5471" layer="1" rot="R90"/>
<text x="0" y="7.1162" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-7.1162" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="QFP80P1200X1200X120-44" urn="urn:adsk.eagle:package:6356634/1" type="model" library_version="4">
<description>44-QFP, 0.80 mm pitch, 12.00 mm span, 10.00 X 10.00 X 1.20 mm body
&lt;p&gt;44-pin QFP package with 0.80 mm pitch, 12.00 mm lead span1 X 12.00 mm lead span2 with body size 10.00 X 10.00 X 1.20 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="QFP80P1200X1200X120-44"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ATXMEGA_A4U" urn="urn:adsk.eagle:symbol:6356674/1" library_version="4">
<pin name="GND" x="-10.16" y="17.78" length="short"/>
<pin name="AVCC" x="-10.16" y="27.94" length="short"/>
<pin name="PA0" x="-10.16" y="12.7" length="short"/>
<pin name="PA1" x="-10.16" y="10.16" length="short"/>
<pin name="PA2" x="-10.16" y="7.62" length="short"/>
<pin name="PA3" x="-10.16" y="5.08" length="short"/>
<pin name="PA4" x="-10.16" y="2.54" length="short"/>
<pin name="PA5" x="-10.16" y="0" length="short"/>
<pin name="PA6" x="-10.16" y="-2.54" length="short"/>
<pin name="PA7" x="-10.16" y="-5.08" length="short"/>
<pin name="PB0" x="12.7" y="27.94" length="short" rot="R180"/>
<pin name="PB1" x="12.7" y="25.4" length="short" rot="R180"/>
<pin name="PB2" x="12.7" y="22.86" length="short" rot="R180"/>
<pin name="PB3" x="12.7" y="20.32" length="short" rot="R180"/>
<pin name="VCC" x="-10.16" y="25.4" length="short"/>
<pin name="PC0" x="12.7" y="12.7" length="short" rot="R180"/>
<pin name="PC1" x="12.7" y="10.16" length="short" rot="R180"/>
<pin name="PC2" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="PC3" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="PC4" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="PC5" x="12.7" y="0" length="short" rot="R180"/>
<pin name="PC6" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="PC7" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="PD0" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="PD1" x="12.7" y="-12.7" length="short" rot="R180"/>
<pin name="PD2" x="12.7" y="-15.24" length="short" rot="R180"/>
<pin name="PD3" x="12.7" y="-17.78" length="short" rot="R180"/>
<pin name="PD4" x="12.7" y="-20.32" length="short" rot="R180"/>
<pin name="PD5" x="12.7" y="-22.86" length="short" rot="R180"/>
<pin name="PD6" x="12.7" y="-25.4" length="short" rot="R180"/>
<pin name="PD7" x="12.7" y="-27.94" length="short" rot="R180"/>
<pin name="PE0" x="-10.16" y="-10.16" length="short"/>
<pin name="PE1" x="-10.16" y="-12.7" length="short"/>
<pin name="PE2" x="-10.16" y="-15.24" length="short"/>
<pin name="PE3" x="-10.16" y="-17.78" length="short"/>
<pin name="PDI" x="-10.16" y="-22.86" length="short"/>
<pin name="!RESET" x="-10.16" y="-25.4" length="short"/>
<pin name="PR0" x="-10.16" y="-27.94" length="short"/>
<pin name="PR1" x="-10.16" y="-30.48" length="short"/>
<wire x1="-7.62" y1="30.48" x2="10.16" y2="30.48" width="0.254" layer="94"/>
<wire x1="10.16" y1="30.48" x2="10.16" y2="-33.02" width="0.254" layer="94"/>
<wire x1="10.16" y1="-33.02" x2="-7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="-7.62" y2="30.48" width="0.254" layer="94"/>
<text x="-7.62" y="30.988" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-35.56" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATXMEGA_A4U" urn="urn:adsk.eagle:component:6356675/1" library_version="4">
<gates>
<gate name="G$1" symbol="ATXMEGA_A4U" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP80P1200X1200X120-44">
<connects>
<connect gate="G$1" pin="!RESET" pad="35"/>
<connect gate="G$1" pin="AVCC" pad="39"/>
<connect gate="G$1" pin="GND" pad="8 18 30 38"/>
<connect gate="G$1" pin="PA0" pad="40"/>
<connect gate="G$1" pin="PA1" pad="41"/>
<connect gate="G$1" pin="PA2" pad="42"/>
<connect gate="G$1" pin="PA3" pad="43"/>
<connect gate="G$1" pin="PA4" pad="44"/>
<connect gate="G$1" pin="PA5" pad="1"/>
<connect gate="G$1" pin="PA6" pad="2"/>
<connect gate="G$1" pin="PA7" pad="3"/>
<connect gate="G$1" pin="PB0" pad="4"/>
<connect gate="G$1" pin="PB1" pad="5"/>
<connect gate="G$1" pin="PB2" pad="6"/>
<connect gate="G$1" pin="PB3" pad="7"/>
<connect gate="G$1" pin="PC0" pad="10"/>
<connect gate="G$1" pin="PC1" pad="11"/>
<connect gate="G$1" pin="PC2" pad="12"/>
<connect gate="G$1" pin="PC3" pad="13"/>
<connect gate="G$1" pin="PC4" pad="14"/>
<connect gate="G$1" pin="PC5" pad="15"/>
<connect gate="G$1" pin="PC6" pad="16"/>
<connect gate="G$1" pin="PC7" pad="17"/>
<connect gate="G$1" pin="PD0" pad="20"/>
<connect gate="G$1" pin="PD1" pad="21"/>
<connect gate="G$1" pin="PD2" pad="22"/>
<connect gate="G$1" pin="PD3" pad="23"/>
<connect gate="G$1" pin="PD4" pad="24"/>
<connect gate="G$1" pin="PD5" pad="25"/>
<connect gate="G$1" pin="PD6" pad="26"/>
<connect gate="G$1" pin="PD7" pad="27"/>
<connect gate="G$1" pin="PDI" pad="34"/>
<connect gate="G$1" pin="PE0" pad="28"/>
<connect gate="G$1" pin="PE1" pad="29"/>
<connect gate="G$1" pin="PE2" pad="32"/>
<connect gate="G$1" pin="PE3" pad="33"/>
<connect gate="G$1" pin="PR0" pad="36"/>
<connect gate="G$1" pin="PR1" pad="37"/>
<connect gate="G$1" pin="VCC" pad="9 19 31"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6356634/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L" urn="urn:adsk.eagle:symbol:13867/1" library_version="1">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_L" urn="urn:adsk.eagle:component:13919/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="162.56" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
<attribute name="AUTOR" value="Autor: Alexander Miller"/>
<attribute name="TITLE" value="Prototype"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="HeRo" library_urn="urn:adsk.eagle:library:4344731" deviceset="ATXMEGA_A4U" device="" package3d_urn="urn:adsk.eagle:package:6356634/1"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="165.1" y="23.622" size="1.778" layer="94">&gt;AUTOR</text>
<text x="165.1" y="27.94" size="6.4516" layer="94">&gt;TITLE</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="40.64" y="132.08"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="162.56" y="0"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
