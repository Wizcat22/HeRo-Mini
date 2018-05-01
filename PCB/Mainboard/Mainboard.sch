<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.7.0">
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
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
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
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X10" urn="urn:adsk.eagle:footprint:22264/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-12.7762" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-12.7" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
</package>
<package name="1X10/90" urn="urn:adsk.eagle:footprint:22265/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-13.335" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="14.605" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X10" urn="urn:adsk.eagle:package:22406/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X10"/>
</packageinstances>
</package3d>
<package3d name="1X10/90" urn="urn:adsk.eagle:package:22408/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X10/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD10" urn="urn:adsk.eagle:symbol:22263/1" library_version="3">
<wire x1="-6.35" y1="-15.24" x2="1.27" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="12.7" x2="-6.35" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="12.7" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X10" urn="urn:adsk.eagle:component:22498/4" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X10">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22406/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X10/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22408/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="HeRo">
<packages>
<package name="ESP32-DOITV1" urn="urn:adsk.eagle:footprint:22291/1" locally_modified="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.065" y1="10.16" x2="-13.335" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="10.16" x2="-13.97" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="10.795" x2="-13.97" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="12.065" x2="-13.335" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="10.795" x2="-14.605" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="10.16" x2="-15.875" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="10.16" x2="-16.51" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.795" x2="-16.51" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="12.065" x2="-15.875" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="12.7" x2="-14.605" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="12.7" x2="-13.97" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="10.795" x2="-9.525" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="10.16" x2="-10.795" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="10.16" x2="-11.43" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="10.795" x2="-11.43" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="12.065" x2="-10.795" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="12.7" x2="-9.525" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="12.7" x2="-8.89" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="10.16" x2="-11.43" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="12.065" x2="-12.065" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="12.7" x2="-12.065" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="10.16" x2="-5.715" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="10.16" x2="-6.35" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="10.795" x2="-6.35" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="12.065" x2="-5.715" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="10.795" x2="-6.985" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="10.16" x2="-8.255" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="10.16" x2="-8.89" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="10.795" x2="-8.89" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="12.065" x2="-8.255" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="12.7" x2="-6.985" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="12.7" x2="-6.35" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="10.795" x2="-1.905" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="10.16" x2="-3.175" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="10.16" x2="-3.81" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="10.795" x2="-3.81" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="12.065" x2="-3.175" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="12.7" x2="-1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="12.7" x2="-1.27" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="10.16" x2="-3.81" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="12.065" x2="-4.445" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="12.7" x2="-4.445" y2="12.7" width="0.1524" layer="21"/>
<wire x1="3.175" y1="10.16" x2="1.905" y2="10.16" width="0.1524" layer="21"/>
<wire x1="1.905" y1="10.16" x2="1.27" y2="10.795" width="0.1524" layer="21"/>
<wire x1="1.27" y1="10.795" x2="1.27" y2="12.065" width="0.1524" layer="21"/>
<wire x1="1.27" y1="12.065" x2="1.905" y2="12.7" width="0.1524" layer="21"/>
<wire x1="1.27" y1="10.795" x2="0.635" y2="10.16" width="0.1524" layer="21"/>
<wire x1="0.635" y1="10.16" x2="-0.635" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="10.16" x2="-1.27" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="10.795" x2="-1.27" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="12.065" x2="-0.635" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="12.7" x2="0.635" y2="12.7" width="0.1524" layer="21"/>
<wire x1="0.635" y1="12.7" x2="1.27" y2="12.065" width="0.1524" layer="21"/>
<wire x1="6.35" y1="10.795" x2="5.715" y2="10.16" width="0.1524" layer="21"/>
<wire x1="5.715" y1="10.16" x2="4.445" y2="10.16" width="0.1524" layer="21"/>
<wire x1="4.445" y1="10.16" x2="3.81" y2="10.795" width="0.1524" layer="21"/>
<wire x1="3.81" y1="10.795" x2="3.81" y2="12.065" width="0.1524" layer="21"/>
<wire x1="3.81" y1="12.065" x2="4.445" y2="12.7" width="0.1524" layer="21"/>
<wire x1="4.445" y1="12.7" x2="5.715" y2="12.7" width="0.1524" layer="21"/>
<wire x1="5.715" y1="12.7" x2="6.35" y2="12.065" width="0.1524" layer="21"/>
<wire x1="3.175" y1="10.16" x2="3.81" y2="10.795" width="0.1524" layer="21"/>
<wire x1="3.81" y1="12.065" x2="3.175" y2="12.7" width="0.1524" layer="21"/>
<wire x1="1.905" y1="12.7" x2="3.175" y2="12.7" width="0.1524" layer="21"/>
<wire x1="10.795" y1="10.16" x2="9.525" y2="10.16" width="0.1524" layer="21"/>
<wire x1="9.525" y1="10.16" x2="8.89" y2="10.795" width="0.1524" layer="21"/>
<wire x1="8.89" y1="10.795" x2="8.89" y2="12.065" width="0.1524" layer="21"/>
<wire x1="8.89" y1="12.065" x2="9.525" y2="12.7" width="0.1524" layer="21"/>
<wire x1="8.89" y1="10.795" x2="8.255" y2="10.16" width="0.1524" layer="21"/>
<wire x1="8.255" y1="10.16" x2="6.985" y2="10.16" width="0.1524" layer="21"/>
<wire x1="6.985" y1="10.16" x2="6.35" y2="10.795" width="0.1524" layer="21"/>
<wire x1="6.35" y1="10.795" x2="6.35" y2="12.065" width="0.1524" layer="21"/>
<wire x1="6.35" y1="12.065" x2="6.985" y2="12.7" width="0.1524" layer="21"/>
<wire x1="6.985" y1="12.7" x2="8.255" y2="12.7" width="0.1524" layer="21"/>
<wire x1="8.255" y1="12.7" x2="8.89" y2="12.065" width="0.1524" layer="21"/>
<wire x1="13.97" y1="10.795" x2="13.335" y2="10.16" width="0.1524" layer="21"/>
<wire x1="13.335" y1="10.16" x2="12.065" y2="10.16" width="0.1524" layer="21"/>
<wire x1="12.065" y1="10.16" x2="11.43" y2="10.795" width="0.1524" layer="21"/>
<wire x1="11.43" y1="10.795" x2="11.43" y2="12.065" width="0.1524" layer="21"/>
<wire x1="11.43" y1="12.065" x2="12.065" y2="12.7" width="0.1524" layer="21"/>
<wire x1="12.065" y1="12.7" x2="13.335" y2="12.7" width="0.1524" layer="21"/>
<wire x1="13.335" y1="12.7" x2="13.97" y2="12.065" width="0.1524" layer="21"/>
<wire x1="10.795" y1="10.16" x2="11.43" y2="10.795" width="0.1524" layer="21"/>
<wire x1="11.43" y1="12.065" x2="10.795" y2="12.7" width="0.1524" layer="21"/>
<wire x1="9.525" y1="12.7" x2="10.795" y2="12.7" width="0.1524" layer="21"/>
<wire x1="18.415" y1="10.16" x2="17.145" y2="10.16" width="0.1524" layer="21"/>
<wire x1="17.145" y1="10.16" x2="16.51" y2="10.795" width="0.1524" layer="21"/>
<wire x1="16.51" y1="10.795" x2="16.51" y2="12.065" width="0.1524" layer="21"/>
<wire x1="16.51" y1="12.065" x2="17.145" y2="12.7" width="0.1524" layer="21"/>
<wire x1="16.51" y1="10.795" x2="15.875" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.875" y1="10.16" x2="14.605" y2="10.16" width="0.1524" layer="21"/>
<wire x1="14.605" y1="10.16" x2="13.97" y2="10.795" width="0.1524" layer="21"/>
<wire x1="13.97" y1="10.795" x2="13.97" y2="12.065" width="0.1524" layer="21"/>
<wire x1="13.97" y1="12.065" x2="14.605" y2="12.7" width="0.1524" layer="21"/>
<wire x1="14.605" y1="12.7" x2="15.875" y2="12.7" width="0.1524" layer="21"/>
<wire x1="15.875" y1="12.7" x2="16.51" y2="12.065" width="0.1524" layer="21"/>
<wire x1="19.05" y1="10.795" x2="19.05" y2="12.065" width="0.1524" layer="21"/>
<wire x1="18.415" y1="10.16" x2="19.05" y2="10.795" width="0.1524" layer="21"/>
<wire x1="19.05" y1="12.065" x2="18.415" y2="12.7" width="0.1524" layer="21"/>
<wire x1="17.145" y1="12.7" x2="18.415" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.795" x2="-17.145" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="10.16" x2="-18.415" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="10.16" x2="-19.05" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="10.795" x2="-19.05" y2="12.065" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="12.065" x2="-18.415" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="12.7" x2="-17.145" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="12.7" x2="-16.51" y2="12.065" width="0.1524" layer="21"/>
<pad name="1" x="17.78" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="2" x="15.24" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="3" x="12.7" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="4" x="10.16" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="5" x="7.62" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="6" x="5.08" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="7" x="2.54" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="8" x="0" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="9" x="-2.54" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="10" x="-5.08" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="11" x="-7.62" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="12" x="-10.16" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="13" x="-12.7" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="14" x="-15.24" y="11.43" drill="1.016" shape="long" rot="R270"/>
<pad name="15" x="-17.78" y="11.43" drill="1.016" shape="long" rot="R270"/>
<text x="-26.7462" y="15.7988" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="17.78" y="15.875" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-15.494" y1="11.176" x2="-14.986" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-12.954" y1="11.176" x2="-12.446" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-10.414" y1="11.176" x2="-9.906" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-7.874" y1="11.176" x2="-7.366" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-5.334" y1="11.176" x2="-4.826" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-2.794" y1="11.176" x2="-2.286" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-0.254" y1="11.176" x2="0.254" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="2.286" y1="11.176" x2="2.794" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="4.826" y1="11.176" x2="5.334" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="7.366" y1="11.176" x2="7.874" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="9.906" y1="11.176" x2="10.414" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="12.446" y1="11.176" x2="12.954" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="14.986" y1="11.176" x2="15.494" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="17.526" y1="11.176" x2="18.034" y2="11.684" layer="51" rot="R180"/>
<rectangle x1="-18.034" y1="11.176" x2="-17.526" y2="11.684" layer="51" rot="R180"/>
<wire x1="12.065" y1="-10.16" x2="13.335" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-10.16" x2="13.97" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-10.795" x2="13.97" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-12.065" x2="13.335" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-10.795" x2="14.605" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-10.16" x2="15.875" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-10.16" x2="16.51" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-10.795" x2="16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-12.065" x2="15.875" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-12.7" x2="14.605" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-12.7" x2="13.97" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-10.795" x2="9.525" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-10.16" x2="10.795" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-10.16" x2="11.43" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-10.795" x2="11.43" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-12.065" x2="10.795" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-12.7" x2="9.525" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-12.7" x2="8.89" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-10.16" x2="11.43" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-12.065" x2="12.065" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-12.7" x2="12.065" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-10.16" x2="5.715" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-10.16" x2="6.35" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-10.795" x2="6.35" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-12.065" x2="5.715" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-10.795" x2="6.985" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-10.16" x2="8.255" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-10.16" x2="8.89" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-10.795" x2="8.89" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-12.065" x2="8.255" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-12.7" x2="6.985" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-12.7" x2="6.35" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-10.795" x2="1.905" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-10.16" x2="3.175" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-10.16" x2="3.81" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-10.795" x2="3.81" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-12.065" x2="3.175" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-12.7" x2="1.905" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-12.7" x2="1.27" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-10.16" x2="3.81" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-12.065" x2="4.445" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-12.7" x2="4.445" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-10.16" x2="-1.905" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-10.16" x2="-1.27" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-10.795" x2="-1.27" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-12.065" x2="-1.905" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-10.795" x2="-0.635" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-10.16" x2="0.635" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-10.16" x2="1.27" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-10.795" x2="1.27" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-12.065" x2="0.635" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-12.7" x2="-0.635" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-12.7" x2="-1.27" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-10.795" x2="-5.715" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-10.16" x2="-4.445" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-10.16" x2="-3.81" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-10.795" x2="-3.81" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-12.065" x2="-4.445" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-12.7" x2="-5.715" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-12.7" x2="-6.35" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-10.16" x2="-3.81" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-12.065" x2="-3.175" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-12.7" x2="-3.175" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-10.16" x2="-9.525" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-10.16" x2="-8.89" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-10.795" x2="-8.89" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-12.065" x2="-9.525" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-10.795" x2="-8.255" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-10.16" x2="-6.985" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-10.16" x2="-6.35" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-10.795" x2="-6.35" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-12.065" x2="-6.985" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-12.7" x2="-8.255" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-12.7" x2="-8.89" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-10.795" x2="-13.335" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-10.16" x2="-12.065" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-10.16" x2="-11.43" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-10.795" x2="-11.43" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-12.065" x2="-12.065" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-12.7" x2="-13.335" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-12.7" x2="-13.97" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-10.16" x2="-11.43" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-12.065" x2="-10.795" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-12.7" x2="-10.795" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-10.16" x2="-17.145" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-10.16" x2="-16.51" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.795" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.065" x2="-17.145" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.795" x2="-15.875" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-10.16" x2="-14.605" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-10.16" x2="-13.97" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-10.795" x2="-13.97" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-12.065" x2="-14.605" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-12.7" x2="-15.875" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-12.7" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-10.795" x2="-19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-10.16" x2="-19.05" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.065" x2="-18.415" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-12.7" x2="-18.415" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-10.795" x2="17.145" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-10.16" x2="18.415" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-10.16" x2="19.05" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-10.795" x2="19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-12.065" x2="18.415" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-12.7" x2="17.145" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-12.7" x2="16.51" y2="-12.065" width="0.1524" layer="21"/>
<pad name="16" x="-17.78" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="-15.24" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="-12.7" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="-10.16" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="-7.62" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="-5.08" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="-2.54" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="0" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="24" x="2.54" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="25" x="5.08" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="26" x="7.62" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="27" x="10.16" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="28" x="12.7" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="29" x="15.24" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<pad name="30" x="17.78" y="-11.43" drill="1.016" shape="long" rot="R90"/>
<rectangle x1="14.986" y1="-11.684" x2="15.494" y2="-11.176" layer="51"/>
<rectangle x1="12.446" y1="-11.684" x2="12.954" y2="-11.176" layer="51"/>
<rectangle x1="9.906" y1="-11.684" x2="10.414" y2="-11.176" layer="51"/>
<rectangle x1="7.366" y1="-11.684" x2="7.874" y2="-11.176" layer="51"/>
<rectangle x1="4.826" y1="-11.684" x2="5.334" y2="-11.176" layer="51"/>
<rectangle x1="2.286" y1="-11.684" x2="2.794" y2="-11.176" layer="51"/>
<rectangle x1="-0.254" y1="-11.684" x2="0.254" y2="-11.176" layer="51"/>
<rectangle x1="-2.794" y1="-11.684" x2="-2.286" y2="-11.176" layer="51"/>
<rectangle x1="-5.334" y1="-11.684" x2="-4.826" y2="-11.176" layer="51"/>
<rectangle x1="-7.874" y1="-11.684" x2="-7.366" y2="-11.176" layer="51"/>
<rectangle x1="-10.414" y1="-11.684" x2="-9.906" y2="-11.176" layer="51"/>
<rectangle x1="-12.954" y1="-11.684" x2="-12.446" y2="-11.176" layer="51"/>
<rectangle x1="-15.494" y1="-11.684" x2="-14.986" y2="-11.176" layer="51"/>
<rectangle x1="-18.034" y1="-11.684" x2="-17.526" y2="-11.176" layer="51"/>
<rectangle x1="17.526" y1="-11.684" x2="18.034" y2="-11.176" layer="51"/>
<wire x1="-28.5" y1="14" x2="28.5" y2="14" width="0.127" layer="21"/>
<wire x1="28.5" y1="14" x2="28.5" y2="-14" width="0.127" layer="21"/>
<wire x1="28.5" y1="-14" x2="-28.5" y2="-14" width="0.127" layer="21"/>
<wire x1="-28.5" y1="-14" x2="-28.5" y2="14" width="0.127" layer="21"/>
<wire x1="1.27" y1="7.62" x2="1.27" y2="-7.62" width="0.127" layer="21"/>
<wire x1="1.27" y1="-7.62" x2="21.59" y2="-7.62" width="0.127" layer="21"/>
<wire x1="21.59" y1="-7.62" x2="27.94" y2="-7.62" width="0.127" layer="21"/>
<wire x1="27.94" y1="-7.62" x2="27.94" y2="7.62" width="0.127" layer="21"/>
<wire x1="27.94" y1="7.62" x2="21.59" y2="7.62" width="0.127" layer="21"/>
<wire x1="21.59" y1="7.62" x2="1.27" y2="7.62" width="0.127" layer="21"/>
<wire x1="21.59" y1="7.62" x2="21.59" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-24.13" y1="3.81" x2="-24.13" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-24.13" y1="-3.81" x2="-30.48" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-30.48" y1="-3.81" x2="-30.48" y2="3.81" width="0.127" layer="21"/>
<wire x1="-30.48" y1="3.81" x2="-24.13" y2="3.81" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-DOITV1">
<pin name="EN" x="-12.7" y="12.7" length="short"/>
<pin name="IO36" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="IO39" x="12.7" y="-15.24" length="short" rot="R180"/>
<pin name="IO34" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="IO35" x="12.7" y="-7.62" length="short" rot="R180"/>
<pin name="IO32" x="12.7" y="0" length="short" rot="R180"/>
<pin name="IO33" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="IO25" x="12.7" y="10.16" length="short" rot="R180"/>
<pin name="IO26" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="IO27" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="IO14" x="-12.7" y="-10.16" length="short"/>
<pin name="IO12" x="-12.7" y="-5.08" length="short"/>
<pin name="IO13" x="-12.7" y="-7.62" length="short"/>
<pin name="GND" x="-12.7" y="15.24" length="short"/>
<pin name="VIN" x="-12.7" y="20.32" length="short"/>
<pin name="IO23" x="12.7" y="15.24" length="short" rot="R180"/>
<pin name="IO22" x="12.7" y="17.78" length="short" rot="R180"/>
<pin name="IO01" x="-12.7" y="10.16" length="short"/>
<pin name="IO03" x="-12.7" y="5.08" length="short"/>
<pin name="IO21" x="12.7" y="20.32" length="short" rot="R180"/>
<pin name="IO19" x="-12.7" y="-22.86" length="short"/>
<pin name="IO18" x="-12.7" y="-20.32" length="short"/>
<pin name="IO05" x="-12.7" y="0" length="short"/>
<pin name="IO17" x="-12.7" y="-17.78" length="short"/>
<pin name="IO16" x="-12.7" y="-15.24" length="short"/>
<pin name="IO04" x="-12.7" y="2.54" length="short"/>
<pin name="IO02" x="-12.7" y="7.62" length="short"/>
<pin name="IO15" x="-12.7" y="-12.7" length="short"/>
<pin name="VDD3V3" x="-12.7" y="17.78" length="short"/>
<wire x1="-10.16" y1="-25.4" x2="-10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="22.86" x2="10.16" y2="22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="22.86" x2="10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="-10.16" y2="-25.4" width="0.254" layer="94"/>
<text x="-10.16" y="25.4" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-30.48" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-DOITV1">
<gates>
<gate name="G$1" symbol="ESP32-DOITV1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-DOITV1">
<connects>
<connect gate="G$1" pin="EN" pad="1"/>
<connect gate="G$1" pin="GND" pad="14 17"/>
<connect gate="G$1" pin="IO01" pad="28"/>
<connect gate="G$1" pin="IO02" pad="19"/>
<connect gate="G$1" pin="IO03" pad="27"/>
<connect gate="G$1" pin="IO04" pad="20"/>
<connect gate="G$1" pin="IO05" pad="23"/>
<connect gate="G$1" pin="IO12" pad="12"/>
<connect gate="G$1" pin="IO13" pad="13"/>
<connect gate="G$1" pin="IO14" pad="11"/>
<connect gate="G$1" pin="IO15" pad="18"/>
<connect gate="G$1" pin="IO16" pad="21"/>
<connect gate="G$1" pin="IO17" pad="22"/>
<connect gate="G$1" pin="IO18" pad="24"/>
<connect gate="G$1" pin="IO19" pad="25"/>
<connect gate="G$1" pin="IO21" pad="26"/>
<connect gate="G$1" pin="IO22" pad="29"/>
<connect gate="G$1" pin="IO23" pad="30"/>
<connect gate="G$1" pin="IO25" pad="8"/>
<connect gate="G$1" pin="IO26" pad="9"/>
<connect gate="G$1" pin="IO27" pad="10"/>
<connect gate="G$1" pin="IO32" pad="6"/>
<connect gate="G$1" pin="IO33" pad="7"/>
<connect gate="G$1" pin="IO34" pad="4"/>
<connect gate="G$1" pin="IO35" pad="5"/>
<connect gate="G$1" pin="IO36" pad="2"/>
<connect gate="G$1" pin="IO39" pad="3"/>
<connect gate="G$1" pin="VDD3V3" pad="16"/>
<connect gate="G$1" pin="VIN" pad="15"/>
</connects>
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
<attribute name="AUTOR" value="Alexander Miller"/>
<attribute name="PROJECT" value="HeRo Mini"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_L" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_L" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG0" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG3" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG4" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="VDD6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="P+6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="LEG5" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X10" device="" package3d_urn="urn:adsk.eagle:package:22406/2"/>
<part name="U$1" library="HeRo" deviceset="ESP32-DOITV1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="163.83" y="23.622" size="2.54" layer="94">&gt;AUTOR</text>
<text x="163.83" y="28.194" size="6.4516" layer="94">&gt;PROJECT</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<instance part="FRAME2" gate="G$2" x="162.56" y="0"/>
<instance part="GND2" gate="1" x="10.16" y="134.62"/>
<instance part="VDD1" gate="G$1" x="10.16" y="170.18"/>
<instance part="P+2" gate="1" x="12.7" y="149.86" rot="R90"/>
<instance part="LEG0" gate="A" x="35.56" y="154.94"/>
<instance part="GND1" gate="1" x="45.72" y="134.62"/>
<instance part="VDD2" gate="G$1" x="45.72" y="170.18"/>
<instance part="P+1" gate="1" x="48.26" y="149.86" rot="R90"/>
<instance part="LEG1" gate="A" x="71.12" y="154.94"/>
<instance part="GND3" gate="1" x="83.82" y="134.62"/>
<instance part="VDD3" gate="G$1" x="83.82" y="170.18"/>
<instance part="P+3" gate="1" x="86.36" y="149.86" rot="R90"/>
<instance part="LEG2" gate="A" x="109.22" y="154.94"/>
<instance part="GND4" gate="1" x="10.16" y="86.36"/>
<instance part="VDD4" gate="G$1" x="10.16" y="121.92"/>
<instance part="P+4" gate="1" x="12.7" y="101.6" rot="R90"/>
<instance part="LEG3" gate="A" x="35.56" y="106.68"/>
<instance part="GND5" gate="1" x="45.72" y="86.36"/>
<instance part="VDD5" gate="G$1" x="45.72" y="121.92"/>
<instance part="P+5" gate="1" x="48.26" y="101.6" rot="R90"/>
<instance part="LEG4" gate="A" x="71.12" y="106.68"/>
<instance part="GND6" gate="1" x="83.82" y="86.36"/>
<instance part="VDD6" gate="G$1" x="83.82" y="121.92"/>
<instance part="P+6" gate="1" x="86.36" y="101.6" rot="R90"/>
<instance part="LEG5" gate="A" x="109.22" y="106.68"/>
<instance part="U$1" gate="G$1" x="165.1" y="139.7"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="LEG0" gate="A" pin="7"/>
<wire x1="15.24" y1="149.86" x2="33.02" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="LEG1" gate="A" pin="7"/>
<wire x1="50.8" y1="149.86" x2="68.58" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<pinref part="LEG2" gate="A" pin="7"/>
<wire x1="88.9" y1="149.86" x2="106.68" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+4" gate="1" pin="+5V"/>
<pinref part="LEG3" gate="A" pin="7"/>
<wire x1="15.24" y1="101.6" x2="33.02" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+5V"/>
<pinref part="LEG4" gate="A" pin="7"/>
<wire x1="50.8" y1="101.6" x2="68.58" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+6" gate="1" pin="+5V"/>
<pinref part="LEG5" gate="A" pin="7"/>
<wire x1="88.9" y1="101.6" x2="106.68" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="10.16" y1="152.4" x2="10.16" y2="137.16" width="0.1524" layer="91"/>
<wire x1="33.02" y1="157.48" x2="10.16" y2="157.48" width="0.1524" layer="91"/>
<wire x1="10.16" y1="157.48" x2="10.16" y2="154.94" width="0.1524" layer="91"/>
<wire x1="10.16" y1="154.94" x2="10.16" y2="152.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="154.94" x2="10.16" y2="154.94" width="0.1524" layer="91"/>
<junction x="10.16" y="154.94"/>
<wire x1="33.02" y1="152.4" x2="10.16" y2="152.4" width="0.1524" layer="91"/>
<junction x="10.16" y="152.4"/>
<pinref part="LEG0" gate="A" pin="4"/>
<pinref part="LEG0" gate="A" pin="5"/>
<pinref part="LEG0" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="45.72" y1="152.4" x2="45.72" y2="137.16" width="0.1524" layer="91"/>
<wire x1="68.58" y1="157.48" x2="45.72" y2="157.48" width="0.1524" layer="91"/>
<wire x1="45.72" y1="157.48" x2="45.72" y2="154.94" width="0.1524" layer="91"/>
<wire x1="45.72" y1="154.94" x2="45.72" y2="152.4" width="0.1524" layer="91"/>
<wire x1="68.58" y1="154.94" x2="45.72" y2="154.94" width="0.1524" layer="91"/>
<junction x="45.72" y="154.94"/>
<wire x1="68.58" y1="152.4" x2="45.72" y2="152.4" width="0.1524" layer="91"/>
<junction x="45.72" y="152.4"/>
<pinref part="LEG1" gate="A" pin="4"/>
<pinref part="LEG1" gate="A" pin="5"/>
<pinref part="LEG1" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="83.82" y1="152.4" x2="83.82" y2="137.16" width="0.1524" layer="91"/>
<wire x1="106.68" y1="157.48" x2="83.82" y2="157.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="157.48" x2="83.82" y2="154.94" width="0.1524" layer="91"/>
<wire x1="83.82" y1="154.94" x2="83.82" y2="152.4" width="0.1524" layer="91"/>
<wire x1="106.68" y1="154.94" x2="83.82" y2="154.94" width="0.1524" layer="91"/>
<junction x="83.82" y="154.94"/>
<wire x1="106.68" y1="152.4" x2="83.82" y2="152.4" width="0.1524" layer="91"/>
<junction x="83.82" y="152.4"/>
<pinref part="LEG2" gate="A" pin="4"/>
<pinref part="LEG2" gate="A" pin="5"/>
<pinref part="LEG2" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="10.16" y1="104.14" x2="10.16" y2="88.9" width="0.1524" layer="91"/>
<wire x1="33.02" y1="109.22" x2="10.16" y2="109.22" width="0.1524" layer="91"/>
<wire x1="10.16" y1="109.22" x2="10.16" y2="106.68" width="0.1524" layer="91"/>
<wire x1="10.16" y1="106.68" x2="10.16" y2="104.14" width="0.1524" layer="91"/>
<wire x1="33.02" y1="106.68" x2="10.16" y2="106.68" width="0.1524" layer="91"/>
<junction x="10.16" y="106.68"/>
<wire x1="33.02" y1="104.14" x2="10.16" y2="104.14" width="0.1524" layer="91"/>
<junction x="10.16" y="104.14"/>
<pinref part="LEG3" gate="A" pin="4"/>
<pinref part="LEG3" gate="A" pin="5"/>
<pinref part="LEG3" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="45.72" y1="104.14" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="68.58" y1="109.22" x2="45.72" y2="109.22" width="0.1524" layer="91"/>
<wire x1="45.72" y1="109.22" x2="45.72" y2="106.68" width="0.1524" layer="91"/>
<wire x1="45.72" y1="106.68" x2="45.72" y2="104.14" width="0.1524" layer="91"/>
<wire x1="68.58" y1="106.68" x2="45.72" y2="106.68" width="0.1524" layer="91"/>
<junction x="45.72" y="106.68"/>
<wire x1="68.58" y1="104.14" x2="45.72" y2="104.14" width="0.1524" layer="91"/>
<junction x="45.72" y="104.14"/>
<pinref part="LEG4" gate="A" pin="4"/>
<pinref part="LEG4" gate="A" pin="5"/>
<pinref part="LEG4" gate="A" pin="6"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="83.82" y1="104.14" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
<wire x1="106.68" y1="109.22" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
<wire x1="83.82" y1="109.22" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<wire x1="83.82" y1="106.68" x2="83.82" y2="104.14" width="0.1524" layer="91"/>
<wire x1="106.68" y1="106.68" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<junction x="83.82" y="106.68"/>
<wire x1="106.68" y1="104.14" x2="83.82" y2="104.14" width="0.1524" layer="91"/>
<junction x="83.82" y="104.14"/>
<pinref part="LEG5" gate="A" pin="4"/>
<pinref part="LEG5" gate="A" pin="5"/>
<pinref part="LEG5" gate="A" pin="6"/>
</segment>
</net>
<net name="UPDI_0" class="0">
<segment>
<label x="25.4" y="142.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG0" gate="A" pin="10"/>
<wire x1="25.4" y1="142.24" x2="33.02" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<label x="25.4" y="144.78" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG0" gate="A" pin="9"/>
<wire x1="25.4" y1="144.78" x2="33.02" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="60.96" y="144.78" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG1" gate="A" pin="9"/>
<wire x1="60.96" y1="144.78" x2="68.58" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="99.06" y="144.78" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG2" gate="A" pin="9"/>
<wire x1="99.06" y1="144.78" x2="106.68" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="25.4" y="96.52" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG3" gate="A" pin="9"/>
<wire x1="25.4" y1="96.52" x2="33.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="60.96" y="96.52" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG4" gate="A" pin="9"/>
<wire x1="60.96" y1="96.52" x2="68.58" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="99.06" y="96.52" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG5" gate="A" pin="9"/>
<wire x1="99.06" y1="96.52" x2="106.68" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="IO21"/>
<wire x1="177.8" y1="160.02" x2="180.34" y2="160.02" width="0.1524" layer="91"/>
<label x="180.34" y="160.02" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<label x="25.4" y="147.32" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG0" gate="A" pin="8"/>
<wire x1="25.4" y1="147.32" x2="33.02" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="60.96" y="147.32" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG1" gate="A" pin="8"/>
<wire x1="60.96" y1="147.32" x2="68.58" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="99.06" y="147.32" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG2" gate="A" pin="8"/>
<wire x1="99.06" y1="147.32" x2="106.68" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="25.4" y="99.06" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG3" gate="A" pin="8"/>
<wire x1="25.4" y1="99.06" x2="33.02" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="60.96" y="99.06" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG4" gate="A" pin="8"/>
<wire x1="60.96" y1="99.06" x2="68.58" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="99.06" y="99.06" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG5" gate="A" pin="8"/>
<wire x1="99.06" y1="99.06" x2="106.68" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="IO22"/>
<wire x1="177.8" y1="157.48" x2="180.34" y2="157.48" width="0.1524" layer="91"/>
<label x="180.34" y="157.48" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="160.02" x2="10.16" y2="162.56" width="0.1524" layer="91"/>
<wire x1="10.16" y1="162.56" x2="10.16" y2="165.1" width="0.1524" layer="91"/>
<wire x1="10.16" y1="165.1" x2="10.16" y2="167.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="160.02" x2="10.16" y2="160.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="162.56" x2="10.16" y2="162.56" width="0.1524" layer="91"/>
<junction x="10.16" y="162.56"/>
<wire x1="33.02" y1="165.1" x2="10.16" y2="165.1" width="0.1524" layer="91"/>
<junction x="10.16" y="165.1"/>
<pinref part="LEG0" gate="A" pin="1"/>
<pinref part="LEG0" gate="A" pin="2"/>
<pinref part="LEG0" gate="A" pin="3"/>
</segment>
<segment>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<wire x1="45.72" y1="160.02" x2="45.72" y2="162.56" width="0.1524" layer="91"/>
<wire x1="45.72" y1="162.56" x2="45.72" y2="165.1" width="0.1524" layer="91"/>
<wire x1="45.72" y1="165.1" x2="45.72" y2="167.64" width="0.1524" layer="91"/>
<wire x1="68.58" y1="160.02" x2="45.72" y2="160.02" width="0.1524" layer="91"/>
<wire x1="68.58" y1="162.56" x2="45.72" y2="162.56" width="0.1524" layer="91"/>
<junction x="45.72" y="162.56"/>
<wire x1="68.58" y1="165.1" x2="45.72" y2="165.1" width="0.1524" layer="91"/>
<junction x="45.72" y="165.1"/>
<pinref part="LEG1" gate="A" pin="1"/>
<pinref part="LEG1" gate="A" pin="2"/>
<pinref part="LEG1" gate="A" pin="3"/>
</segment>
<segment>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<wire x1="83.82" y1="160.02" x2="83.82" y2="162.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="162.56" x2="83.82" y2="165.1" width="0.1524" layer="91"/>
<wire x1="83.82" y1="165.1" x2="83.82" y2="167.64" width="0.1524" layer="91"/>
<wire x1="106.68" y1="160.02" x2="83.82" y2="160.02" width="0.1524" layer="91"/>
<wire x1="106.68" y1="162.56" x2="83.82" y2="162.56" width="0.1524" layer="91"/>
<junction x="83.82" y="162.56"/>
<wire x1="106.68" y1="165.1" x2="83.82" y2="165.1" width="0.1524" layer="91"/>
<junction x="83.82" y="165.1"/>
<pinref part="LEG2" gate="A" pin="1"/>
<pinref part="LEG2" gate="A" pin="2"/>
<pinref part="LEG2" gate="A" pin="3"/>
</segment>
<segment>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="111.76" x2="10.16" y2="114.3" width="0.1524" layer="91"/>
<wire x1="10.16" y1="114.3" x2="10.16" y2="116.84" width="0.1524" layer="91"/>
<wire x1="10.16" y1="116.84" x2="10.16" y2="119.38" width="0.1524" layer="91"/>
<wire x1="33.02" y1="111.76" x2="10.16" y2="111.76" width="0.1524" layer="91"/>
<wire x1="33.02" y1="114.3" x2="10.16" y2="114.3" width="0.1524" layer="91"/>
<junction x="10.16" y="114.3"/>
<wire x1="33.02" y1="116.84" x2="10.16" y2="116.84" width="0.1524" layer="91"/>
<junction x="10.16" y="116.84"/>
<pinref part="LEG3" gate="A" pin="1"/>
<pinref part="LEG3" gate="A" pin="2"/>
<pinref part="LEG3" gate="A" pin="3"/>
</segment>
<segment>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<wire x1="45.72" y1="111.76" x2="45.72" y2="114.3" width="0.1524" layer="91"/>
<wire x1="45.72" y1="114.3" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
<wire x1="45.72" y1="116.84" x2="45.72" y2="119.38" width="0.1524" layer="91"/>
<wire x1="68.58" y1="111.76" x2="45.72" y2="111.76" width="0.1524" layer="91"/>
<wire x1="68.58" y1="114.3" x2="45.72" y2="114.3" width="0.1524" layer="91"/>
<junction x="45.72" y="114.3"/>
<wire x1="68.58" y1="116.84" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
<junction x="45.72" y="116.84"/>
<pinref part="LEG4" gate="A" pin="1"/>
<pinref part="LEG4" gate="A" pin="2"/>
<pinref part="LEG4" gate="A" pin="3"/>
</segment>
<segment>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<wire x1="83.82" y1="111.76" x2="83.82" y2="114.3" width="0.1524" layer="91"/>
<wire x1="83.82" y1="114.3" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<wire x1="83.82" y1="116.84" x2="83.82" y2="119.38" width="0.1524" layer="91"/>
<wire x1="106.68" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="106.68" y1="114.3" x2="83.82" y2="114.3" width="0.1524" layer="91"/>
<junction x="83.82" y="114.3"/>
<wire x1="106.68" y1="116.84" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<junction x="83.82" y="116.84"/>
<pinref part="LEG5" gate="A" pin="1"/>
<pinref part="LEG5" gate="A" pin="2"/>
<pinref part="LEG5" gate="A" pin="3"/>
</segment>
</net>
<net name="UPDI_1" class="0">
<segment>
<label x="60.96" y="142.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG1" gate="A" pin="10"/>
<wire x1="60.96" y1="142.24" x2="68.58" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UPDI_2" class="0">
<segment>
<label x="99.06" y="142.24" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG2" gate="A" pin="10"/>
<wire x1="99.06" y1="142.24" x2="106.68" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UPDI_3" class="0">
<segment>
<label x="25.4" y="93.98" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG3" gate="A" pin="10"/>
<wire x1="25.4" y1="93.98" x2="33.02" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UPDI_4" class="0">
<segment>
<label x="60.96" y="93.98" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG4" gate="A" pin="10"/>
<wire x1="60.96" y1="93.98" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="UPDI_5" class="0">
<segment>
<label x="99.06" y="93.98" size="1.27" layer="95" rot="R180" xref="yes"/>
<pinref part="LEG5" gate="A" pin="10"/>
<wire x1="99.06" y1="93.98" x2="106.68" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="163.83" y="23.622" size="2.54" layer="94">&gt;AUTOR</text>
<text x="163.83" y="28.194" size="6.4516" layer="94">&gt;PROJECT</text>
</plain>
<instances>
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
