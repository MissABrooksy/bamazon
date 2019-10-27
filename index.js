var inquirer = require("inquirer");

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
])