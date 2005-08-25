<%@  page language="java"  %>
<%@ taglib uri="tc.tld" prefix="tc" %>
<%@ taglib uri="tc-webtags.tld" prefix="tc-webtag" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>2005 TopCoder Open - Computer Programming Tournament - Advancers</title>

<jsp:include page="../../script.jsp" />
<link type="text/css" rel="stylesheet" href="/css/TCO05style.css"/>
</head>

<body>

<table cellpadding="4" cellspacing="2" align="center" border="0" class="bodyText" width="800">
<tr>
<td  class="bodyText">
<br/>

      <table cellpadding="0" cellspacing="3" align="center" border="0" class="bodyText" width="800">
         <tr>
            <td align="center" class="bodyText" colspan="3"><img src="/i/tournament/tco05/header_logo.gif"/></td>
      </tr>
         <tr>
            <td align="left" class="bodyText" colspan="2" nowrap><h2>jdmetz's odds</h2></td>
            <td class="bodyText" align=right>
            <!-- round links-->
            <jsp:include page="odds_links.jsp" >
               <jsp:param name="selectedRound" value="round3"/>
            </jsp:include>
            </td>
         </tr>

         <tr>
            <td align="left" class="bodyText" valign="top">
               <img src="/i/m/jdmetz_mug.gif" alt="" width="55" height="61" border="0" vspace="5" align="left" class="myStatsPhoto"/>
               By&#160;<tc-webtag:handle coderId="7459326" context="algorithm"/><br />
               <span class="smallText"><em>TopCoder Member</em></span><br clear="all" />
            </td>

            <td width="5"><img src="/i/clear.gif" alt="" width="5" height="1" border="0" /></td>

            <td align="left" width ="100%" class="bodyText" valign="top" rowspan="2">
            Beat the odds! These results of 1,000,000 Monte Carlo simulations predict your chances to advance in the 2005 TopCoder Open based only on your current TopCoder rating and volatility.  Try your best to beat these odds as you advance through the tournament.
            <br><br>
            The model used here is a normal distribution with the mean of your rating and standard deviation of your volatility, assuming every advancing coder competes in every round they are eligible for and scores more than 0 points.  There are obvious flaws with these assumptions, and this information is provided for entertainment purposes only.
            <br><br>
            The "Earnings" column includes prizes for the top three finishers in each room for the online rounds, excluding already completed rounds.
            </td>
         </tr>
      </table>
<br/>

<table cellpadding="4" cellspacing="0" align="center" border="0" width="100%">
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>
</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>

<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>
<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=272072" >SnapDragon</a></td><td class="r1o">3322</td><td class="r1o">263</td><td class="r1o">$8850.45</td><td class="r2o">100.00</td><td class="r2o">99.99</td><td class="r2o">22.78</td><td class="r2o">15.31</td><td class="r2o">91.23</td><td class="r3o">11.92</td><td class="r3o">17.90</td><td class="r3o">23.62</td><td class="r3o">24.85</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=144400" >tomek</a></td><td class="r1e">3315</td><td class="r1e">280</td><td class="r1e">$8632.85</td><td class="r2e">100.00</td><td class="r2e">99.97</td><td class="r2e">23.77</td><td class="r2e">15.66</td><td class="r2e">90.22</td><td class="r3e">12.06</td><td class="r3e">17.12</td><td class="r3e">21.81</td><td class="r3e">24.73</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10574855" >Petr</a></td><td class="r1o">3209</td><td class="r1o">357</td><td class="r1o">$5989.08</td><td class="r2o">99.94</td><td class="r2o">99.25</td><td class="r2o">31.62</td><td class="r2o">16.77</td><td class="r2o">77.15</td><td class="r3o">10.94</td><td class="r3o">12.45</td><td class="r3o">13.77</td><td class="r3o">16.11</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8357090" >misof</a></td><td class="r1e">3104</td><td class="r1e">417</td><td class="r1e">$3943.20</td><td class="r2e">99.41</td><td class="r2e">96.33</td><td class="r2e">34.47</td><td class="r2e">14.87</td><td class="r2e">61.64</td><td class="r3e">8.31</td><td class="r3e">8.21</td><td class="r3e">8.23</td><td class="r3e">9.62</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10481120" >ivan_metelsky</a></td><td class="r1o">3070</td><td class="r1o">455</td><td class="r1o">$3543.53</td><td class="r2o">98.74</td><td class="r2o">93.72</td><td class="r2o">34.21</td><td class="r2o">14.04</td><td class="r2o">54.96</td><td class="r3o">6.72</td><td class="r3o">6.61</td><td class="r3o">6.80</td><td class="r3o">8.93</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=270505" >John Dethridge</a></td><td class="r1e">3054</td><td class="r1e">212</td><td class="r1e">$2231.96</td><td class="r2e">100.00</td><td class="r2e">99.95</td><td class="r2e">60.21</td><td class="r2e">20.04</td><td class="r2e">53.44</td><td class="r3e">11.76</td><td class="r3e">9.07</td><td class="r3e">5.25</td><td class="r3e">2.00</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=311170" >bladerunner</a></td><td class="r1o">3025</td><td class="r1o">323</td><td class="r1o">$2455.78</td><td class="r2o">99.86</td><td class="r2o">98.29</td><td class="r2o">48.82</td><td class="r2o">16.52</td><td class="r2o">50.25</td><td class="r3o">8.18</td><td class="r3o">6.97</td><td class="r3o">5.47</td><td class="r3o">3.82</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8355516" >Eryx</a></td><td class="r1e">2985</td><td class="r1e">309</td><td class="r1e">$1974.01</td><td class="r2e">99.86</td><td class="r2e">98.17</td><td class="r2e">52.21</td><td class="r2e">15.25</td><td class="r2e">44.35</td><td class="r3e">7.04</td><td class="r3e">5.69</td><td class="r3e">4.08</td><td class="r3e">2.53</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7445961" >snewman</a></td><td class="r1o">2927</td><td class="r1o">314</td><td class="r1o">$1524.59</td><td class="r2o">99.72</td><td class="r2o">96.88</td><td class="r2o">50.20</td><td class="r2o">11.85</td><td class="r2o">36.69</td><td class="r3o">5.15</td><td class="r3o">3.91</td><td class="r3o">2.72</td><td class="r3o">1.63</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8394868" >rem</a></td><td class="r1e">2848</td><td class="r1e">376</td><td class="r1e">$1217.94</td><td class="r2e">98.28</td><td class="r2e">90.15</td><td class="r2e">40.18</td><td class="r2e">8.20</td><td class="r2e">28.09</td><td class="r3e">3.27</td><td class="r3e">2.50</td><td class="r3e">1.88</td><td class="r3e">1.30</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=310333" >kalinov</a></td><td class="r1o">2798</td><td class="r1o">350</td><td class="r1o">$895.79</td><td class="r2o">98.31</td><td class="r2o">89.54</td><td class="r2o">41.49</td><td class="r2o">6.47</td><td class="r2o">20.67</td><td class="r3o">2.29</td><td class="r3o">1.59</td><td class="r3o">1.04</td><td class="r3o">0.57</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7462740" >ploh</a></td><td class="r1e">2779</td><td class="r1e">420</td><td class="r1e">$933.50</td><td class="r2e">95.82</td><td class="r2e">82.38</td><td class="r2e">32.94</td><td class="r2e">5.94</td><td class="r2e">20.23</td><td class="r3e">2.02</td><td class="r3e">1.54</td><td class="r3e">1.20</td><td class="r3e">0.89</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=269554" >Yarin</a></td><td class="r1o">2750</td><td class="r1o">494</td><td class="r1o">$937.06</td><td class="r2o">92.12</td><td class="r2o">74.19</td><td class="r2o">25.55</td><td class="r2o">5.04</td><td class="r2o">19.20</td><td class="r3o">1.72</td><td class="r3o">1.39</td><td class="r3o">1.19</td><td class="r3o">1.19</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=274023" >venco</a></td><td class="r1e">2721</td><td class="r1e">241</td><td class="r1e">$552.95</td><td class="r2e">99.71</td><td class="r2e">94.48</td><td class="r2e">45.71</td><td class="r2e">2.50</td><td class="r2e">7.04</td><td class="r3e">0.59</td><td class="r3e">0.26</td><td class="r3e">0.09</td><td class="r3e">0.02</td></tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=287105" >lars</a></td><td class="r1o">2686</td><td class="r1o">274</td><td class="r1o">$531.85</td><td class="r2o">98.93</td><td class="r2o">89.47</td><td class="r2o">38.23</td><td class="r2o">2.19</td><td class="r2o">7.14</td><td class="r3o">0.54</td><td class="r3o">0.26</td><td class="r3o">0.11</td><td class="r3o">0.03</td></tr>
<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9906197" >krijgertje</a></td><td class="r1e">2679</td><td class="r1e">367</td><td class="r1e">$580.88</td><td class="r2e">95.57</td><td class="r2e">79.49</td><td class="r2e">30.10</td><td class="r2e">3.06</td><td class="r2e">11.21</td><td class="r3e">0.95</td><td class="r3e">0.59</td><td class="r3e">0.33</td><td class="r3e">0.17</td></tr>

<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>
</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>

<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>
<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8365685" >pparys</a></td><td class="r1o">2633</td><td class="r1o">292</td><td class="r1o">$478.70</td><td class="r2o">97.62</td><td class="r2o">83.32</td><td class="r2o">30.71</td><td class="r2o">1.48</td><td class="r2o">5.56</td><td class="r3o">0.36</td><td class="r3o">0.17</td><td class="r3o">0.06</td><td class="r3o">0.02</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7452866" >Im2Good</a></td><td class="r1e">2598</td><td class="r1e">407</td><td class="r1e">$463.59</td><td class="r2e">90.98</td><td class="r2e">68.08</td><td class="r2e">21.56</td><td class="r2e">1.88</td><td class="r2e">7.67</td><td class="r3e">0.52</td><td class="r3e">0.34</td><td class="r3e">0.21</td><td class="r3e">0.12</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=156592" >benetin</a></td><td class="r1o">2595</td><td class="r1o">296</td><td class="r1o">$435.32</td><td class="r2o">96.66</td><td class="r2o">79.03</td><td class="r2o">25.90</td><td class="r2o">1.04</td><td class="r2o">3.79</td><td class="r3o">0.22</td><td class="r3o">0.10</td><td class="r3o">0.04</td><td class="r3o">0.01</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=262936" >dgarthur</a></td><td class="r1e">2594</td><td class="r1e">528</td><td class="r1e">$530.46</td><td class="r2e">84.69</td><td class="r2e">58.87</td><td class="r2e">16.49</td><td class="r2e">2.26</td><td class="r2e">10.05</td><td class="r3e">0.70</td><td class="r3e">0.54</td><td class="r3e">0.43</td><td class="r3e">0.42</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10599449" >natori</a></td><td class="r1o">2586</td><td class="r1o">330</td><td class="r1o">$425.61</td><td class="r2o">94.68</td><td class="r2o">74.28</td><td class="r2o">23.32</td><td class="r2o">1.19</td><td class="r2o">4.60</td><td class="r3o">0.26</td><td class="r3o">0.14</td><td class="r3o">0.07</td><td class="r3o">0.02</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=277659" >radeye</a></td><td class="r1e">2582</td><td class="r1e">344</td><td class="r1e">$423.34</td><td class="r2e">93.82</td><td class="r2e">72.42</td><td class="r2e">22.36</td><td class="r2e">1.23</td><td class="r2e">4.97</td><td class="r3e">0.30</td><td class="r3e">0.16</td><td class="r3e">0.08</td><td class="r3e">0.03</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=293874" >nicka81</a></td><td class="r1o">2581</td><td class="r1o">421</td><td class="r1o">$444.84</td><td class="r2o">89.55</td><td class="r2o">65.22</td><td class="r2o">19.42</td><td class="r2o">1.70</td><td class="r2o">7.27</td><td class="r3o">0.47</td><td class="r3o">0.33</td><td class="r3o">0.20</td><td class="r3o">0.13</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=279471" >haha</a></td><td class="r1e">2572</td><td class="r1e">385</td><td class="r1e">$419.77</td><td class="r2e">91.19</td><td class="r2e">67.40</td><td class="r2e">20.09</td><td class="r2e">1.38</td><td class="r2e">5.92</td><td class="r3e">0.38</td><td class="r3e">0.22</td><td class="r3e">0.13</td><td class="r3e">0.06</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7390467" >lovro</a></td><td class="r1o">2552</td><td class="r1o">441</td><td class="r1o">$411.20</td><td class="r2o">87.17</td><td class="r2o">60.68</td><td class="r2o">17.03</td><td class="r2o">1.48</td><td class="r2o">6.63</td><td class="r3o">0.42</td><td class="r3o">0.27</td><td class="r3o">0.18</td><td class="r3o">0.12</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7479769" >marian</a></td><td class="r1e">2548</td><td class="r1e">244</td><td class="r1e">$427.29</td><td class="r2e">97.83</td><td class="r2e">79.93</td><td class="r2e">21.19</td><td class="r2e">0.33</td><td class="r2e">1.44</td><td class="r3e">0.05</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=275071" >antimatter</a></td><td class="r1o">2536</td><td class="r1o">486</td><td class="r1o">$454.19</td><td class="r2o">84.07</td><td class="r2o">56.14</td><td class="r2o">15.03</td><td class="r2o">1.49</td><td class="r2o">6.85</td><td class="r3o">0.43</td><td class="r3o">0.30</td><td class="r3o">0.22</td><td class="r3o">0.18</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=309982" >cyfra</a></td><td class="r1e">2521</td><td class="r1e">362</td><td class="r1e">$397.03</td><td class="r2e">90.22</td><td class="r2e">63.61</td><td class="r2e">16.80</td><td class="r2e">0.78</td><td class="r2e">3.47</td><td class="r3e">0.18</td><td class="r3e">0.10</td><td class="r3e">0.05</td><td class="r3e">0.02</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=301937" >RalphFurmaniak</a></td><td class="r1o">2512</td><td class="r1o">319</td><td class="r1o">$387.87</td><td class="r2o">92.52</td><td class="r2o">66.63</td><td class="r2o">16.70</td><td class="r2o">0.49</td><td class="r2o">2.25</td><td class="r3o">0.10</td><td class="r3o">0.04</td><td class="r3o">0.02</td><td class="r3o">0.01</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=264869" >ante</a></td><td class="r1e">2508</td><td class="r1e">349</td><td class="r1e">$383.03</td><td class="r2e">90.38</td><td class="r2e">63.23</td><td class="r2e">15.88</td><td class="r2e">0.60</td><td class="r2e">2.77</td><td class="r3e">0.13</td><td class="r3e">0.06</td><td class="r3e">0.03</td><td class="r3e">0.01</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=14970299" >Egor</a></td><td class="r1o">2508</td><td class="r1o">307</td><td class="r1o">$384.78</td><td class="r2o">93.11</td><td class="r2o">67.29</td><td class="r2o">16.30</td><td class="r2o">0.42</td><td class="r2o">1.93</td><td class="r3o">0.08</td><td class="r3o">0.03</td><td class="r3o">0.01</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7394165" >PaulJefferys</a></td><td class="r1e">2507</td><td class="r1e">357</td><td class="r1e">$382.66</td><td class="r2e">89.84</td><td class="r2e">62.33</td><td class="r2e">15.58</td><td class="r2e">0.64</td><td class="r2e">3.01</td><td class="r3e">0.14</td><td class="r3e">0.08</td><td class="r3e">0.03</td><td class="r3e">0.01</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=153656" >elizarov</a></td><td class="r1o">2507</td><td class="r1o">446</td><td class="r1o">$399.40</td><td class="r2o">84.61</td><td class="r2o">55.54</td><td class="r2o">14.07</td><td class="r2o">1.04</td><td class="r2o">4.94</td><td class="r3o">0.27</td><td class="r3o">0.18</td><td class="r3o">0.12</td><td class="r3o">0.07</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=261024" >grotmol</a></td><td class="r1e">2499</td><td class="r1e">333</td><td class="r1e">$373.90</td><td class="r2e">91.02</td><td class="r2e">63.58</td><td class="r2e">15.31</td><td class="r2e">0.49</td><td class="r2e">2.30</td><td class="r3e">0.09</td><td class="r3e">0.04</td><td class="r3e">0.02</td><td class="r3e">0.01</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9958600" >Zis</a></td><td class="r1o">2477</td><td class="r1o">339</td><td class="r1o">$351.22</td><td class="r2o">89.48</td><td class="r2o">60.16</td><td class="r2o">13.59</td><td class="r2o">0.41</td><td class="r2o">2.04</td><td class="r3o">0.08</td><td class="r3o">0.04</td><td class="r3o">0.01</td><td class="r3o">0.01</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7502813" >monsoon</a></td><td class="r1e">2447</td><td class="r1e">317</td><td class="r1e">$322.85</td><td class="r2e">89.34</td><td class="r2e">57.89</td><td class="r2e">11.48</td><td class="r2e">0.22</td><td class="r2e">1.20</td><td class="r3e">0.04</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=287266" >jms137</a></td><td class="r1o">2438</td><td class="r1o">297</td><td class="r1o">$318.29</td><td class="r2o">90.27</td><td class="r2o">58.43</td><td class="r2o">10.55</td><td class="r2o">0.14</td><td class="r2o">0.85</td><td class="r3o">0.02</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7442498" >marek.cygan</a></td><td class="r1e">2423</td><td class="r1e">428</td><td class="r1e">$302.84</td><td class="r2e">80.72</td><td class="r2e">47.58</td><td class="r2e">9.99</td><td class="r2e">0.46</td><td class="r2e">2.54</td><td class="r3e">0.11</td><td class="r3e">0.06</td><td class="r3e">0.04</td><td class="r3e">0.02</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=310430" >gepa</a></td><td class="r1o">2421</td><td class="r1o">312</td><td class="r1o">$299.29</td><td class="r2o">88.17</td><td class="r2o">54.62</td><td class="r2o">9.50</td><td class="r2o">0.14</td><td class="r2o">0.85</td><td class="r3o">0.02</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7390224" >gawry</a></td><td class="r1e">2419</td><td class="r1e">463</td><td class="r1e">$305.21</td><td class="r2e">78.69</td><td class="r2e">45.60</td><td class="r2e">9.59</td><td class="r2e">0.54</td><td class="r2e">3.01</td><td class="r3e">0.13</td><td class="r3e">0.08</td><td class="r3e">0.05</td><td class="r3e">0.03</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=287568" >tjq</a></td><td class="r1o">2418</td><td class="r1o">269</td><td class="r1o">$304.85</td><td class="r2o">91.21</td><td class="r2o">57.78</td><td class="r2o">8.48</td><td class="r2o">0.07</td><td class="r2o">0.41</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10676764" >algostorm</a></td><td class="r1e">2411</td><td class="r1e">560</td><td class="r1e">$326.12</td><td class="r2e">73.90</td><td class="r2e">41.34</td><td class="r2e">8.59</td><td class="r2e">0.77</td><td class="r2e">4.30</td><td class="r3e">0.22</td><td class="r3e">0.15</td><td class="r3e">0.12</td><td class="r3e">0.10</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11829284" >andrewzta</a></td><td class="r1o">2403</td><td class="r1o">234</td><td class="r1o">$300.78</td><td class="r2o">93.15</td><td class="r2o">58.45</td><td class="r2o">6.55</td><td class="r2o">0.02</td><td class="r2o">0.17</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8601171" >HilbertRaum</a></td><td class="r1e">2402</td><td class="r1e">396</td><td class="r1e">$278.77</td><td class="r2e">81.19</td><td class="r2e">46.74</td><td class="r2e">8.78</td><td class="r2e">0.29</td><td class="r2e">1.70</td><td class="r3e">0.07</td><td class="r3e">0.03</td><td class="r3e">0.02</td><td class="r3e">0.01</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7446789" >JongMan</a></td><td class="r1o">2402</td><td class="r1o">481</td><td class="r1o">$291.58</td><td class="r2o">76.67</td><td class="r2o">43.06</td><td class="r2o">8.71</td><td class="r2o">0.51</td><td class="r2o">2.90</td><td class="r3o">0.13</td><td class="r3o">0.09</td><td class="r3o">0.05</td><td class="r3o">0.04</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7485898" >Andrew_Lazarev</a></td><td class="r1e">2393</td><td class="r1e">435</td><td class="r1e">$275.38</td><td class="r2e">78.38</td><td class="r2e">43.93</td><td class="r2e">8.45</td><td class="r2e">0.35</td><td class="r2e">2.12</td><td class="r3e">0.08</td><td class="r3e">0.05</td><td class="r3e">0.03</td><td class="r3e">0.02</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=297823" >madking</a></td><td class="r1o">2369</td><td class="r1o">284</td><td class="r1o">$255.55</td><td class="r2o">86.76</td><td class="r2o">48.57</td><td class="r2o">5.95</td><td class="r2o">0.04</td><td class="r2o">0.31</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10332088" >martinp534</a></td><td class="r1e">2364</td><td class="r1e">221</td><td class="r1e">$265.53</td><td class="r2e">91.95</td><td class="r2e">52.20</td><td class="r2e">4.17</td><td class="r2e">0.01</td><td class="r2e">0.07</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7393427" >texel</a></td><td class="r1o">2342</td><td class="r1o">374</td><td class="r1o">$226.88</td><td class="r2o">78.04</td><td class="r2o">40.32</td><td class="r2o">6.08</td><td class="r2o">0.11</td><td class="r2o">0.80</td><td class="r3o">0.02</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7459080" >ardiankp</a></td><td class="r1e">2340</td><td class="r1e">261</td><td class="r1e">$232.14</td><td class="r2e">86.43</td><td class="r2e">45.01</td><td class="r2e">4.12</td><td class="r2e">0.01</td><td class="r2e">0.13</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8398526" >Tomy</a></td><td class="r1o">2338</td><td class="r1o">320</td><td class="r1o">$230.16</td><td class="r2o">81.35</td><td class="r2o">41.83</td><td class="r2o">5.11</td><td class="r2o">0.04</td><td class="r2o">0.37</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7546003" >dmytro</a></td><td class="r1e">2332</td><td class="r1e">361</td><td class="r1e">$226.19</td><td class="r2e">78.13</td><td class="r2e">39.48</td><td class="r2e">5.45</td><td class="r2e">0.09</td><td class="r2e">0.63</td><td class="r3e">0.01</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=308453" >overwise</a></td><td class="r1o">2331</td><td class="r1o">309</td><td class="r1o">$226.19</td><td class="r2o">81.67</td><td class="r2o">41.32</td><td class="r2o">4.69</td><td class="r2o">0.04</td><td class="r2o">0.29</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=12021745" >Rounder</a></td><td class="r1e">2327</td><td class="r1e">481</td><td class="r1e">$239.60</td><td class="r2e">71.62</td><td class="r2e">35.86</td><td class="r2e">6.09</td><td class="r2e">0.27</td><td class="r2e">1.72</td><td class="r3e">0.06</td><td class="r3e">0.04</td><td class="r3e">0.02</td><td class="r3e">0.02</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=263396" >Abednego</a></td><td class="r1o">2320</td><td class="r1o">400</td><td class="r1o">$223.67</td><td class="r2o">74.83</td><td class="r2o">36.87</td><td class="r2o">5.41</td><td class="r2o">0.12</td><td class="r2o">0.85</td><td class="r3o">0.02</td><td class="r3o">0.01</td><td class="r3o">0.01</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=263379" >StefanPochmann</a></td><td class="r1e">2319</td><td class="r1e">389</td><td class="r1e">$224.18</td><td class="r2e">75.29</td><td class="r2e">37.01</td><td class="r2e">5.28</td><td class="r2e">0.11</td><td class="r2e">0.75</td><td class="r3e">0.02</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15616795" >malcin</a></td><td class="r1o">2316</td><td class="r1o">572</td><td class="r1o">$259.14</td><td class="r2o">67.83</td><td class="r2o">33.38</td><td class="r2o">5.84</td><td class="r2o">0.41</td><td class="r2o">2.60</td><td class="r3o">0.11</td><td class="r3o">0.07</td><td class="r3o">0.06</td><td class="r3o">0.05</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=288584" >LunaticFringe</a></td><td class="r1e">2313</td><td class="r1e">349</td><td class="r1e">$222.03</td><td class="r2e">77.19</td><td class="r2e">37.46</td><td class="r2e">4.60</td><td class="r2e">0.06</td><td class="r2e">0.45</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10428762" >HiltonLange</a></td><td class="r1o">2313</td><td class="r1o">487</td><td class="r1o">$238.77</td><td class="r2o">70.45</td><td class="r2o">34.45</td><td class="r2o">5.75</td><td class="r2o">0.25</td><td class="r2o">1.66</td><td class="r3o">0.05</td><td class="r3o">0.03</td><td class="r3o">0.02</td><td class="r3o">0.01</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=346607" >kalmakka</a></td><td class="r1e">2300</td><td class="r1e">417</td><td class="r1e">$219.14</td><td class="r2e">72.44</td><td class="r2e">34.31</td><td class="r2e">4.90</td><td class="r2e">0.11</td><td class="r2e">0.86</td><td class="r3e">0.02</td><td class="r3e">0.01</td><td class="r3e">0.01</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=302501" >PMH</a></td><td class="r1o">2297</td><td class="r1o">323</td><td class="r1o">$209.36</td><td class="r2o">77.53</td><td class="r2o">36.00</td><td class="r2o">3.70</td><td class="r2o">0.03</td><td class="r2o">0.24</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=289435" >nullspace</a></td><td class="r1e">2287</td><td class="r1e">408</td><td class="r1e">$208.58</td><td class="r2e">71.79</td><td class="r2e">33.02</td><td class="r2e">4.42</td><td class="r2e">0.09</td><td class="r2e">0.70</td><td class="r3e">0.02</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7428266" >Klinck</a></td><td class="r1o">2286</td><td class="r1o">420</td><td class="r1o">$210.75</td><td class="r2o">71.23</td><td class="r2o">32.82</td><td class="r2o">4.52</td><td class="r2o">0.10</td><td class="r2o">0.78</td><td class="r3o">0.02</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=284007" >Ryan</a></td><td class="r1e">2269</td><td class="r1e">300</td><td class="r1e">$184.36</td><td class="r2e">76.51</td><td class="r2e">32.49</td><td class="r2e">2.56</td><td class="r2e">0.01</td><td class="r2e">0.11</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=2058177" >Revenger</a></td><td class="r1o">2245</td><td class="r1o">538</td><td class="r1o">$202.41</td><td class="r2o">64.01</td><td class="r2o">28.07</td><td class="r2o">4.20</td><td class="r2o">0.19</td><td class="r2o">1.38</td><td class="r3o">0.05</td><td class="r3o">0.03</td><td class="r3o">0.02</td><td class="r3o">0.02</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=278460" >TAG</a></td><td class="r1e">2231</td><td class="r1e">467</td><td class="r1e">$179.11</td><td class="r2e">64.88</td><td class="r2e">27.17</td><td class="r2e">3.51</td><td class="r2e">0.09</td><td class="r2e">0.75</td><td class="r3e">0.02</td><td class="r3e">0.01</td><td class="r3e">0.01</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=301395" >HardCoder</a></td><td class="r1o">2210</td><td class="r1o">417</td><td class="r1o">$156.89</td><td class="r2o">64.76</td><td class="r2o">25.24</td><td class="r2o">2.63</td><td class="r2o">0.04</td><td class="r2o">0.37</td><td class="r3o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextRed" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=286375" >bjacoke001</a></td><td class="r1e">2202</td><td class="r1e">362</td><td class="r1e">$141.66</td><td class="r2e">66.00</td><td class="r2e">24.07</td><td class="r2e">1.91</td><td class="r2e">0.01</td><td class="r2e">0.15</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=156216" >daveagp</a></td><td class="r1o">2199</td><td class="r1o">399</td><td class="r1o">$146.47</td><td class="r2o">64.38</td><td class="r2o">24.08</td><td class="r2o">2.25</td><td class="r2o">0.03</td><td class="r2o">0.25</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=155880" >NPermyakov</a></td><td class="r1e">2194</td><td class="r1e">441</td><td class="r1e">$150.70</td><td class="r2e">62.60</td><td class="r2e">23.82</td><td class="r2e">2.54</td><td class="r2e">0.04</td><td class="r2e">0.40</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=252076" >Wasteland</a></td><td class="r1o">2191</td><td class="r1o">338</td><td class="r1o">$130.14</td><td class="r2o">65.88</td><td class="r2o">22.65</td><td class="r2o">1.46</td><td class="r2o">0.01</td><td class="r2o">0.08</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=129672" >doeth</a></td><td class="r1e">2185</td><td class="r1e">282</td><td class="r1e">$114.90</td><td class="r2e">68.09</td><td class="r2e">20.97</td><td class="r2e">0.82</td><td class="r2e">0.00</td><td class="r2e">0.02</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7210729" >ssancho2</a></td><td class="r1o">2172</td><td class="r1o">419</td><td class="r1o">$134.62</td><td class="r2o">61.29</td><td class="r2o">21.89</td><td class="r2o">1.95</td><td class="r2o">0.02</td><td class="r2o">0.25</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10157606" >Ying</a></td><td class="r1e">2152</td><td class="r1e">439</td><td class="r1e">$126.97</td><td class="r2e">58.95</td><td class="r2e">20.34</td><td class="r2e">1.86</td><td class="r2e">0.03</td><td class="r2e">0.26</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8359547" >Jasko</a></td><td class="r1o">2144</td><td class="r1o">399</td><td class="r1o">$114.50</td><td class="r2o">59.17</td><td class="r2o">19.07</td><td class="r2o">1.41</td><td class="r2o">0.01</td><td class="r2o">0.14</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9927526" >Vedensky</a></td><td class="r1e">2125</td><td class="r1e">328</td><td class="r1e">$104.30</td><td class="r2e">58.79</td><td class="r2e">15.88</td><td class="r2e">0.67</td><td class="r2e">0.00</td><td class="r2e">0.03</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=153902" >evd</a></td><td class="r1o">2124</td><td class="r1o">227</td><td class="r1o">$69.68</td><td class="r2o">62.33</td><td class="r2o">11.74</td><td class="r2o">0.12</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=274498" >O_O</a></td><td class="r1e">2117</td><td class="r1e">319</td><td class="r1e">$97.10</td><td class="r2e">57.96</td><td class="r2e">14.90</td><td class="r2e">0.54</td><td class="r2e">0.00</td><td class="r2e">0.02</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=107835" >sjelkjd</a></td><td class="r1o">2114</td><td class="r1o">333</td><td class="r1o">$98.81</td><td class="r2o">57.24</td><td class="r2o">14.95</td><td class="r2o">0.62</td><td class="r2o">0.00</td><td class="r2o">0.02</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15485957" >embe</a></td><td class="r1e">2113</td><td class="r1e">484</td><td class="r1e">$136.10</td><td class="r2e">55.04</td><td class="r2e">18.06</td><td class="r2e">1.65</td><td class="r2e">0.03</td><td class="r2e">0.32</td><td class="r3e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=260828" >Larry</a></td><td class="r1o">2112</td><td class="r1o">312</td><td class="r1o">$91.84</td><td class="r2o">57.58</td><td class="r2o">14.19</td><td class="r2o">0.46</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8349097" >hauser</a></td><td class="r1e">2110</td><td class="r1e">240</td><td class="r1e">$66.61</td><td class="r2e">59.49</td><td class="r2e">11.07</td><td class="r2e">0.13</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8493941" >asaveljevs</a></td><td class="r1o">2102</td><td class="r1o">308</td><td class="r1o">$84.76</td><td class="r2o">56.42</td><td class="r2o">13.11</td><td class="r2o">0.39</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=345006" >DAle</a></td><td class="r1e">2100</td><td class="r1e">359</td><td class="r1e">$98.89</td><td class="r2e">55.20</td><td class="r2e">14.57</td><td class="r2e">0.67</td><td class="r2e">0.00</td><td class="r2e">0.04</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10610339" >singlethread</a></td><td class="r1o">2094</td><td class="r1o">284</td><td class="r1o">$73.23</td><td class="r2o">55.78</td><td class="r2o">11.60</td><td class="r2o">0.24</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7563318" >sghao126</a></td><td class="r1e">2092</td><td class="r1e">279</td><td class="r1e">$70.23</td><td class="r2e">55.61</td><td class="r2e">11.16</td><td class="r2e">0.21</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=2059354" >futo</a></td><td class="r1o">2086</td><td class="r1o">233</td><td class="r1o">$51.62</td><td class="r2o">55.75</td><td class="r2o">8.59</td><td class="r2o">0.07</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9998788" >athenachu71</a></td><td class="r1e">2081</td><td class="r1e">436</td><td class="r1e">$109.34</td><td class="r2e">52.57</td><td class="r2e">15.01</td><td class="r2e">1.02</td><td class="r2e">0.01</td><td class="r2e">0.12</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7501828" >BjarkeDahlEbert</a></td><td class="r1o">2072</td><td class="r1o">300</td><td class="r1o">$67.81</td><td class="r2o">52.58</td><td class="r2o">10.43</td><td class="r2o">0.23</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=278342" >adic</a></td><td class="r1e">2065</td><td class="r1e">290</td><td class="r1e">$61.94</td><td class="r2e">51.69</td><td class="r2e">9.56</td><td class="r2e">0.17</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7264865" >bogklug</a></td><td class="r1o">2064</td><td class="r1o">256</td><td class="r1o">$50.58</td><td class="r2o">51.84</td><td class="r2o">8.03</td><td class="r2o">0.08</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7233906" >superjoel</a></td><td class="r1e">2061</td><td class="r1e">335</td><td class="r1e">$74.82</td><td class="r2e">50.98</td><td class="r2e">10.93</td><td class="r2e">0.34</td><td class="r2e">0.00</td><td class="r2e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7281980" >eldering</a></td><td class="r1o">2049</td><td class="r1o">232</td><td class="r1o">$37.11</td><td class="r2o">49.40</td><td class="r2o">5.89</td><td class="r2o">0.03</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=268904" >szymcio</a></td><td class="r1e">2048</td><td class="r1e">288</td><td class="r1e">$55.81</td><td class="r2e">49.28</td><td class="r2e">8.31</td><td class="r2e">0.14</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10407399" >timmac</a></td><td class="r1o">2036</td><td class="r1o">273</td><td class="r1o">$46.67</td><td class="r2o">47.64</td><td class="r2o">6.94</td><td class="r2o">0.08</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=14886245" >tomekkulczynski</a></td><td class="r1e">2031</td><td class="r1e">268</td><td class="r1e">$43.60</td><td class="r2e">46.86</td><td class="r2e">6.43</td><td class="r2e">0.07</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8556047" >dzetkulict</a></td><td class="r1o">2029</td><td class="r1o">426</td><td class="r1o">$89.38</td><td class="r2o">47.82</td><td class="r2o">11.58</td><td class="r2o">0.59</td><td class="r2o">0.00</td><td class="r2o">0.06</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=269025" >assembler</a></td><td class="r1e">2025</td><td class="r1e">266</td><td class="r1e">$41.54</td><td class="r2e">45.81</td><td class="r2e">5.96</td><td class="r2e">0.05</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7443050" >mics</a></td><td class="r1o">2016</td><td class="r1o">351</td><td class="r1o">$64.73</td><td class="r2o">45.84</td><td class="r2o">8.62</td><td class="r2o">0.24</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7452777" >CrazyScratcher</a></td><td class="r1e">2013</td><td class="r1e">302</td><td class="r1e">$49.24</td><td class="r2e">44.78</td><td class="r2e">6.72</td><td class="r2e">0.10</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=108530" >dpecora</a></td><td class="r1o">2006</td><td class="r1o">374</td><td class="r1o">$71.71</td><td class="r2o">44.98</td><td class="r2o">8.81</td><td class="r2o">0.29</td><td class="r2o">0.00</td><td class="r2o">0.02</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11899489" >Jacek</a></td><td class="r1e">2003</td><td class="r1e">433</td><td class="r1e">$86.63</td><td class="r2e">45.32</td><td class="r2e">10.28</td><td class="r2e">0.50</td><td class="r2e">0.00</td><td class="r2e">0.05</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7360309" >dmks</a></td><td class="r1o">1996</td><td class="r1o">453</td><td class="r1o">$89.56</td><td class="r2o">44.96</td><td class="r2o">10.46</td><td class="r2o">0.56</td><td class="r2o">0.00</td><td class="r2o">0.07</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=299709" >Modulator</a></td><td class="r1e">1992</td><td class="r1e">284</td><td class="r1e">$40.47</td><td class="r2e">41.55</td><td class="r2e">5.01</td><td class="r2e">0.05</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7505977" >maze_pallas</a></td><td class="r1o">1992</td><td class="r1o">350</td><td class="r1o">$60.77</td><td class="r2o">43.23</td><td class="r2o">7.35</td><td class="r2o">0.17</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7495076" >jo_chang</a></td><td class="r1e">1990</td><td class="r1e">243</td><td class="r1e">$27.69</td><td class="r2e">39.77</td><td class="r2e">3.40</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=275640" >sql_lall</a></td><td class="r1o">1990</td><td class="r1o">299</td><td class="r1o">$45.27</td><td class="r2o">41.66</td><td class="r2o">5.53</td><td class="r2o">0.06</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8584656" >Ulan</a></td><td class="r1e">1990</td><td class="r1e">352</td><td class="r1e">$60.91</td><td class="r2e">42.89</td><td class="r2e">7.29</td><td class="r2e">0.17</td><td class="r2e">0.00</td><td class="r2e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7227699" >OvejaCarnivora</a></td><td class="r1o">1983</td><td class="r1o">468</td><td class="r1o">$89.40</td><td class="r2o">43.98</td><td class="r2o">10.15</td><td class="r2o">0.57</td><td class="r2o">0.00</td><td class="r2o">0.07</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10603164" >sheiech</a></td><td class="r1e">1979</td><td class="r1e">334</td><td class="r1e">$52.05</td><td class="r2e">41.17</td><td class="r2e">6.20</td><td class="r2e">0.11</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=289706" >mickle</a></td><td class="r1o">1968</td><td class="r1o">338</td><td class="r1o">$49.13</td><td class="r2o">40.05</td><td class="r2o">5.79</td><td class="r2o">0.10</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=299993" >cvoinescu</a></td><td class="r1e">1961</td><td class="r1e">319</td><td class="r1e">$41.76</td><td class="r2e">38.60</td><td class="r2e">4.95</td><td class="r2e">0.06</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15231364" >soul-net</a></td><td class="r1o">1959</td><td class="r1o">241</td><td class="r1o">$19.68</td><td class="r2o">34.84</td><td class="r2o">2.33</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11923016" >Idle</a></td><td class="r1e">1957</td><td class="r1e">404</td><td class="r1e">$63.63</td><td class="r2e">40.65</td><td class="r2e">7.31</td><td class="r2e">0.23</td><td class="r2e">0.00</td><td class="r2e">0.02</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7444051" >marijnk</a></td><td class="r1o">1956</td><td class="r1o">396</td><td class="r1o">$61.16</td><td class="r2o">40.34</td><td class="r2o">7.04</td><td class="r2o">0.20</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8440049" >bolu</a></td><td class="r1e">1954</td><td class="r1e">281</td><td class="r1e">$29.04</td><td class="r2e">36.24</td><td class="r2e">3.42</td><td class="r2e">0.02</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8584653" >cheetah</a></td><td class="r1o">1954</td><td class="r1o">478</td><td class="r1o">$81.45</td><td class="r2o">41.82</td><td class="r2o">9.10</td><td class="r2o">0.48</td><td class="r2o">0.00</td><td class="r2o">0.07</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7472513" >szd714</a></td><td class="r1e">1952</td><td class="r1e">327</td><td class="r1e">$40.91</td><td class="r2e">37.89</td><td class="r2e">4.78</td><td class="r2e">0.06</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15600311" >WSX</a></td><td class="r1o">1951</td><td class="r1o">380</td><td class="r1o">$55.32</td><td class="r2o">39.37</td><td class="r2o">6.37</td><td class="r2o">0.16</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7584235" >agh</a></td><td class="r1e">1947</td><td class="r1e">368</td><td class="r1e">$50.99</td><td class="r2e">38.73</td><td class="r2e">5.88</td><td class="r2e">0.13</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=293387" >abiczo</a></td><td class="r1o">1944</td><td class="r1o">292</td><td class="r1o">$29.20</td><td class="r2o">35.46</td><td class="r2o">3.41</td><td class="r2o">0.02</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7268916" >bsauerwine</a></td><td class="r1e">1941</td><td class="r1e">363</td><td class="r1e">$47.55</td><td class="r2e">37.92</td><td class="r2e">5.47</td><td class="r2e">0.10</td><td class="r2e">0.00</td><td class="r2e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7368306" >Matei</a></td><td class="r1o">1937</td><td class="r1o">372</td><td class="r1o">$48.53</td><td class="r2o">37.75</td><td class="r2o">5.57</td><td class="r2o">0.11</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8374582" >ionels</a></td><td class="r1e">1935</td><td class="r1e">329</td><td class="r1e">$36.70</td><td class="r2e">36.06</td><td class="r2e">4.24</td><td class="r2e">0.05</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11785316" >achan1058</a></td><td class="r1o">1932</td><td class="r1o">447</td><td class="r1o">$66.17</td><td class="r2o">39.34</td><td class="r2o">7.41</td><td class="r2o">0.29</td><td class="r2o">0.00</td><td class="r2o">0.03</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7440483" >moggy</a></td><td class="r1e">1926</td><td class="r1e">266</td><td class="r1e">$25.07</td><td class="r2e">31.79</td><td class="r2e">2.16</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7338095" >tomal</a></td><td class="r1o">1923</td><td class="r1o">317</td><td class="r1o">$37.80</td><td class="r2o">34.12</td><td class="r2o">3.49</td><td class="r2o">0.03</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10116099" >blekdrago</a></td><td class="r1e">1911</td><td class="r1e">406</td><td class="r1e">$57.93</td><td class="r2e">36.34</td><td class="r2e">5.59</td><td class="r2e">0.14</td><td class="r2e">0.00</td><td class="r2e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10611351" >sephiroth79</a></td><td class="r1o">1910</td><td class="r1o">419</td><td class="r1o">$60.60</td><td class="r2o">36.64</td><td class="r2o">5.85</td><td class="r2o">0.17</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10398672" >tosomjafakt</a></td><td class="r1e">1907</td><td class="r1e">382</td><td class="r1e">$50.39</td><td class="r2e">35.02</td><td class="r2e">4.80</td><td class="r2e">0.09</td><td class="r2e">0.00</td><td class="r2e">0.01</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10569084" >wdtseng</a></td><td class="r1o">1895</td><td class="r1o">417</td><td class="r1o">$55.91</td><td class="r2o">35.27</td><td class="r2o">5.35</td><td class="r2o">0.14</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=159100" >Googly</a></td><td class="r1e">1895</td><td class="r1e">207</td><td class="r1e">$7.84</td><td class="r2e">22.36</td><td class="r2e">0.47</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7454301" >paranoia</a></td><td class="r1o">1887</td><td class="r1o">603</td><td class="r1o">$94.28</td><td class="r2o">39.13</td><td class="r2o">9.10</td><td class="r2o">0.61</td><td class="r2o">0.01</td><td class="r2o">0.16</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=156491" >chogyonim</a></td><td class="r1e">1882</td><td class="r1e">355</td><td class="r1e">$37.11</td><td class="r2e">31.50</td><td class="r2e">3.37</td><td class="r2e">0.04</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11833324" >martin-at-ksp</a></td><td class="r1o">1870</td><td class="r1o">292</td><td class="r1o">$19.91</td><td class="r2o">26.57</td><td class="r2o">1.61</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=292000" >SmileyGirl256</a></td><td class="r1e">1862</td><td class="r1e">347</td><td class="r1e">$30.47</td><td class="r2e">29.11</td><td class="r2e">2.66</td><td class="r2e">0.02</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=108262" >mathgodleo</a></td><td class="r1o">1861</td><td class="r1o">203</td><td class="r1o">$4.71</td><td class="r2o">17.35</td><td class="r2o">0.23</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11773797" >yoho</a></td><td class="r1e">1861</td><td class="r1e">326</td><td class="r1e">$25.57</td><td class="r2e">27.78</td><td class="r2e">2.16</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7488783" >lyc1977</a></td><td class="r1o">1858</td><td class="r1o">494</td><td class="r1o">$62.61</td><td class="r2o">34.59</td><td class="r2o">5.89</td><td class="r2o">0.23</td><td class="r2o">0.00</td><td class="r2o">0.03</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10684103" >Barlennan</a></td><td class="r1e">1855</td><td class="r1e">302</td><td class="r1e">$19.60</td><td class="r2e">25.63</td><td class="r2e">1.57</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=154135" >tck</a></td><td class="r1o">1846</td><td class="r1o">197</td><td class="r1o">$3.35</td><td class="r2o">14.85</td><td class="r2o">0.13</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=287979" >Oblok</a></td><td class="r1e">1838</td><td class="r1e">291</td><td class="r1e">$14.91</td><td class="r2e">23.02</td><td class="r2e">1.11</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7296000" >connect4</a></td><td class="r1o">1838</td><td class="r1o">310</td><td class="r1o">$18.34</td><td class="r2o">24.43</td><td class="r2o">1.43</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11912240" >denpoz</a></td><td class="r1e">1835</td><td class="r1e">512</td><td class="r1e">$60.54</td><td class="r2e">33.46</td><td class="r2e">5.64</td><td class="r2e">0.22</td><td class="r2e">0.00</td><td class="r2e">0.03</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=299706" >cruizza</a></td><td class="r1o">1829</td><td class="r1o">373</td><td class="r1o">$29.51</td><td class="r2o">27.42</td><td class="r2o">2.52</td><td class="r2o">0.02</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10673764" >daroon</a></td><td class="r1e">1816</td><td class="r1e">300</td><td class="r1e">$13.60</td><td class="r2e">21.50</td><td class="r2e">0.97</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10185645" >Toivoa</a></td><td class="r1o">1815</td><td class="r1o">340</td><td class="r1o">$20.39</td><td class="r2o">24.16</td><td class="r2o">1.61</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15056181" >vlad89</a></td><td class="r1e">1808</td><td class="r1e">356</td><td class="r1e">$22.49</td><td class="r2e">24.57</td><td class="r2e">1.81</td><td class="r2e">0.02</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15580420" >cissy</a></td><td class="r1o">1803</td><td class="r1o">263</td><td class="r1o">$7.32</td><td class="r2o">17.22</td><td class="r2o">0.44</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=156485" >the_one_smiley</a></td><td class="r1e">1799</td><td class="r1e">291</td><td class="r1e">$10.32</td><td class="r2e">19.10</td><td class="r2e">0.68</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10483013" >haipt81</a></td><td class="r1o">1799</td><td class="r1o">289</td><td class="r1o">$15.63</td><td class="r2o">19.04</td><td class="r2o">0.67</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=14893757" >Aldanur</a></td><td class="r1e">1783</td><td class="r1e">236</td><td class="r1e">$7.40</td><td class="r2e">12.78</td><td class="r2e">0.15</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7462698" >kolodrub</a></td><td class="r1o">1782</td><td class="r1o">476</td><td class="r1o">$47.09</td><td class="r2o">28.37</td><td class="r2o">3.57</td><td class="r2o">0.09</td><td class="r2o">0.00</td><td class="r2o">0.01</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=268720" >amorosov</a></td><td class="r1e">1777</td><td class="r1e">341</td><td class="r1e">$21.05</td><td class="r2e">20.92</td><td class="r2e">1.13</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9972947" >quazee</a></td><td class="r1o">1776</td><td class="r1o">274</td><td class="r1o">$11.13</td><td class="r2o">15.67</td><td class="r2o">0.38</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15082287" >bus</a></td><td class="r1e">1761</td><td class="r1e">701</td><td class="r1e">$83.93</td><td class="r2e">33.88</td><td class="r2e">7.10</td><td class="r2e">0.44</td><td class="r2e">0.01</td><td class="r2e">0.16</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=13261056" >DamianK</a></td><td class="r1o">1759</td><td class="r1o">403</td><td class="r1o">$29.17</td><td class="r2o">23.21</td><td class="r2o">1.86</td><td class="r2o">0.02</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10513872" >ryanprichard</a></td><td class="r1e">1753</td><td class="r1e">314</td><td class="r1e">$14.09</td><td class="r2e">16.96</td><td class="r2e">0.60</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11962146" >i12xz</a></td><td class="r1o">1753</td><td class="r1o">425</td><td class="r1o">$32.28</td><td class="r2o">24.03</td><td class="r2o">2.15</td><td class="r2o">0.03</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10658366" >unChabonSerio</a></td><td class="r1e">1744</td><td class="r1e">634</td><td class="r1e">$67.96</td><td class="r2e">31.25</td><td class="r2e">5.57</td><td class="r2e">0.27</td><td class="r2e">0.00</td><td class="r2e">0.07</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8358583" >dispanser</a></td><td class="r1o">1717</td><td class="r1o">327</td><td class="r1o">$12.44</td><td class="r2o">15.21</td><td class="r2o">0.50</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=261043" >fpmc</a></td><td class="r1e">1711</td><td class="r1e">284</td><td class="r1e">$7.43</td><td class="r2e">11.49</td><td class="r2e">0.19</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11936978" >bruin</a></td><td class="r1o">1707</td><td class="r1o">591</td><td class="r1o">$52.82</td><td class="r2o">27.84</td><td class="r2o">4.09</td><td class="r2o">0.15</td><td class="r2o">0.00</td><td class="r2o">0.03</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8392826" >ppp</a></td><td class="r1e">1707</td><td class="r1e">254</td><td class="r1e">$4.74</td><td class="r2e">8.75</td><td class="r2e">0.07</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15041938" >pave_m</a></td><td class="r1o">1707</td><td class="r1o">387</td><td class="r1o">$19.42</td><td class="r2o">18.56</td><td class="r2o">1.03</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7340263" >gevak</a></td><td class="r1e">1697</td><td class="r1e">310</td><td class="r1e">$9.05</td><td class="r2e">12.58</td><td class="r2e">0.29</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11797255" >aubergineanode</a></td><td class="r1o">1691</td><td class="r1o">260</td><td class="r1o">$4.55</td><td class="r2o">8.25</td><td class="r2o">0.07</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=251134" >plan571</a></td><td class="r1e">1686</td><td class="r1e">369</td><td class="r1e">$14.76</td><td class="r2e">15.98</td><td class="r2e">0.68</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8405939" >matias</a></td><td class="r1o">1675</td><td class="r1o">347</td><td class="r1o">$11.33</td><td class="r2o">13.86</td><td class="r2o">0.44</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10447556" >phoenix53</a></td><td class="r1e">1668</td><td class="r1e">503</td><td class="r1e">$31.89</td><td class="r2e">22.23</td><td class="r2e">2.11</td><td class="r2e">0.04</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8460252" >tomek2</a></td><td class="r1o">1668</td><td class="r1o">292</td><td class="r1o">$5.83</td><td class="r2o">9.44</td><td class="r2o">0.12</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=278167" >Merlin[Kyiv]</a></td><td class="r1e">1663</td><td class="r1e">252</td><td class="r1e">$3.13</td><td class="r2e">6.19</td><td class="r2e">0.03</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7562337" >pppancho</a></td><td class="r1o">1657</td><td class="r1o">298</td><td class="r1o">$5.68</td><td class="r2o">9.23</td><td class="r2o">0.11</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8379758" >rajsekar_manok</a></td><td class="r1e">1657</td><td class="r1e">452</td><td class="r1e">$22.83</td><td class="r2e">19.02</td><td class="r2e">1.32</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7402415" >wstfgl</a></td><td class="r1o">1638</td><td class="r1o">525</td><td class="r1o">$31.07</td><td class="r2o">21.48</td><td class="r2o">2.03</td><td class="r2o">0.04</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=289307" >wrjxm</a></td><td class="r1e">1624</td><td class="r1e">408</td><td class="r1e">$25.32</td><td class="r2e">14.64</td><td class="r2e">0.63</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10651584" >jkburt</a></td><td class="r1o">1620</td><td class="r1o">408</td><td class="r1o">$24.82</td><td class="r2o">14.43</td><td class="r2o">0.60</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=160388" >ubergeek</a></td><td class="r1e">1619</td><td class="r1e">248</td><td class="r1e">$7.80</td><td class="r2e">4.09</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=13252136" >goo</a></td><td class="r1o">1615</td><td class="r1o">262</td><td class="r1o">$8.66</td><td class="r2o">4.79</td><td class="r2o">0.02</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=251591" >emmpee</a></td><td class="r1e">1612</td><td class="r1e">319</td><td class="r1e">$13.69</td><td class="r2e">8.34</td><td class="r2e">0.11</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7583175" >Windrider</a></td><td class="r1o">1601</td><td class="r1o">437</td><td class="r1o">$26.40</td><td class="r2o">14.99</td><td class="r2o">0.74</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7443907" >joely</a></td><td class="r1e">1599</td><td class="r1e">315</td><td class="r1e">$12.37</td><td class="r2e">7.51</td><td class="r2e">0.08</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=14946025" >Michael_Levin</a></td><td class="r1o">1599</td><td class="r1o">327</td><td class="r1o">$13.59</td><td class="r2o">8.28</td><td class="r2o">0.12</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7453062" >mcphee</a></td><td class="r1e">1598</td><td class="r1e">334</td><td class="r1e">$14.22</td><td class="r2e">8.70</td><td class="r2e">0.13</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10603824" >katiej76</a></td><td class="r1o">1597</td><td class="r1o">315</td><td class="r1o">$12.19</td><td class="r2o">7.38</td><td class="r2o">0.08</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15099923" >protik</a></td><td class="r1e">1594</td><td class="r1e">302</td><td class="r1e">$10.84</td><td class="r2e">6.44</td><td class="r2e">0.05</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=13288666" >mohandasks</a></td><td class="r1o">1587</td><td class="r1o">405</td><td class="r1o">$21.03</td><td class="r2o">12.54</td><td class="r2o">0.43</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=11878766" >nowakpl</a></td><td class="r1e">1586</td><td class="r1e">432</td><td class="r1e">$23.97</td><td class="r2e">13.94</td><td class="r2e">0.60</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7393957" >smartgirl</a></td><td class="r1o">1580</td><td class="r1o">467</td><td class="r1o">$27.86</td><td class="r2o">15.46</td><td class="r2o">0.88</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7584238" >bl</a></td><td class="r1e">1579</td><td class="r1e">279</td><td class="r1e">$7.99</td><td class="r2e">4.51</td><td class="r2e">0.02</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7313615" >covganet</a></td><td class="r1o">1575</td><td class="r1o">389</td><td class="r1o">$18.14</td><td class="r2o">10.99</td><td class="r2o">0.30</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8383272" >toschek</a></td><td class="r1e">1559</td><td class="r1e">305</td><td class="r1e">$9.01</td><td class="r2e">5.32</td><td class="r2e">0.04</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr>
<td class="rH1" colspan="4"></td><td class="rH2" colspan="5">Probability of advancing to:</td><td class="rH3" colspan="4">Probability of finishing as:</td>

</tr>
<tr>
<td class="rHHandle">Handle</td><td class="rH1">Rating</td><td class="rH1">Volatility</td><td class="rH1">Earnings</td>
<td class="rH2">Online 4</td>
<td class="rH2">Semifinals</td>
<td class="rH2">Wildcard</td>
<td class="rH2">Wildcard<br>Top Two</td>
<td class="rH2">Finals</td>

<td class="rH3">4th</td><td class="rH3">3rd</td><td class="rH3">2nd</td><td class="rH3">Champ</td>
</tr>

<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=7396531" >RandySaint</a></td><td class="r1o">1552</td><td class="r1o">325</td><td class="r1o">$10.19</td><td class="r2o">6.17</td><td class="r2o">0.06</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=14940443" >finrod</a></td><td class="r1e">1550</td><td class="r1e">475</td><td class="r1e">$25.71</td><td class="r2e">14.48</td><td class="r2e">0.76</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=9971384" >smell</a></td><td class="r1o">1533</td><td class="r1o">416</td><td class="r1o">$17.40</td><td class="r2o">10.61</td><td class="r2o">0.30</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=276230" >dimkadimon</a></td><td class="r1e">1533</td><td class="r1e">234</td><td class="r1e">$3.19</td><td class="r2e">1.36</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextYellow" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10474664" >lifeisbeautiful</a></td><td class="r1o">1508</td><td class="r1o">302</td><td class="r1o">$6.20</td><td class="r2o">3.59</td><td class="r2o">0.01</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextBlue" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=10219006" >kranjit</a></td><td class="r1e">1492</td><td class="r1e">369</td><td class="r1e">$10.30</td><td class="r2e">6.43</td><td class="r2e">0.09</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
<tr><td class="rHandleo"><a class="coderTextBlue" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=15186340" >staufk</a></td><td class="r1o">1491</td><td class="r1o">338</td><td class="r1o">$7.93</td><td class="r2o">4.86</td><td class="r2o">0.03</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r2o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td><td class="r3o">0.00</td></tr>

<tr><td class="rHandlee"><a class="coderTextBlue" href="http://www.topcoder.com/tc?module=MemberProfile&amp;cr=8354434" >Artur</a></td><td class="r1e">1487</td><td class="r1e">317</td><td class="r1e">$6.31</td><td class="r2e">3.73</td><td class="r2e">0.01</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r2e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td><td class="r3e">0.00</td></tr>
</table>
<br/>
<br/>
</td>
</tr>
</table>
</body>

</html>
