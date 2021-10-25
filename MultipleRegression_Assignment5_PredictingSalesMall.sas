*Problem 1 (10 marks) File: MALL. XLS;

Title 'Listing 1st 10 obs of MALL';
Proc print data=mall (obs=10);
Run;

Title 'Figure 1.1: Finding a multiple regresion model for the data';
Proc reg data=mall;
model Sales= Competitors Mall_Size Nearest_Competitor Size Windows;
Run;
Quit;

Title 'Figure 1.2: Predicting monthly sales';
Proc reg data=mall;
model Sales= Competitors Mall_Size Nearest_Competitor Size Windows / p;
Run;
Quit;


Title 'Figure 1.3: Using Stepwise Regression to find the best model';
Proc reg data=mall;
Stepwise: model Sales= Competitors Mall_Size Nearest_Competitor Size Windows / selection = stepwise;
Run;
Quit;


 
 