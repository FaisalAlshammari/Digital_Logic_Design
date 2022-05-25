module NumberOfemptyParkSpaces(car1,car2,car3,numOfParks); 
	
	input car1, car2, car3;
	output [1:0] numOfParks ;
	
	assign numOfParks = car1 + car2 + car3;
	
endmodule