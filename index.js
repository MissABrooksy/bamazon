var inquirer = require("inquirer");

var newOrder;

class Order {
constructor (id, quantity, stock){
    this.id = id
    this.quantity = quantity
    this.stock = stock
}
}

inquirer.prompt ([
    {
        name: 'id',
        message: 'What would you like to purchase?',
        type: 'input'
    }
,
{
    name: 'units',
    message: 'How many units would you like to purchase?',
    type: 'input'
}
]).then((answers)=> {
    var newOrder = new Order(
        answers.id,
        answers.units
)}
    );
    console.log(newOrder);