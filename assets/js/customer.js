async function customer_registration(){
    var user_obj={};
    user_obj.firstname = document.getElementById("firstname").value;
    user_obj.lastname = document.getElementById("lastname").value;
    user_obj.gender = document.getElementById("gender").value;
    user_obj.email = document.getElementById("email").value;
    user_obj.mobile = document.getElementById("contact").value;
    user_obj.password = document.getElementById("password").value;
    user_obj.c_password = document.getElementById("cpassword").value;
    photo = document.getElementById("customFile");

    if(user_obj.name=='' || user_obj.lastname=='' || user_obj.email=='' || user_obj.mobile=='' || user_obj.password=='' || user_obj.c_password=='' || !photo.files){
        alert("Please fill all the Fields.");
        return true;
    }else if(user_obj.password!=user_obj.c_password){
        alert("Password mismatch.");
        return true;
    }else{

        ajax_request('check_acc_exist',JSON.stringify(user_obj),function(response){
            console.log("LOGIN DATA ************ ",response);
            if(response && response.success==1){
                if(parseFloat(response.exist)>0){
                    alert("User already exist.");
                    return true;
                }else{
                    register(user_obj);
                    return true;
                }
            }
        });  
    }
    return true;        
}

async function register(user_obj){
    var formData = new FormData();
        var json_data = {};
        json_data['method']='customer_registration';
        json_data['customer_rid']=555;
        formData.append("user_data", JSON.stringify(user_obj));
        formData.append("fileupload", photo.files[0]);
    
        const response = await fetch('http://localhost:8080/customer_reg',{
            method:'POST',
            body:formData
        });
        if(response.ok){
            ajax_request('customer_login',JSON.stringify(user_obj),function(response){
                if(response && response.success==1){
                    ajax_request_php('store_customer',response.customer,function(response){
                        console.log("REG DATA ************ ",response);
                        if(response && response.success==1){
                            alert("Registration Success.");
                            window.location.href="./";
                        }
                    });
                }
            });
        }else{
            alert("Registration Failed.");
        }
}

function customer_login(){
    var username = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    if(username=='' || password==""){
        alert("Please fill all the Fields.");
        return false;
    }else{
        var bking_obj={
            email:username,
            password:password
        };
        var send_data=JSON.stringify(bking_obj);
        ajax_request('customer_login',send_data,function(response){
            if(response && response.success==1){
                ajax_request_php('store_customer',response.customer,function(response){
                    console.log("LOGIN DATA ************ ",response);
                    if(response && response.success==1){
                        window.location.href="./";
                    }
                });
            }else{
                alert("Invalid Credentials.");
            }
        });
    }
}

function ajax_request_php(action_type,req_data,callback) {
    var api_data={};
    api_data['data'] = req_data;
    $.ajax({
        type:"POST",
        url:"http://localhost/oews/classes/customer_ctrls.php?type="+action_type,
        data:api_data,
        success:function(data){
            console.log(" RESPONSE DATA ***** ",data);
            callback(JSON.parse(data));
        },
        error:function(xhr,status,error){
			console.log("Error in Res",error);
		},
        complete:function(data){
            console.log("Completed.",data);
        }
    });
}

function ajax_request(action_type,req_data,callback) {
    var api_data={};
    api_data['data'] = req_data;
    $.ajax({
        type:"POST",
        url:"http://localhost:8080/"+action_type,
        data:api_data,
        success:function(data){
            console.log(" RESPONSE DATA ***** ",data);
            callback(JSON.parse(data));
        },
        error:function(xhr,status,error){
			console.log("Error in Res",error);
		},
        complete:function(data){
            console.log("Completed.",data);
        }
    });
}