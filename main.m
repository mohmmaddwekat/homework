/******************************************************************************

                            Online Objective-C Compiler.
                Code, Compile, Run and Debug Objective-C program online.
Write your code in this editor and press "Run" button to execute it.

*******************************************************************************/



#import <Foundation/Foundation.h>
#import "shape.h"
#import "Movable.h"

#import "point.h"
#import "color.h"
#import "Line.h"

#import "ClosedShape.h"
#import "Ellipse.h"
#import "Circle.h"
#import "Square.h"
#import "Triangle.h"

#include <stdio.h>

int main(int argc, const char * argv[]){
	int nFails = 0;
	int nBonusFails = 0;
	int nTest = 1;
	printf("halow");
	int nBonus = 0;
	Protocol* protocol = @protocol(MCMovable);
	
	// Test for MCLine class //
	
	MCPoint *p1 = [[MCPoint alloc] initWithValuespoint:4:2];
	MCPoint *p2 = [[MCPoint alloc] initWithValuespoint:4:7];
	MCPoint *p3 = [[MCPoint alloc] initWithValuespoint:8:2];
	MCPoint *p4 = [[MCPoint alloc] initWithValuespoint:4:2];
	MCPoint *p5 = [[MCPoint alloc] initWithValuespoint:2:2];
	MCLine * line = [[MCLine alloc] initWithValuesLine:p1:p2];

	//1
	if([line getLength] != 5){
		printf("@You code fails Test#%d\n",nTest);
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	//2
	if([MCLine calculateLength:p1:p2]!= 5){
		printf("@You code fails Test#%d\n",nTest);
		nFails++; 
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	


	//Test for polygon class//
	[ p1 setX:-5];
	[ p1 setY:2];
	
	[ p2 setX:7];
	[ p2 setY:2];
	
	[ p3 setX:7];
	[ p3 setY:-3];
	
	[ p4 setX:-5];
	[ p4 setY:-3];

	
	MCPolygon * polygon = [[MCPolygon alloc] init];
	
	//3
	if( [polygon getPoint:0] != nil){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	
	[polygon add:p1];
	[polygon add:p2];
	[polygon add:p3];
	[polygon add:p4];
	
	
	nTest++;
	//4
	if ( ![polygon isRectangle] ){
		printf("@You code fails Test#%d\n",nTest);
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;

	
	//5
	if ( [polygon getPerimeter] != 34){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	
	[polygon add:p5];
	//6
	if([polygon isRectangle]){
		printf("@You code fails Test#%d\n",nTest);
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;

	//Test for Rectangle class //
	p1 = [[MCPoint alloc] initWithValuespoint:4:5];
	MCRectangle * rect = [MCRectangle createRectangle:p1:4:3];
	//7
	if( rect == nil){
		printf("@You code fails Test#%d\n",nTest);		
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;

	//8

	if ([rect getArea] != 12){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	//9
// 	p2 = [rect getPoint:2];
	if([[rect getPoint:2] X] != 7 || [[rect getPoint:2] Y] != -3){
		printf("You code fails ExtraMark Test#%d %d %d\n",nTest,p2.X,p2.Y);
        nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	nTest++;
	
	// test MCSquare class //
	p1 = [[MCPoint alloc] initWithValuespoint:1:1];
	MCSquare * sqr = [MCSquare createSquare:p1:4];
	//10
	if([sqr getSide] != 4){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	//11
	if([sqr getHeight] != [sqr getWidth]){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	//12
	if([sqr conformsToProtocol:protocol]){
		[sqr moveRight:3];
		[sqr moveUp:3];
		[sqr moveBy:0:0];
		MCPoint * check = [sqr getPoint:0];
		if( [check X] != -2 || [check Y] != 5){
			printf("@You code fails Test#%d\n",nTest);	
			nFails += 1;
		}else{
			printf("@pass Test#%d\n",nTest);
		}	
	}
	nTest += 1;
	
	//Test MCtriangle class

	[ p1 setX:0];
	[ p1 setY:0];
	
	
	[ p2 setX:3];
	[ p2 setY:0];

	[ p3 setX:0];
	[ p3 setY:4];

	MCTriangle *triangle = [MCTriangle createTriangle:p1:p2:p3];
	
	//13
	if([triangle getArea] != 6.0){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	//14
	if(![triangle isRightTriangle]){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	p1 = [[MCPoint alloc] initWithValuespoint:2:0];
	p2 = [[MCPoint alloc] initWithValuespoint:5:1];
	p3 = [[MCPoint alloc] initWithValuespoint:7:0];
	
	[triangle update:p1:p2:p3];
	//15
	if([triangle isRightTriangle] && ![triangle isTriangle]){
		printf("@You code fails Test#%d\n",nTest);		
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;

	//Test MCCircle class //
	p1 = [[MCPoint alloc] initWithValuespoint:0:0];

	MCCircle * circle = [[MCCircle alloc] initWithValues:p1:1];

// 	16
	if([circle conformsToProtocol:protocol]){
		[circle moveRight:2];
		[circle moveDown:1];
		[circle moveBy:0:1];
		[circle moveLeft:5];
		MCPoint * check = [circle getCenter];
		if( [check x] != -3 || [check y] != 0){
			printf("@You code fails Test#%d\n",nTest);	
			nFails += 1;
		}else{
			printf("@pass Test#%d\n",nTest);
		}
	}

	nTest ++;
	
	//17
	
	if([circle major] != [circle minor]){
		printf("You code fails ExtraMark Test#%d\n",nTest);
        nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	nTest++;
	
	// test MCEllipse class//
	MCPoint *p6 = [[MCPoint alloc] initWithValuespoint:6:1];
	MCPoint *p7 = [[MCPoint alloc] initWithValuespoint:3:5];
	MCEllipse * elip = [MCEllipse createEllipse:p6:p7:13:12];
	//18
	if(elip == nil){
		printf("@You code fails Test#%d\n",nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	//19
	if([elip getArea] < 122.521
		&& [elip getArea] > 122.523){
		printf("%f@You code fails Test#%d\n",[elip getArea],nTest);	
		nFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
	}
	nTest++;
	
	//20
	if([elip color] == nil){
		printf("You code fails ExtraMark Test#%d\n",nTest);
		nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	nTest++;
	
	[ p1 setX:0];
	[ p1 setY:0];
	
	[ p2 setX:2];
	[ p2 setY:0];
	
	[ p3 setX:0];
	[ p3 setY:5];
	
	[ p4 setX:2];
	[ p4 setY:5];
	
	MCPolygon * polygon1 = [[MCPolygon alloc] init];
	
	[polygon1 add:p1];
	[polygon1 add:p2];
	[polygon1 add:p3];
	[polygon1 add:p4];
	
	//21
	if([polygon1 isRectangle]){
		printf("You code fails ExtraMark Test#%d\n",nTest);
        nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	nTest++;
	
	//22
	if([MCLine calculateLength:p1:nil] != 0){
		printf("You code fails ExtraMark Test#%d\n",nTest);
        nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	nTest++;

	//24
	elip = [[MCEllipse alloc] initWithValues:p1:p2:10:2];
	if(elip != nil){
		printf("You code fails ExtraMark Test#%d (This is not ellipse)\n",nTest);
		nBonusFails++;
	}else{
		printf("@pass Test#%d\n",nTest);
		nBonus++;
	}
	
	
	printf("\nall test : %d\n",nTest);
	printf("number of Bouns test%d\n",nBonus);
	printf("fail in : %d\n",nFails);
	printf("extar fails in %d\n",nBonusFails);
	
	return 0;	
}
