<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parameters.aspx.cs" Inherits="franceWeb.WebForm1" %>
<link href="Style/Parameters.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <asp:Button runat="server" id="sqlTest" OnClick="sqlTest_Click"/>
           <div class="simName">
               Name of simulation
               <asp:textbox runat="server" ></asp:textbox>
            </div>         
            <div class ="simModel">
               <asp:RadioButtonList runat="server">
               <asp:ListItem Text="SIRS"></asp:ListItem>
               <asp:ListItem Text="SIERS"></asp:ListItem>
               </asp:RadioButtonList>
            </div>
            <div class="simInitialConditions">
                <p class="blockInput"><label id="lbS0">Initial Susceptible - S0:</label> <input type:"text" id="txtS0" class="blockTxt"></p>
                <p class="blockInput"><label id="lbE0">Initial Exposed - E0:</label> <input type:"text" id="txtE0" class="blockTxt"></p>
                <p class="blockInput"><label id="lbI0">Initial Infected - I0:</label> <input type:"text" id="txtI0" class="blockTxt"></p>
                <p class="blockInput"><label id="lbR0">Initial Removed - R0:</label> <input type:"text" id="txtR0" class="blockTxt"></p>
                
            </div>

            <div class="simInitialParameters">
                <p class="blockInput"><label id="lbMaxTime">Running max. time - T:</label> <input type:"text" id="txtTmax" class="blockTxt"></p>
                <p class="blockInput"><label id="lbTimeStep">Time step - dlt:</label> <input type:"text" id="txtTimeStep" class="blockTxt"></p>
                <p class="blockInput"><label id="lbNumTrajectories">Number of trajectories for stochastic simulation - NTRJ:</label> <input type:"text" id="txtNumTrajectories" class="blockTxt"></p>
                <p class="blockInput"><label id="lbMeanToStd">Mean-to-standard deviation ratio - m2sig:</label> <input type:"text" id="txtMeanToStd" class="blockTxt"></p>
                <p class="blockInput"><label id="lbTreshold">Threshold</label> <input type:"text" id="txtTreshold" class="blockTxt"></p>
            </div>

            <div class="modelParameter">
                <div class="density">
                    <label id="lbDensity">Density:</label>
                    <input type="checkbox" />
                </div>
                <div class ="blockSliderInput">
                    <div>
                    <label id="lbBasicReproductionNumber">Basic reproduction number for I - RZero:</label>                  
                    <input type="range" value="10" class="slider" id="sliderBasicReproduction" min="0" max="100" onchange="updateTextInput(this.value,'txtBasicReproduction');"/><input type="text" id="txtBasicReproduction" class="blockTxt">
                    </div>
                    <div>
                    <label id="lbXfrac">Fraction of E-->I - xfrac:</label>                  
                    <input type="range" value="10" class="slider" id="sliderXfrac" min="0" max="100" onchange="updateTextInput(this.value,'txtXfrac');"/><input type="text" id="txtXfrac" class="blockTxt">
                    </div>
                    <div>
                    <label id="lbYfrac">Fraction of I-->dead - yfrac:</label>                  
                    <input type="range" value="10" class="slider" id="sliderYfrac" min="0" max="100" onchange="updateTextInput(this.value,'txtYfrac');"/><input type="text" id="txtYfrac" class="blockTxt">
                    </div>
                    <div>
                    <label id="lbTauExpo">Exposed duration - tauexpo:</label>                  
                    <input type="range" value="10" class="slider" id="sliderTauExpo" min="0" max="100" onchange="updateTextInput(this.value,'txtTauExpo');"/><input type="text" id="txtTauExpo" class="blockTxt">
                    </div>
                    <div>
                    <label id="lbTauInf">Infectious duration before recovery - tauinf:</label>                  
                    <input type="range" value="10" class="slider" id="sliderTauInf" min="0" max="100" onchange="updateTextInput(this.value,'txtTauInf');"/><input type="text" id="txtTauInf" class="blockTxt">
                    </div>
                    <div>
                    <label id="lbTaudeath">Infectious duration before death - taudeath:</label>                  
                    <input type="range" value="10" class="slider" id="sliderTaudeath" min="0" max="100" onchange="updateTextInput(this.value,'txtTaudeath');"/><input type="text" id="txtTaudeath" class="blockTxt">
                    </div>
                     <div>
                    <label id="lbTauimn">Imunity duration - tauimm:</label>                  
                    <input type="range" value="10" class="slider" id="sliderTauimn" min="0" max="100" onchange="updateTextInput(this.value,'Tauimn');"/><input type="text" id="txtTauimn" class="blockTxt">
                    </div>
                    <script>
                       function updateTextInput(val, id) {
                           console.log(val);
                           console.log(id);
                           document.getElementById(id).value = val;
                            }
                   </script>
                    </div>
                
            </div>
      </div>
        
                
      
    </form>
</body>
</html>
