//+------------------------------------------------------------------+
//|                                                      Origins.mq5 |
//|  Krzysztof Paprocki, Mateusz Owczarek, Adam Kotecki, Mariusz Amb |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Krzysztof Paprocki, Mateusz Owczarek, Adam Kotecki, Mariusz Ambroziak"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
//MFI DODAĆ
double iRSIBuffer[];
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
         CopyBuffer(iRSI(_Symbol,PERIOD_H4,14,PRICE_CLOSE),0,0,1,iRSIBuffer);
         double irsiv = iRSIBuffer[0];
         Comment (irsiv);

         if(irsiv<30.00)
         {
            Alert("Buy");
         }
         if(irsiv>70.00)
         {
            Alert("Sell");
         }
      
   return(rates_total);
}
//+------------------------------------------------------------------+
