<?xml version="1.0" encoding="UTF-8"?>
<model name="active_susp_active">
  <header formatversion="2" hwxversion="2022.3" script="oml"/>
  <edition>
    <properties>
      <property name="creator" value="adyer"/>
      <property name="creationdate" value="06/01/16 09:02:18"/>
      <property name="revision" value="0"/>
      <property name="lastmodifieddate" value="07/13/24 15:08:54"/>
      <property name="comments" value=""/>
    </properties>
  </edition>
  <initialization>time_final=2;&#xA;&#xA;%%vehicle parameters&#xA;ms=476;     % kg&#xA;mus=50;     % kg&#xA;kus=220000; % N/m&#xA;ks=26400;   % N/m&#xA;cus=0;      % Ns/m&#xA;cs=2775;    % Ns/m&#xA;&#xA;Kp=GetFromBase(&apos;Kp&apos;, 0);&#xA;Ki=GetFromBase(&apos;Ki&apos;, 0);&#xA;Kd=GetFromBase(&apos;Kd&apos;, 0);</initialization>
  <finalization/>
  <diagram>
    <block name="Suspension_Stroke_Comparison" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="503.7254180908212" y="8.968109130859204"/>
        <size width="72" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot; &quot;Active&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="2"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;Suspension Stroke&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Active&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Sprung_Mass_Acc_Comparison" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="503.7254180908212" y="232.8757934570321"/>
        <size width="72" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot; &quot;Active&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="2"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[900,150]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="0"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Recreate&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;SprungMassAcc_comparison m/s2&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Active&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Bump rounded" type="block">
      <diagram>
        <block name="Output" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="271.12152099609375" y="304.4716491699219"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SignalGenerator" type="block">
          <template name="system/SignalGenerators/SignalGenerator"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="59.06354522705078" y="294.4716491699219"/>
            <size width="80" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Signal&#xA;generator</text>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="s" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="&quot;s`&quot; &quot;s``&quot;" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="firstder+firstder*secondder"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="outevent"/>
              </properties>
              <graphics>
                <location position="bottom"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="xx" value="[0.0, 0.5, 0.6, 0.7, 0.8, 2.0]"/>
              <parameter name="yy" value="[0.0, 0.0, 0.1, 0.1, 0.0, 0.0]"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="outevent" value="0"/>
              <parameter name="firstder" value="0"/>
              <parameter name="secondder" value="0"/>
              <parameter name="externalActivation" value="0"/>
            </section>
            <section name="Advanced">
              <parameter name="Method" value="&apos;Linear&apos;"/>
              <parameter name="Leftside" value="&apos;Zero&apos;"/>
              <parameter name="Rightside" value="&apos;Hold&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="ContTransFunc" type="block">
          <template name="system/Dynamical/ContTransFunc"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="169.20202636718753" y="284.4716491699219"/>
            <size width="60" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">num(s)&#xA;──────&#xA;den(s)</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="num" value="b"/>
              <parameter name="den" value="a"/>
            </section>
          </parameters>
        </block>
        <block name="SetSignal" type="block">
          <template name="system/Routing/SetSignal"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="261.6283264160156" y="237.61373901367188"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">road</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="tag" value="&apos;road&apos;"/>
              <parameter name="tagvis" value="&apos;Global&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Split" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="243.3543701171875" y="314.4716491699219"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="ContTransFunc" port="1" iotype="in"/>
          <to block="SignalGenerator" port="1" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="ContTransFunc" port="1" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SetSignal" port="1" iotype="in"/>
          <to block="Split" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="243.3543701171875" y="257.6137390136719"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="Output" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <context>f_cut=10; %Hz cut frequency low-pass filter&#xA;n_order=3; %filter order&#xA;&#xA;%Livio&apos;s filter&#xA;a=poly(-ones(1,n_order)*f_cut*2*pi);&#xA;b=a(n_order+1);&#xA;</context>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="216,216,216,255"/>
        <position x="-237.15611267089872" y="134.92898559569957"/>
        <size width="72" height="36"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Bump</text>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="0" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="Sprung_Mass_Vel_Comp" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="503.7254180908212" y="125.903945922851"/>
        <size width="72" height="60"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;Passive&quot; &quot;Active&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="2"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[500,400]"/>
          <parameter name="winPos" value="[300,300]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="0"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;Sprung mass velocity&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;Passive&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
              <row>
                <value>&apos;Active&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="QuarterCar" type="block">
      <diagram>
        <block name="RoadDisplacement" type="regular_in_port">
          <template name="system/Ports/Input"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-8.451644897460938" y="126.6268310546875"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="outsize" value="[-1;-2]"/>
              <parameter name="outtyp" value="&apos;inherit&apos;"/>
              <parameter name="dept" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Stroke_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="26.65375010172521"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="1"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SprungMass_vel_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="77.33636983235665"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="3"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SprungMass_acc_Passive" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="481.48834066162095" y="125.2678654988606"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">5</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="5"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Stroke_Active" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="650.9922057617187" y="216.6093841552731"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="2"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="SprungMass_vel_Active" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="565.4598266113283" y="240.60938415527013"/>
            <size width="20" height="20.00000000000003"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">4</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="4"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Actuator Force" type="block">
          <template name="system/SignalViewers/Scope"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="0"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="74.52083887939455" y="296.94597778320326"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Main">
              <parameter name="nin" value="1"/>
              <parameter name="externalActivation" value="0"/>
              <parameter name="winSize" value="[400,400]"/>
              <parameter name="winPos" value="[300,300]"/>
              <parameter name="winNam" value="&apos;&apos;"/>
              <parameter name="winHidden" value="1"/>
              <parameter name="showAtEnd" value="0"/>
              <parameter name="option" value="&apos;Reuse&apos;"/>
            </section>
            <section name="Advanced">
              <parameter name="useSubplot" value="1"/>
              <parametertable name="win_s">
                <columns number="7">
                  <parameter name="title" value="&apos;&apos;"/>
                  <parameter name="reverseColor" value="0"/>
                  <parameter name="grid" value="&apos;Coarse&apos;"/>
                  <parameter name="xScale" value="&apos;linear&apos;"/>
                  <parameter name="xRefresh" value="-1"/>
                  <parameter name="yScale" value="&apos;linear&apos;"/>
                  <parameter name="yInterval" value="[NaN,NaN]"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;&apos;</value>
                    <value>0</value>
                    <value>&apos;Coarse&apos;</value>
                    <value>&apos;linear&apos;</value>
                    <value>-1</value>
                    <value>&apos;linear&apos;</value>
                    <value>[NaN,NaN]</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="plotTitle" value="&apos;&apos;"/>
              <parameter name="plotColor" value="0"/>
              <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
              <parametertable name="signals">
                <columns number="3">
                  <parameter name="name" value="&apos;&apos;"/>
                  <parameter name="color" value="0"/>
                  <parameter name="marker" value="0"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;&apos;</value>
                    <value>0</value>
                    <value>0</value>
                  </row>
                </rows>
              </parametertable>
            </section>
          </parameters>
        </block>
        <block name="Constant_1" type="block">
          <template name="system/SignalGenerators/Constant"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-317.0013626586914" y="233.60938415527391"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">0</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="C" value="0"/>
              <parameter name="typ" value="&apos;double&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="PID" type="block">
          <template name="system/Dynamical/PID"/>
          <properties>
            <property name="masked" value="1"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-160.16148376464844" y="248.6093841552738"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">PID</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Gain">
              <parameter name="Kp" value="Kp"/>
              <parameter name="Ki" value="Ki"/>
              <parameter name="Kd" value="Kd"/>
              <parameter name="N" value="100"/>
            </section>
          </parameters>
        </block>
        <block name="Sum" type="block">
          <template name="system/MathOperations/Sum"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-239.2063446044922" y="238.6093841552738"/>
            <size width="40" height="60"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="&quot;+&quot; &quot;-&quot;" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="nin"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="nin" value="2"/>
              <parametertable name="in_ports">
                <columns number="1">
                  <parameter name="sgn" value="&apos;+&apos;"/>
                </columns>
                <rows number="nin">
                  <row>
                    <value>&apos;+&apos;</value>
                  </row>
                  <row>
                    <value>&apos;-&apos;</value>
                  </row>
                </rows>
              </parametertable>
              <parameter name="satur" value="&apos;Nothing&apos;"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Two-mass_susp_passive" type="block">
          <diagram>
            <block name="SpringDamper_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="43.50298309326172" y="39.46784210205078"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cs</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=ks</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_c" value="ks"/>
                  <parameter name="mo_d" value="cs"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
              </parameters>
            </block>
            <block name="Mass" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="39.14326477050781" y="-90.08164978027344"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=ms</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="ms"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="SpringDamper_2_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="197.54362869262684"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cus</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=kus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
                <section name="General">
                  <parameter name="mo_c" value="kus"/>
                  <parameter name="mo_d" value="cus"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Mass_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="118.91610717773438"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=mus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="mus"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="SpeedSensor_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/SpeedSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="-48.81524658203125" y="-42.96213912963867"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9775" y="0.761" rotate="1" visible="1" font="Arial,12" align="center">v</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/SpeedSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/SpeedSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="AccSensor_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/AccSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="113.44412231445312" y="-127.541259765625"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9875" y="0.757" rotate="1" visible="1" font="Arial,12" align="center">a</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/AccSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/AccSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="RelPositionSensor" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/RelPositionSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="379.74462890625" y="27.561599731445312"/>
                <size width="50" height="50"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.625" y="0.9645" rotate="1" visible="1" font="Arial,12" align="center">s</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/RelPositionSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/RelPositionSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="bottom" x="0.5" y="1"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="ImplicitSplit" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="64.1432647705078" y="-17.962139129638672"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_1" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="72.27708435058594" y="99.19197463989258"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="ToModelica" type="block">
              <template name="system/Interfaces/ToModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="35.810289382934556" y="340.50274658203125"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="value" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="FromModelica_2" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-102.37689208984375" y="-22.962139129638672"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_3" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="488.7717590332031" y="47.5615997314453"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_4" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="206.86952590942383" y="-107.54125976562501"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block_4" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="70.86296844482422" y="-0.3069038391113281"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Position" type="block">
              <template name="Modelica/Mechanics/Translational/Sources/Position"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,127,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="49.77708435058612" y="282.4954528808595"/>
                <size width="50" height="55"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,10" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.950000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">exact=</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.950000" y="0.861364" rotate="1" visible="1" font="Arial,10" align="center">true</text>
                  <text name="text4" color="128,128,128,0" clip="0" x="0.300000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">s_ref</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sources/Position_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sources/Position_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="flange" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.45454545454545453"/>
                    <size width="5" height="5"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,127,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                  </graphics>
                </port>
                <port name="s_ref" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.45454545454545453"/>
                    <size width="10" height="10"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,0,127,255" thickness="1.5"/>
                    <background color="0,0,127,255"/>
                  </graphics>
                </port>
                <port name="support" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useSupport"/>
                  </properties>
                  <graphics>
                    <location position="right" x="0.5" y="0.9090909090909091"/>
                    <size width="7.5" height="7.500000000000001"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="175,190,175,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_useSupport" value="0"/>
                  <parameter name="mo_exact" value="true"/>
                  <parameter name="mo_f_crit" value=""/>
                  <parameter name="mo_w_crit" value="&apos;2 * Modelica.Constants.pi * f_crit&apos;"/>
                  <parameter name="mo_af" value="1.3617"/>
                  <parameter name="mo_bf" value="0.618"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_s_ref">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="RoadDisplacement" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-115.48306274414068" y="327.50274658203125"/>
                <size width="36" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Suspension Stroke" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="518.7853240966797" y="34.56159973144529"/>
                <size width="48" height="36.00000000000001"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Velocity" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-177.89544677734375" y="-35.96213912963867"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="2"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Acceleration" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="233.71693420410156" y="-120.54125976562501"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="3"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="in"/>
              <to block="Mass" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.14326477050781" y="-102.54125976562501"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass" port="1" iotype="out"/>
              <to block="ImplicitSplit" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2" port="1" iotype="out"/>
              <to block="Block_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.5029830932617" y="99.19197463989258"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="2" iotype="out"/>
              <to block="SpeedSensor_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_4" port="1" iotype="out"/>
              <to block="SpringDamper_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.50298309326173" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="1" iotype="out"/>
              <to block="Mass_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="1" iotype="out"/>
              <to block="Block_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.1432647705078" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="2" iotype="out"/>
              <to block="RelPositionSensor" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="99.19197463989251"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RoadDisplacement" port="1" iotype="out"/>
              <to block="ToModelica" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_2" port="1" iotype="out"/>
              <to block="Sprung Mass Velocity" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="2" iotype="out"/>
              <to block="FromModelica_3" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_3" port="1" iotype="out"/>
              <to block="Suspension Stroke" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="out"/>
              <to block="FromModelica_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_4" port="1" iotype="out"/>
              <to block="Sprung Mass Acceleration" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpeedSensor_2" port="1" iotype="out"/>
              <to block="FromModelica_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="1" iotype="out"/>
              <to block="Block_4" port="2" iotype="out"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="-0.3069038391112535"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2_1" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="out"/>
              <pen shape="line" color="0,127,0,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ToModelica" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="72.27708435058155" y="345.5027465820311"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass_2" port="1" iotype="out"/>
              <to block="SpringDamper_2_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="0,176,80,254"/>
            <position x="109.68929128417955" y="51.33636983235667"/>
            <size width="216" height="72"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="RoadDisplacement" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Suspension Stroke" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Velocity" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Acceleration" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="SprungMass_acc_Active" type="regular_out_port">
          <template name="system/Ports/Output"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="383.54906000976564" y="264.6093841552739"/>
            <size width="20" height="20"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">6</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="portNumber" value="6"/>
              <parameter name="insize" value="[-1;-2]"/>
              <parameter name="intyp" value="&apos;inherit&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Split" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="60.84574890136719" y="136.6268310546875"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Block_1" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="484.3096008300782" y="250.6093841552711"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Two-mass_susp_active" type="block">
          <diagram>
            <block name="Gain" type="block">
              <template name="system/MathOperations/Gain"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="209.87200927734375" y="29.03734588623047"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.4" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">-1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top" x="0.5" y="0.2"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="gain" value="-1"/>
                  <parameter name="overflow" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Actuator force" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="286.1512756347656" y="31.03734588623047"/>
                <size width="35.999999999999886" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="2"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Acceleration" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="233.71693420410156" y="-120.54125976562501"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">3</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="3"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Sprung Mass Velocity" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-177.89544677734375" y="-35.96213912963867"/>
                <size width="48" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="2"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Suspension Stroke" type="regular_out_port">
              <template name="system/Ports/Output"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="518.7853240966797" y="34.56159973144529"/>
                <size width="48" height="36.00000000000001"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="insize" value="[-1;-2]"/>
                  <parameter name="intyp" value="&apos;inherit&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="RoadDisplacement" type="regular_in_port">
              <template name="system/Ports/Input"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-115.48306274414068" y="327.50274658203125"/>
                <size width="36" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.35" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="portNumber" value="1"/>
                  <parameter name="outsize" value="[-1;-2]"/>
                  <parameter name="outtyp" value="&apos;inherit&apos;"/>
                  <parameter name="dept" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Position" type="block">
              <template name="Modelica/Mechanics/Translational/Sources/Position"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="top" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,127,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="49.77708435058612" y="282.4954528808595"/>
                <size width="50" height="55"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,10" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.950000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">exact=</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.950000" y="0.861364" rotate="1" visible="1" font="Arial,10" align="center">true</text>
                  <text name="text4" color="128,128,128,0" clip="0" x="0.300000" y="0.725000" rotate="1" visible="1" font="Arial,10" align="center">s_ref</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sources/Position_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sources/Position_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="flange" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.45454545454545453"/>
                    <size width="5" height="5"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,127,0,255" thickness="1.5"/>
                    <background color="255,255,255,255"/>
                  </graphics>
                </port>
                <port name="s_ref" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.45454545454545453"/>
                    <size width="10" height="10"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,0,127,255" thickness="1.5"/>
                    <background color="0,0,127,255"/>
                  </graphics>
                </port>
                <port name="support" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useSupport"/>
                  </properties>
                  <graphics>
                    <location position="right" x="0.5" y="0.9090909090909091"/>
                    <size width="7.5" height="7.500000000000001"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                    <background color="175,190,175,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_useSupport" value="0"/>
                  <parameter name="mo_exact" value="true"/>
                  <parameter name="mo_f_crit" value=""/>
                  <parameter name="mo_w_crit" value="&apos;2 * Modelica.Constants.pi * f_crit&apos;"/>
                  <parameter name="mo_af" value="1.3617"/>
                  <parameter name="mo_bf" value="0.618"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_s_ref">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value></value>
                        <value></value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="ToModelica_1" type="block">
              <template name="system/Interfaces/ToModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="172.43167114257812" y="44.03734588623047"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="value" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="FromModelica_4" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="206.86952590942383" y="-107.54125976562501"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_3" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="488.7717590332031" y="47.5615997314453"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="FromModelica_2" type="block">
              <template name="system/Interfaces/FromModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-102.37689208984375" y="-22.962139129638672"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="ToModelica" type="block">
              <template name="system/Interfaces/ToModelica"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="35.810289382934556" y="340.50274658203125"/>
                <size width="10" height="10"/>
                <rotate angle="0"/>
                <texts>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="value" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="RelPositionSensor" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/RelPositionSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="379.74462890625" y="27.561599731445312"/>
                <size width="50" height="50"/>
                <rotate angle="270"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.625" y="0.9645" rotate="1" visible="1" font="Arial,12" align="center">s</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/RelPositionSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/RelPositionSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="bottom" x="0.5" y="1"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Force2_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sources/Force2"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="111.26806640625" y="24.03734588623047"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sources/Force2_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sources/Force2_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="top" x="0.5" y="0.4"/>
                    <size width="10" height="10"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="AccSensor_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/AccSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="113.44412231445312" y="-127.541259765625"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9875" y="0.757" rotate="1" visible="1" font="Arial,12" align="center">a</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/AccSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/AccSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Block_4" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="70.86296844482422" y="-0.3069038391113281"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="SpeedSensor_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Sensors/SpeedSensor"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="-48.81524658203125" y="-42.96213912963867"/>
                <size width="50" height="50"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.9775" y="0.761" rotate="1" visible="1" font="Arial,12" align="center">v</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Sensors/SpeedSensor_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="1">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Sensors/SpeedSensor_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Block_5" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="136.26806640625" y="99.19197463989256"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Mass_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="118.91610717773438"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=mus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="mus"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="SpringDamper_2_1" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="47.27708435058594" y="197.54362869262684"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cus</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=kus</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
                <section name="General">
                  <parameter name="mo_c" value="kus"/>
                  <parameter name="mo_d" value="cus"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="ImplicitSplit" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="64.1432647705078" y="-17.962139129638672"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Mass" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/Mass"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="39.14326477050781" y="-90.08164978027344"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="0.835" rotate="1" visible="1" font="Arial,12" align="center">m=ms</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/Mass_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/Mass_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_m" value="ms"/>
                  <parameter name="mo_L" value="0"/>
                  <parametertable name="mo_s">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_a">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                </section>
              </parameters>
            </block>
            <block name="Block_1" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="72.27708435058594" y="99.19197463989258"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="Block" type="implicit_split">
              <template name="system/Links/ImplicitSplit"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,255,255" thickness="1.5"/>
                <background color="0,15,142,255"/>
                <position x="68.50298309326172" y="24.037345886230455"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Implicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="SpringDamper_2" type="block">
              <template name="6b71281d-ba18-46f1-bb37-b267988d1fdc/Mechanics/Translational/Components/SpringDamper"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="0" color="0,0,0,0" thickness="1.5"/>
                <background color="255,255,255,0"/>
                <position x="43.50298309326172" y="39.46784210205078"/>
                <size width="50" height="50"/>
                <rotate angle="90"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                  <text name="text2" color="0,0,0,0" clip="0" x="0.5" y="1.285" rotate="1" visible="1" font="Arial,12" align="center">d=cs</text>
                  <text name="text3" color="0,0,0,0" clip="0" x="0.5" y="1.11" rotate="1" visible="1" font="Arial,12" align="center">c=ks</text>
                </texts>
                <images>
                  <image name="image1" file="Mechanics/Translational/Components/SpringDamper_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="Mechanics/Translational/Components/SpringDamper_mirrored_no_ports.svg" visible="1" alpha="255" aspectratio="0" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right" x="1" y="0.5"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="implicit"/>
                    <property name="portnumber" value="mo_useHeatPort"/>
                  </properties>
                  <graphics>
                    <location position="left" x="0" y="0"/>
                    <size width="5" height="5"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="rectangle" visible="1" color="0,15,142,255" thickness="1.5"/>
                    <background color="0,15,142,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="General">
                  <parameter name="mo_c" value="ks"/>
                  <parameter name="mo_d" value="cs"/>
                  <parameter name="mo_s_rel0" value="0"/>
                  <parameter name="mo_useHeatPort" value="0"/>
                </section>
                <section name="Advanced">
                  <parametercombobox name="mo_stateSelect">
                    <parameter name="choice1" value="1"/>
                    <parameter name="choice2" value="0"/>
                    <parameter name="choice3" value="0"/>
                    <parameter name="choice4" value="0"/>
                    <parameter name="choice5" value="0"/>
                  </parametercombobox>
                  <parameter name="mo_s_nominal" value="1e-4"/>
                </section>
                <section name="Advanced Initialization">
                  <parametertable name="mo_s_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_v_rel">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_f">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                  <parametertable name="mo_lossPower">
                    <columns number="2">
                      <parameter name="fixed" value="0"/>
                      <parameter name="start" value="0"/>
                    </columns>
                    <rows number="1">
                      <row>
                        <value>0</value>
                        <value>0.</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Gain" port="1" iotype="in"/>
              <to block="Actuator force" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Gain" port="1" iotype="out"/>
              <to block="ToModelica_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_4" port="1" iotype="out"/>
              <to block="Sprung Mass Acceleration" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_3" port="1" iotype="out"/>
              <to block="Suspension Stroke" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="FromModelica_2" port="1" iotype="out"/>
              <to block="Sprung Mass Velocity" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ToModelica" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="72.27708435058155" y="345.5027465820311"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RoadDisplacement" port="1" iotype="out"/>
              <to block="ToModelica" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="2" iotype="out"/>
              <to block="FromModelica_3" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ToModelica_1" port="1" iotype="out"/>
              <to block="Force2_1" port="2" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_5" port="2" iotype="out"/>
              <to block="RelPositionSensor" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="99.19197463989251"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="RelPositionSensor" port="1" iotype="out"/>
              <to block="Block_4" port="2" iotype="out"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="404.74462890625" y="-0.3069038391112535"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="out"/>
              <to block="FromModelica_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpeedSensor_2" port="1" iotype="out"/>
              <to block="FromModelica_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block" port="2" iotype="out"/>
              <to block="Force2_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="2" iotype="out"/>
              <to block="SpeedSensor_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_5" port="1" iotype="out"/>
              <to block="Force2_1" port="1" iotype="out"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="2" iotype="out"/>
              <to block="Block_5" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2_1" port="1" iotype="out"/>
              <to block="Position" port="1" iotype="out"/>
              <pen shape="line" color="0,127,0,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass_2" port="1" iotype="out"/>
              <to block="SpringDamper_2_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="ImplicitSplit" port="1" iotype="out"/>
              <to block="Block_4" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.1432647705078" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mass" port="1" iotype="out"/>
              <to block="ImplicitSplit" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="AccSensor_1" port="1" iotype="in"/>
              <to block="Mass" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="64.14326477050781" y="-102.54125976562501"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_1" port="1" iotype="out"/>
              <to block="Mass_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="SpringDamper_2" port="1" iotype="out"/>
              <to block="Block_1" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.5029830932617" y="99.19197463989258"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block_4" port="1" iotype="out"/>
              <to block="Block" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points>
                <point x="68.50298309326173" y="-0.3069038391113281"/>
              </points>
            </link>
            <link name="" type="Implicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Block" port="1" iotype="out"/>
              <to block="SpringDamper_2" port="1" iotype="in"/>
              <pen shape="line" color="0,15,142,255" thickness="1.5"/>
              <points/>
            </link>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
            <property name="back" value="0"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="0,176,80,254"/>
            <position x="105.43387904052736" y="214.6093841552738"/>
            <size width="228" height="72"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="Suspension Stroke" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Velocity" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Sprung Mass Acceleration" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="RoadDisplacement" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="Actuator force" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="Optimization Block" type="block">
          <diagram>
            <block name="ToBase_2" type="block">
              <template name="system/SignalExporters/ToBase"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-480.00819396972656" y="215.52633666992182"/>
                <size width="60" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">To Base&#xA;Kd</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="varname" value="&apos;Kd&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Display" type="block">
              <template name="system/SignalViewers/Display"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="0"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-426.66603088378906" y="74.79718017578125"/>
                <size width="96" height="48"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.500000" y="0.500000" rotate="1" visible="1" font="Arial,10" align="center">     30000&#xA;         0&#xA;   6856.97</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="0" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="0" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="fmt" value="&apos;%6g&apos;"/>
                  <parameter name="dt" value="1"/>
                  <parameter name="showatend" value="0"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="ToBase_1" type="block">
              <template name="system/SignalExporters/ToBase"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-411.30821228027344" y="187.52633666992188"/>
                <size width="60" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">To Base&#xA;Ki</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="varname" value="&apos;Ki&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="ToBase" type="block">
              <template name="system/SignalExporters/ToBase"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-338.53929138183594" y="159.52633666992176"/>
                <size width="60" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">To Base&#xA;Kp</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="varname" value="&apos;Kp&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Demux" type="block">
              <template name="system/Routing/Demux"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-516.2631683349609" y="165.52633666992182"/>
                <size width="12" height="84"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nout"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nout" value="3"/>
                  <parametertable name="outports">
                    <columns number="1">
                      <parameter name="size" value="1"/>
                    </columns>
                    <rows number="nout">
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="EventGenerate" type="block">
              <template name="system/ActivationOperations/EventGenerate"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-659.9366912841797" y="94.139892578125"/>
                <size width="80" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.4" rotate="1" visible="1" font="Arial,12" align="center">Event time(s)</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="&quot;time_final&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="nevout"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nevout" value="1"/>
                  <parametertable name="etimes">
                    <columns number="1">
                      <parameter name="time" value="1.0"/>
                    </columns>
                    <rows number="nevout">
                      <row>
                        <value>time_final</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Split_1" type="regular_split">
              <template name="system/Links/Split"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
                <position x="-547.2639923095703" y="207.52633666992188"/>
                <size width="0" height="0"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="3"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                </section>
              </parameters>
            </block>
            <block name="BobyqaOpt" type="block">
              <template name="system/Optimization/BobyqaOpt"/>
              <properties>
                <property name="masked" value="1"/>
                <property name="inlinable" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-659.9001312255859" y="192.52633666992188"/>
                <size width="80" height="60"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Optimization</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="p0" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="cost" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="p" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="cost_opt" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="2"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
                <port name="end" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="bottom"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="xL" value="0"/>
                  <parameter name="xU" value="30000"/>
                  <parameter name="RhoBeg" value="100"/>
                  <parameter name="RhoEnd" value="5"/>
                  <parameter name="Npt" value="-1"/>
                  <parameter name="MaxIter" value="60"/>
                  <parameter name="minmax" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Mux" type="block">
              <template name="system/Routing/Mux"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-775.9665374755859" y="165.52633666992188"/>
                <size width="12" height="84"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="nin"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="nin" value="3"/>
                  <parametertable name="inports">
                    <columns number="1">
                      <parameter name="size" value="1"/>
                    </columns>
                    <rows number="nin">
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                      <row>
                        <value>1</value>
                      </row>
                    </rows>
                  </parametertable>
                </section>
              </parameters>
            </block>
            <block name="Power" type="block">
              <template name="system/MathOperations/Power"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-797.1070404052734" y="259.72491455078125"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">u1^2</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="power" value="2"/>
                  <parameter name="ptype" value="&apos;Nothing&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Constant_2" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-981.7404174804688" y="159.52633666992188"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Kp</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="Kp"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Constant" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-928.7796173095703" y="187.52633666992188"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Ki</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="Ki"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="GetSignal" type="block">
              <template name="system/Routing/GetSignal"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-1053.7327728271484" y="261.72491455078125"/>
                <size width="204" height="36"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">SprungMass_Acc_Active</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="tag" value="&apos;SprungMass_Acc_Active&apos;"/>
                </section>
              </parameters>
            </block>
            <block name="Constant_4" type="block">
              <template name="system/SignalGenerators/Constant"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-866.2452850341798" y="215.52633666992224"/>
                <size width="40" height="40"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">Kd</text>
                </texts>
                <images>
                  <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,10" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="externalActivation"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="C" value="Kd"/>
                  <parameter name="typ" value="&apos;double&apos;"/>
                  <parameter name="externalActivation" value="0"/>
                </section>
              </parameters>
            </block>
            <block name="Integral" type="block">
              <template name="system/Dynamical/Integral"/>
              <properties>
                <property name="inlinable" value="0"/>
                <property name="masked" value="1"/>
                <property name="atomic" value="0"/>
                <property name="status" value="1"/>
              </properties>
              <graphics>
                <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
                <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
                <background color="255,255,255,255"/>
                <position x="-737.1070404052734" y="249.72491455078125"/>
                <size width="40" height="60"/>
                <rotate angle="0"/>
                <texts>
                  <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">1&#xA;─&#xA;s</text>
                </texts>
                <images>
                  <image name="image1" file="&quot;&quot;" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                </images>
                <flip value="0">
                  <images>
                    <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
                  </images>
                </flip>
              </graphics>
              <ports>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="out"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1+saturationstatus*satur"/>
                  </properties>
                  <graphics>
                    <location position="right"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="fixedport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="1"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="&quot;x&quot;" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Explicit"/>
                    <property name="portnumber" value="reinit"/>
                  </properties>
                  <graphics>
                    <location position="left"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                    <background color="64,64,64,255"/>
                  </graphics>
                </port>
                <port name="" type="variableport">
                  <properties>
                    <property name="iotype" value="in"/>
                    <property name="datatype" value="Activation"/>
                    <property name="portnumber" value="reinit"/>
                  </properties>
                  <graphics>
                    <location position="top"/>
                    <label visible="1" font="Arial,11" color="255,255,255,255"/>
                    <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                    <background color="183,15,19,255"/>
                  </graphics>
                </port>
              </ports>
              <parameters>
                <section name="Parameters">
                  <parameter name="x0" value="0"/>
                  <parameter name="reinit" value="0"/>
                  <parameter name="satur" value="0"/>
                  <parametertable name="limit">
                    <columns number="3">
                      <parameter name="max" value="[1]"/>
                      <parameter name="min" value="[-1]"/>
                      <parameter name="zcross" value="1"/>
                    </columns>
                    <rows number="satur">
                    </rows>
                  </parametertable>
                  <parameter name="saturationstatus" value="0"/>
                </section>
              </parameters>
            </block>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="3" iotype="out"/>
              <to block="ToBase_2" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="2" iotype="out"/>
              <to block="ToBase_1" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="1" iotype="out"/>
              <to block="ToBase" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Activation">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="EventGenerate" port="1" iotype="out"/>
              <to block="BobyqaOpt" port="1" iotype="in"/>
              <pen shape="line" color="183,15,19,255" thickness="1.5"/>
              <points>
                <point x="-619.9366912841797" y="163.3331146240235"/>
                <point x="-619.9001312255859" y="163.3331146240235"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Split_1" port="1" iotype="in"/>
              <to block="BobyqaOpt" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Demux" port="1" iotype="in"/>
              <to block="Split_1" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Display" port="1" iotype="in"/>
              <to block="Split_1" port="2" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-547.2639923095703" y="98.79718017578125"/>
              </points>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mux" port="1" iotype="out"/>
              <to block="BobyqaOpt" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Constant_2" port="1" iotype="out"/>
              <to block="Mux" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Mux" port="2" iotype="in"/>
              <to block="Constant" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="GetSignal" port="1" iotype="out"/>
              <to block="Power" port="1" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Constant_4" port="1" iotype="out"/>
              <to block="Mux" port="3" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Integral" port="1" iotype="in"/>
              <to block="Power" port="1" iotype="out"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points/>
            </link>
            <link name="" type="Explicit">
              <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
              <from block="Integral" port="1" iotype="out"/>
              <to block="BobyqaOpt" port="2" iotype="in"/>
              <pen shape="line" color="64,64,64,255" thickness="1.5"/>
              <points>
                <point x="-677.8964691162109" y="279.72491455078125"/>
                <point x="-677.8964691162109" y="237.52633666992188"/>
              </points>
            </link>
            <context/>
            <graphics>
              <viewport width="800" height="800" topleftx="0" toplefty="0"/>
              <window width="800" height="800" topleftx="0" toplefty="0"/>
            </graphics>
          </diagram>
          <properties>
            <property name="masked" value="0"/>
            <property name="inlinable" value="1"/>
            <property name="back" value="0"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-160.40036010742188" y="307.50537109375"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="0" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,10" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports/>
          <parameters title="new block definition">
            <callback>
              <pre/>
              <post/>
            </callback>
          </parameters>
        </block>
        <block name="SetSignal" type="block">
          <template name="system/Routing/SetSignal"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="pentagon" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="511.649658203125" y="325.2844543457031"/>
            <size width="204" height="36"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center">SprungMass_Acc_Active</text>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="tag" value="&apos;SprungMass_Acc_Active&apos;"/>
              <parameter name="tagvis" value="&apos;Global&apos;"/>
            </section>
          </parameters>
        </block>
        <block name="Block_2" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="363.27896118164057" y="274.60938415527386"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <block name="Saturation" type="block">
          <template name="system/Hybrid/Saturation"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="255,255,255,255"/>
            <position x="-52.5958251953125" y="248.60938415527397"/>
            <size width="40" height="40"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="Hybrid/saturation.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="variableport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Activation"/>
                <property name="portnumber" value="externalActivation"/>
              </properties>
              <graphics>
                <location position="top"/>
                <label visible="1" font="Arial,11" color="255,255,255,255"/>
                <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
                <background color="183,15,19,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
              <parameter name="upper" value="2000"/>
              <parameter name="lower" value="-2000"/>
              <parameter name="zc" value="1"/>
              <parameter name="externalActivation" value="0"/>
            </section>
          </parameters>
        </block>
        <block name="Block" type="regular_split">
          <template name="system/Links/Split"/>
          <properties>
            <property name="inlinable" value="0"/>
            <property name="masked" value="1"/>
            <property name="atomic" value="0"/>
            <property name="status" value="1"/>
          </properties>
          <graphics>
            <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
            <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
            <position x="32.449859619140554" y="268.6093841552739"/>
            <size width="0" height="0"/>
            <rotate angle="0"/>
            <texts>
              <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
            </texts>
            <images>
              <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
            </images>
            <flip value="0">
              <images>
                <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
              </images>
            </flip>
          </graphics>
          <ports>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="in"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="left"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="1"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="2"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
            <port name="" type="fixedport">
              <properties>
                <property name="iotype" value="out"/>
                <property name="datatype" value="Explicit"/>
                <property name="portnumber" value="3"/>
              </properties>
              <graphics>
                <location position="right"/>
                <label visible="1" font="Arial,10" color="255,255,255,255"/>
                <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
                <background color="64,64,64,255"/>
              </graphics>
            </port>
          </ports>
          <parameters>
            <section name="Parameters">
            </section>
          </parameters>
        </block>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="RoadDisplacement" port="1" iotype="out"/>
          <to block="Split" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="3" iotype="out"/>
          <to block="SprungMass_acc_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.84933309326146" y="111.3363698323576"/>
            <point x="387.8493330932616" y="135.2678654988606"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="2" iotype="out"/>
          <to block="SprungMass_vel_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_passive" port="1" iotype="out"/>
          <to block="Stroke_Passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="387.7634718872069" y="63.33636983235667"/>
            <point x="387.7634718872069" y="36.65375010172521"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Constant_1" port="1" iotype="out"/>
          <to block="Sum" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum" port="1" iotype="out"/>
          <to block="PID" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="1" iotype="out"/>
          <to block="Two-mass_susp_passive" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="60.84574890136726" y="87.33636983235667"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Split" port="2" iotype="out"/>
          <to block="Two-mass_susp_active" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="60.845748901367216" y="232.6093841552739"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_active" port="3" iotype="out"/>
          <to block="Block_2" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_active" port="2" iotype="out"/>
          <to block="Block_1" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_1" port="1" iotype="out"/>
          <to block="SprungMass_vel_Active" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Sum" port="2" iotype="in"/>
          <to block="Block_1" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="-266.68238830566406" y="283.6093841552738"/>
            <point x="-266.68238830566395" y="382.25573730468756"/>
            <point x="484.30960083008034" y="382.25573730468756"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Two-mass_susp_active" port="1" iotype="out"/>
          <to block="Stroke_Active" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="SetSignal" port="1" iotype="in"/>
          <to block="Block_2" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="496.44244384765614" y="343.2844543457031"/>
            <point x="496.4424438476562" y="258.76068115234386"/>
            <point x="363.27896118164057" y="258.7606811523438"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block_2" port="1" iotype="out"/>
          <to block="SprungMass_acc_Active" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="PID" port="1" iotype="out"/>
          <to block="Saturation" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Saturation" port="1" iotype="out"/>
          <to block="Block" port="1" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <link name="" type="explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Actuator Force" port="1" iotype="in"/>
          <to block="Block" port="2" iotype="out"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points>
            <point x="32.449859619140554" y="316.94597778320326"/>
          </points>
        </link>
        <link name="" type="Explicit">
          <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
          <from block="Block" port="1" iotype="out"/>
          <to block="Two-mass_susp_active" port="2" iotype="in"/>
          <pen shape="line" color="64,64,64,255" thickness="1.5"/>
          <points/>
        </link>
        <context/>
        <graphics>
          <viewport width="800" height="800" topleftx="0" toplefty="0"/>
          <window width="800" height="800" topleftx="0" toplefty="0"/>
        </graphics>
      </diagram>
      <properties>
        <property name="masked" value="0"/>
        <property name="inlinable" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-115.18257141113281" y="-15.071014404297046"/>
        <size width="528" height="336"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="Sys.jpg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="Sys.jpg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="Stroke_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="Stroke_Active" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_vel_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_vel_Active" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="4"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_acc_Passive" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="5"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="SprungMass_acc_Active" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="6"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="RoadDisplacement" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters title="new block definition">
        <callback>
          <pre/>
          <post/>
        </callback>
      </parameters>
    </block>
    <block name="Road Scope" type="block">
      <template name="system/SignalViewers/Scope"/>
      <properties>
        <property name="masked" value="1"/>
        <property name="inlinable" value="0"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="1" font="Arial,11" color="255,255,255,255"/>
        <frame shape="rectangle" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="255,255,255,255"/>
        <position x="-213.92935180664108" y="58.50703430175935"/>
        <size width="40" height="40"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="1">
          <images>
            <image name="image2" file="SignalViewers/scope.svg" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="&quot;&quot;" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="explicit"/>
            <property name="portnumber" value="nin"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="variableport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="activation"/>
            <property name="portnumber" value="externalActivation"/>
          </properties>
          <graphics>
            <location position="top"/>
            <label visible="1" font="Arial,11" color="255,255,255,255"/>
            <frame shape="triangle" visible="1" color="183,15,19,255" thickness="1.5"/>
            <background color="183,15,19,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Main">
          <parameter name="nin" value="1"/>
          <parameter name="externalActivation" value="0"/>
          <parameter name="winSize" value="[400,400]"/>
          <parameter name="winPos" value="[-1,-2]"/>
          <parameter name="winNam" value="&apos;&apos;"/>
          <parameter name="winHidden" value="1"/>
          <parameter name="showAtEnd" value="0"/>
          <parameter name="option" value="&apos;Reuse&apos;"/>
        </section>
        <section name="Advanced">
          <parameter name="useSubplot" value="1"/>
          <parametertable name="win_s">
            <columns number="7">
              <parameter name="title" value="&apos;&apos;"/>
              <parameter name="reverseColor" value="0"/>
              <parameter name="grid" value="&apos;Coarse&apos;"/>
              <parameter name="xScale" value="&apos;linear&apos;"/>
              <parameter name="xRefresh" value="-1"/>
              <parameter name="yScale" value="&apos;linear&apos;"/>
              <parameter name="yInterval" value="[NaN,NaN]"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>&apos;Coarse&apos;</value>
                <value>&apos;linear&apos;</value>
                <value>-1</value>
                <value>&apos;linear&apos;</value>
                <value>[NaN,NaN]</value>
              </row>
            </rows>
          </parametertable>
          <parameter name="plotTitle" value="&apos;&apos;"/>
          <parameter name="plotColor" value="0"/>
          <parameter name="plotGrid" value="&apos;Coarse&apos;"/>
          <parameter name="xScale" value="&apos;linear&apos;"/>
          <parameter name="xRefresh" value="-1"/>
          <parameter name="yScale" value="&apos;linear&apos;"/>
          <parameter name="yInterval" value="[NaN,NaN]"/>
          <parametertable name="signals">
            <columns number="3">
              <parameter name="name" value="&apos;&apos;"/>
              <parameter name="color" value="0"/>
              <parameter name="marker" value="0"/>
            </columns>
            <rows number="nin">
              <row>
                <value>&apos;&apos;</value>
                <value>0</value>
                <value>0</value>
              </row>
            </rows>
          </parametertable>
        </section>
      </parameters>
    </block>
    <block name="Block_2" type="regular_split">
      <template name="system/Links/Split"/>
      <properties>
        <property name="inlinable" value="0"/>
        <property name="masked" value="1"/>
        <property name="atomic" value="0"/>
        <property name="status" value="1"/>
      </properties>
      <graphics>
        <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
        <frame shape="ellipse" visible="1" color="0,0,0,255" thickness="1.5"/>
        <background color="64,64,64,255"/>
        <position x="-137.82354736329495" y="152.92898559570165"/>
        <size width="0" height="0"/>
        <rotate angle="0"/>
        <texts>
          <text name="text1" color="0,0,0,255" clip="1" x="0.5" y="0.5" rotate="1" visible="1" font="Arial,12" align="center"/>
        </texts>
        <images>
          <image name="image1" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
        </images>
        <flip value="0">
          <images>
            <image name="image2" file="" visible="1" alpha="255" aspectratio="1" x="0" y="0" width="1" height="1" clip="1" rotate="1"/>
          </images>
        </flip>
      </graphics>
      <ports>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="in"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="left"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="1"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="2"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
        <port name="" type="fixedport">
          <properties>
            <property name="iotype" value="out"/>
            <property name="datatype" value="Explicit"/>
            <property name="portnumber" value="3"/>
          </properties>
          <graphics>
            <location position="right"/>
            <label visible="1" font="Arial,10" color="255,255,255,255"/>
            <frame shape="point" visible="1" color="64,64,64,255" thickness="1.5"/>
            <background color="64,64,64,255"/>
          </graphics>
        </port>
      </ports>
      <parameters>
        <section name="Parameters">
        </section>
      </parameters>
    </block>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="1" iotype="out"/>
      <to block="Suspension_Stroke_Comparison" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.7254180908203" y="12.928985595702967"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="2" iotype="out"/>
      <to block="Suspension_Stroke_Comparison" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.72541809082054" y="68.9289855957029"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="3" iotype="out"/>
      <to block="Sprung_Mass_Vel_Comp" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.72541809082" y="124.92898559570358"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="4" iotype="out"/>
      <to block="Sprung_Mass_Vel_Comp" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.72541809082105" y="180.9289855957034"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="5" iotype="out"/>
      <to block="Sprung_Mass_Acc_Comparison" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.7254180908339" y="236.92898559569903"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Bump rounded" port="1" iotype="out"/>
      <to block="Block_2" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Road Scope" port="1" iotype="in"/>
      <to block="Block_2" port="2" iotype="out"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="-137.82354736329495" y="78.50703430175929"/>
      </points>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="Block_2" port="1" iotype="out"/>
      <to block="QuarterCar" port="1" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points/>
    </link>
    <link name="" type="Explicit">
      <label position="bottom" visible="0" font="Arial,11" color="255,255,255,255"/>
      <from block="QuarterCar" port="6" iotype="out"/>
      <to block="Sprung_Mass_Acc_Comparison" port="2" iotype="in"/>
      <pen shape="line" color="64,64,64,255" thickness="1.5"/>
      <points>
        <point x="493.7254180908201" y="292.92898559570335"/>
      </points>
    </link>
    <annotation name="Annotation_1" type="text">
      <frame shape="rectangle" visible="0" color="0,0,0,255" cornerradius="0" thickness="1.5"/>
      <background color="0,0,0,0"/>
      <position x="-150.31832885742188" y="-59.03284454345703"/>
      <size width="582" height="58"/>
      <rotate angle="0"/>
      <text font="Arial,18" color="0,0,0,255">Quarter Car Ride Model with Passive and Active Suspensions&#xA;</text>
    </annotation>
    <context/>
    <graphics>
      <viewport width="800" height="800" topleftx="0" toplefty="0"/>
      <window width="800" height="800" topleftx="0" toplefty="0"/>
    </graphics>
  </diagram>
  <simulation>
    <properties>
      <property name="InitialTime" value="0"/>
      <property name="FinalTime" value="time_final"/>
      <property name="RealTimeScale" value="2"/>
      <property name="AbsoluteErrorTolerance" value="0.000000001"/>
      <property name="RelativeErrorTolerance" value="0.000000001"/>
      <property name="MaxTimeInterval" value="-1"/>
      <property name="TimeTolerance" value="-1"/>
      <property name="Solver" value="radauv_exp"/>
      <property name="MaxStepSize" value="1e-3"/>
      <property name="InitialStepSize" value="-1"/>
      <property name="MinimalStepSize" value="-1"/>
      <property name="ZeroCrossingThreshold" value="-1"/>
      <property name="NumberOfConsecutiveZeroCrossing" value="-1"/>
      <property name="TimeToleranceZeroCrossing" value="-1"/>
      <property name="AlgebraicSolver" value="idacalc"/>
      <property name="JacobianMethod" value="1"/>
    </properties>
  </simulation>
</model>
