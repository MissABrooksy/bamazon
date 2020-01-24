var inquirer = require("inquirer");
var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,


    user: 'root',
    password: 'DIVAGIRL1020!',
    database: 'bamazon'
});

connection.connect((err) => {
    if (err) throw err;
    console.log('Connection successful');
    displayItems();
});

var displayItems = function () {
    connection.query(`SELECT * FROM products`, (err, res) => {
        if (err) throw err;
        // Log all results of the SELECT statement
        //console.log(res);
        connection.end();
        prompt(res)

    }
    );
}
//code to prompt items to be chosen
function prompt(res) {
    console.log(res)
    const names = res.map((product, index) => {
        return product.product_name
    })
    inquirer.prompt([
        {
            name: 'product_name',
            type: 'list',
            message: 'What would you like to purchase?',
            choices: names
        },
        {
            name: 'units',
            type: 'input',
            message: 'How many units would you like to purchase?',

        }
    ]).then(answers => {
        connection.query(`SELECT stock_quantity FROM products WHERE product_name = ${answers.product_name}`, (err, res) => {
            //console.log(answers)
            var amount = answers.units
            console.log(amount)
            // if(amount > product.stock_quantity){
            //     console.log('Insufficient Quantity')
            // }
            // else(console.log('You purchased ' + answers.units + " units of " + answers.product_name))
            console.log('You purchased ' + answers.units + " units of " + answers.product_name)
            console.log('Total is $' + (answers.price * answers.units))
        })

    })
    
}
