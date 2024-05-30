// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EmployeeManagement{


    // employee structure
    
    struct Employee{
        uint id;
        string name;
        uint age;
        string position;
    }



    // map to store employee with their id

    mapping(uint => Employee) private employees;

    uint private nextId = 0;


    // event to emmit add employee
    event EmpAdded(uint id, string  name, uint age, string position);

    // event to emit on remove employee
    event EmpUpdated(uint id, string  name, uint age, string position);

    // event on remove employee
    event EmpRemoved(uint id);

    // function to add an employee
    function addEmp(string memory _name, uint _age, string memory _position) public {
       employees[nextId] = Employee(nextId,_name,_age,_position);
       emit EmpAdded(nextId,_name,_age,_position);
       nextId++;
       
    }

    // update employee
    function UpdateEmp(uint _id,string memory _name, uint _age, string memory _position) public {
        require(_id < nextId,"no emp");
        employees[_id] = Employee(nextId,_name,_age,_position);
        emit EmpUpdated(nextId,_name,_age,_position);
    }
    
    // remove employee
    function RemoveEmp(uint _id)public {
        require(_id < nextId,"no emp");
        delete employees[_id];
        emit EmpRemoved(_id);
    }

    // get employee with their id
    function getEmp(uint _id)public view returns(uint,string memory,uint,string memory){
        require(_id < nextId,"no emp");
        Employee memory currEmp = employees[_id];
        return (currEmp.id,currEmp.name,currEmp.age,currEmp.position);
    }


}