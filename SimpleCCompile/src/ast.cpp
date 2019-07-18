#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <sstream>
#include <map>
#include <stack>
#include "ast.h"

// Expression Handlers

const Expression* BinaryExpression::getLeft() const{
	return left;
}

std::string BinaryExpression::getOperator() const{
	return opCode;
}

const Expression* BinaryExpression::getRight() const{
	return right;
}

const Expression* UnaryExpression::getNext() const{
	return exp1;
}

std::string BinaryExpression::getType() const{
	return "Binary";
}

void BinaryExpression::printer() const{
	std::cout << "TYPE: Binary Expression with operation " << getOperator() << std::endl;
}

std::string UnaryExpression::getType() const{
	return "Unary";
}

void UnaryExpression::printer() const{
	std::cout << "TYPE : UnaryExpression of " << type << std::endl;
}

std::string IdentifierExpression::getType() const{
	return "Identifier";
}

void IdentifierExpression::printer() const{
	std::cout << "TYPE: IdentifierExpression with identifier of " << id << std::endl;
}

std::string IdentifierExpression::getName() const{
	return id;
}

std::string ConstantExpression::getType() const{
	return "Constant";
}

int ConstantExpression::getConstant() const{
	return num;
}

void ConstantExpression::printer() const{
	std::cout << "TYPE : ConstantExpression with constant of " << num << std::endl;
}

std::string BracketExpression::getType() const{
	return "Bracket";
}

void BracketExpression::printer() const{
	std::cout << "Brackets around ( expression ) with expression type = " << exp1->getType() << std::endl;
}

void codeGen(const int &registerName,mipsRegisters mips1,const std::string &order = ""){

	if(order == "return"){
		Register r1 = mips1.getValue(registerName);
		std::cout << "      li $t9," << r1.value << std::endl;
		std::cout << "      move $v0,$t9" << std::endl;
	}
	else{
		int x = 0;
		std::stringstream ss;
		std::string name;
		if(registerName >= 8 && registerName <= 15){
			x = registerName - 8;
		}
		else if(registerName >= 16 && registerName <= 27){
			x = registerName - 16;
		}
		ss << x;
		name = "$t" + ss.str();
		Register r1 = mips1.getValue(registerName);
		std::cout << "      li " << name << "," << r1.value << std::endl;
		ss.str("");		
	}

}

// Assignment Operators

std::string AssignmentOperator::getType(){
	return assignment;
}


// MIPS Registers Handlers

Register mipsRegisters::getValue(const int &registerName){
	return registers[registerName];
}

void mipsRegisters::Bind(const int &val,const int &registerName,const std::string &var){
	if(registerName == 0){
		// in MIPS, $0 is always 0 
		return;
	}
	registers[registerName].value = val;
	registers[registerName].varName = var;
	registers[registerName].inUse = true;
}

int mipsRegisters::registerLookup(const std::string &varName){
	for(int i=0;i<registers.size();i++){
		if(registers[i].varName == varName){
			return i;
		}
	}
	return -1;
}

void mipsRegisters::clearRegisters(){
	registers.clear();
	registers.resize(31);
}

void mipsRegisters::printAllRegisters(){
	for(int i=0;i<registers.size();i++){
		std::cout << "REGISTER : " << i << " - " << registers[i].varName << " - " << registers[i].value << std::endl;
	}
}

int mipsRegisters::findEmptyRegister(){
	for(int i=8;i<24;i++){
		if(!registers[i].inUse){
			return i;
		}
	}
	return -1;
}

// MIPS STACK HANDLER

void mips_stack::ShuntingYardAlgo(std::vector<Expression*> &completeTree,std::stack<Expression*> &mystack,const bool &debugMode,std::string declarator="",std::string assignOp=""){
	if(debugMode){
	  std::cout << "int a = 3 + 2...init" << std::endl; 
	}

	// store result $10 in stack, start from 500($sp)
	// we need a map, key = 
	int current_position = 500;
	int max_position = 500;

	for(int i=0;i<completeTree.size();i++){
		if(completeTree[i]->getType() == "Binary" || completeTree[i]->getType() == "Identifier" || completeTree[i]->getType() == "Constant"){
			if(completeTree[i]->getType() == "Constant"){
	      		mystack.push(completeTree[i]);
	      		
	   		}
	   		else if(completeTree[i]->getType() == "Identifier"){
	   			mystack.push(completeTree[i]);
	   			
	   		}
	   		else if(completeTree[i]->getType() == "Binary"){
	   			Expression* temp_x;
	   			Expression* temp_y;
	   			std::string strOp = completeTree[i]->getOperator();
	   			// temp_x handlers
	   			
	   			temp_x = mystack.top();
	   			if(temp_x->getType() == "Constant"){
	   				std::cout << "li 		$8," << temp_x->getConstant() << std::endl;
	   			}
	   			else if(temp_x->getType() == "Identifier"){
	   				if(temp_x->getPrefix()){
	   					std::cout << "sub 		$8,$0,$8" << std::endl;
	   				}
	   				std::cout << "lw 		$8," << getStackOffset(temp_x->getName()) << std::endl; 
	   			}
	   			else if(temp_x->getType() == "Stack"){
	   				std::stringstream ss;
	   				ss << current_position << "($sp)";
	   				std::cout << "lw 		$8," << ss.str() << std::endl;
	   				current_position += 4;
	   			}
	   			mystack.pop();
	   			// temp_y handlers

	   			temp_y = mystack.top();

	   			if(temp_y->getType() == "Constant"){

	   				std::cout << "li 		$9," << temp_y->getConstant() << std::endl;
	   			}
	   			else if(temp_y->getType() == "Identifier"){
	   				if(temp_y->getPrefix()){
	   					std::cout << "sub 		$9,$0,$9" << std::endl;
	   				}
	   				std::cout << "lw 		$9," << getStackOffset(temp_y->getName()) << std::endl; 
	   			}
	   			else if(temp_y->getType() == "Stack"){

	   				std::stringstream ss;
	   				ss << current_position << "($sp)";
	   				std::cout << "lw 		$9," << ss.str() << std::endl;
	   				current_position += 4;
	   			}
	   			mystack.pop();
	   			if(strOp == "+"){
	   				std::cout << "addu 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "-"){
	   				std::cout << "subu 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);;
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "*"){
	   				std::cout << "mul 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "/"){
	   				std::cout << "div 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "mfhi 		$10" << std::endl;
	   				std::cout << "mflo 		$10" << std::endl;
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "%"){
	   				std::cout << "div 		$0,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "mfhi 		$10" << std::endl;
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "&"){
	   				std::cout << "and 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
				else if(strOp == "|"){
	   				std::cout << "or 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "^"){
	   				std::cout << "xor 		$10,$9,$8" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "&&"){
	   				std::cout << "beq 		$8,$0,$L2" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << std::endl;
	   				std::cout << "beq 		$9,$0,$L3" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << std::endl;
	   				std::cout << "$L2:" << std::endl;
	   				std::cout << "li 		$10,1" << std::endl;
	   				std::cout << "b 		$L4" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << std::endl;
	   				std::cout << "$L3:" << std::endl;
	   				std::cout << "move 		$10,$0" << std::endl;
	   				std::cout << "$L4:" << std::endl;

	   				// crazy ass, less than 24 hr hack
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "||"){
	   				std::cout << "bne 		$8,$0,$L2" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << "beq 		$9,$0,$L3" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << "$L2:" << std::endl;
	   				std::cout << "li 		$10,1" << std::endl;
	   				std::cout << "b 		$L4" << std::endl;
	   				std::cout << "nop" << std::endl;
	   				std::cout << "$L3:" << std::endl;
	   				std::cout << "move 		$10,$0" << std::endl;
	   				std::cout << "$L4:" << std::endl;
	   				std::cout << "nop" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "=="){
	   				std::cout << "xor 		$10,$8,$9" << std::endl;
	   				std::cout << "sltu 		$10,$10,1" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "!="){
	   				std::cout << "xor 		$10,$9,$8" << std::endl;
	   				std::cout << "sltu 		$10,$0,$10" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;
	   				
	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "<"){
	   				std::cout << "slt 		$10,$9,$8" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == ">"){
	   				std::cout << "slt 		$10,$8,$9" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "<="){
	   				std::cout << "slt 		$10,$8,$9" << std::endl;
	   				std::cout << "xori 		$10,$10,0x1" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == ">="){
	   				std::cout << "slt 		$10,$9,$8" << std::endl;
	   				std::cout << "xori 		$10,$10,0x1" << std::endl;
	   				std::cout << "andi 		$10,$10,0x00ff" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == "<<"){
	   				std::cout << "sll 		$10,$9,$8" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   			else if(strOp == ">>"){
	   				std::cout << "sra 		$10,$9,$8" << std::endl;

	   				Expression* temp_exp = new Expression();	
	   				mystack.push(temp_exp);
	   				std::stringstream ss;
	   				ss << max_position << "($sp)";
	   				std::cout << "sw 		$10," << ss.str() << std::endl;
	   				max_position += 4;
	   			}
	   		}
		}
	}
	if(assignOp == "+="){
		// if any assignOp other than =, means that c += 3 and that variable is already declared
		// get current value of c
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "addu 		$10,$12,$10" << std::endl;
		// TODO: reuse stackoffset instead of insert(declarator)
	}
	else if(assignOp == "-="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "subu 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == "*="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "mul 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == "/="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "div 		$10,$12,$10" << std::endl;
		std::cout << "mfhi 		$10" << std::endl;
		std::cout << "mflo 		$10" << std::endl;
	}
	else if(assignOp == "%="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "div 		$0,$12,$10" << std::endl;
		std::cout << "mfhi 		$10" << std::endl;
	}
	else if(assignOp == "<<="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "sll 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == ">>="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "sra 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == "&="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "and 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == "^="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "xor 		$10,$12,$10" << std::endl;
	}
	else if(assignOp == "|="){
		std::cout << "lw 		$12," << getStackOffset(declarator) << std::endl;
		std::cout << "or 		$10,$12,$10" << std::endl;
	}

	// after this, $10 holds the completed value for Binary expression 3+2+5*2 etc...
	// set declarator ( int x) = $10
	//Insert(declarator);

	Insert(declarator);

	std::cout << "sw 		$10," << getStackOffset(declarator) << std::endl;
}

void mips_stack::Insert(std::string var){
	varToRegister[var] = get_stack_counter();

	// codegen - might not be needed
	//std::cout << "sw " << registerName << "," << varToRegister[var] << std::endl;
}

std::string mips_stack::get_stack_counter(){
	std::stringstream ss;
	stack_counter += 4;
	ss << stack_counter << "($sp)";
	return ss.str();
}

// returns stuff like 24($sp)
std::string mips_stack::getStackOffset(std::string identifier){
	return varToRegister[identifier];
}

// std::string StackExpression::getType() const{
// 	return "Stack";
// }

std::string Expression::getType() const{
	return "Stack";
}

void mips_stack::returnHandler(std::vector<Expression*> &completeTree){
	// TODO: return handler for binary expression, third case

	// 1. either return 0,1,2,3....
	// 2. or return a; return b; .....
	// 3. or return a+b+25+3*3; ......
	int identifiers = 0;
	int constants = 0;

	for(int i=0;i<completeTree.size();i++){
		if(completeTree[i]->getType() == "Constant"){
			constants++;
		}
		else if(completeTree[i]->getType() == "Identifier"){
			identifiers++;
		}
	}

	if(constants == 1 && identifiers == 0){
		// first case
		int ans;
		for(int i=0;i<completeTree.size();i++){
			if(completeTree[i]->getType() == "Constant"){
				ans = completeTree[i]->getConstant();
			}
		}
		std::cout << "li 		$2," << ans << std::endl;
	}
	else if(constants == 0 && identifiers == 1){
		// second case
		std::string ans;
		for(int i=0;i<completeTree.size();i++){
			if(completeTree[i]->getType() == "Identifier"){
				ans = getStackOffset(completeTree[i]->getName());
			}
		}
		std::cout << "lw 		$2," << ans << std::endl;
	}
	else{
		// third case - use Shunting Yard Algorithm
		std::stack<Expression* > mystack;
		ShuntingYardAlgo(completeTree,mystack,false);
		std::cout << "move 		$2,$10" << std::endl;
	}
}

std::string PostfixExpression::getFunctionName(const Expression* exp1) const{
	// pretty straightforward for identifiers, exp1->getNext()->getName();
	return exp1->getNext()->getName();
}

void PostfixExpression::codeGen(const Expression* exp1,mips_stack &mips32) const{
	std::cout << "		sw 		$31,992($sp)" << std::endl;
	std::cout << "		.option pic0" << std::endl;
	std::cout << "		jal " << getFunctionName(exp1) << std::endl;
	std::cout << "		nop" << std::endl;
	std::cout << "		.option pic2" << std::endl;
	std::cout << "		lw 		$31,992($sp)" << std::endl;
	mips32.Insert(getFunctionName(exp1));
	std::cout << "		sw 		$2," << mips32.getStackOffset(getFunctionName(exp1)) << std::endl;

	
	// clear stack after this, due to function call
}
