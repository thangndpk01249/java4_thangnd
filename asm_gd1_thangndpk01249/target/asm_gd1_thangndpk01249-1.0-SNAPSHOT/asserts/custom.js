/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
document.getElementById('btnCreate').addEventListener('click', (event) => {
        
        alert('click')
    })
$(document).ready(function () {
    var catModal
    catModal = new bootstrap.Modal(document.getElementById('catModal'), {
        keyboard: false
    })
    document.getElementById('btnCreate').addEventListener('click', (event) => {
        
        catModal.show()
    })

    const formCat = document.getElementById("categoryForm1")
    if (formCat) {
        catModal = new bootstrap.Modal(document.getElementById('catModal'), {
            keyboard: false
        })
        document.getElementById("categoryForm1").addEventListener('submit', (event) => {
            event.preventDefault();
            const txtName = document.querySelector('#txtName').value
            const txtemail = document.querySelector('#txtemail').value
            const txtpassword = document.querySelector("#password").value || ''
            const txtId = document.querySelector("#txtId").value || null
            const errorName = document.querySelector('#error-name')
            const errorDes = document.querySelector('#error-des')
            
            if (txtId) {
                //case update
                const jsonObj = {
                    id: Number(txtId),
                    name: txtName,
                    email: txtemail,
                    password: txtpassword
                }
                console.log('jsonObj',jsonObj)
                fetch('/asm_gd1_thangndpk01249/adminUserControler', {
                    method: 'POST',
                    headers: {
                        'Accept': 'application/json, text/plain, */*',
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(jsonObj)
                })
                        .then(function (response) {
                            console.log('response', response)
                            return response.json();
                        })
                        .then(function (result) {
                            const item = result.data
                            //success
//                            catModal.hide();
                            $('#catModal').modal('hide')
                            $.toast({
                                heading: 'Success',
                                text: result.message,
                                position: 'top-right',
                                showHideTransition: 'slide',
                                icon: 'success'
                            })
                            resetForm();
                            console.log('theRowId',txtId)
                            var theRowId = $(`#catTable tbody tr[data-id='${Number(txtId)}']`);
                            console.log('remove',theRowId)
                            theRowId.remove();
                            $('#catTable tbody tr:first').after(`
                            <tr data-id='${item.id}'>
                        <td><strong>${item.name}</strong></td>
                        <td>${item.password}</td>
                        <td>${item.email}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="javascript:void(0);" onClick="EditCategory(${item.id},{
                                    'name': '${item.name}',
                                    'email': '${item.email}',
                                    'password': '${item.password}'
}
                                            )" ><i class="bx bx-edit-alt me-1"></i>Edit</a>
                                    <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i>Delete</a>
                                </div>
                            </div>
                        </td>
                    </tr>
`);
                            resetForm()
//                            location.reload();
                        })
                        .catch(function (error) {
                            //failed
                            console.log('Request failed', error);
                        })
            } else {
                //case post
                if (txtName === '') {
                    errorName.innerHTML = "name required"
                }
                if (txtemail === '') {
                    errorDes.innerHTML = "password required"
                }if(txtemail === ''){
                    errormail.innerHTML = "email required"
                }
                else {
                    const jsonObj = {
                        username: txtName,
                        email: txtemail,
                        password: txtpassword
                    }

                    fetch('/asm_gd1_thangndpk01249/adminUserControler', {
                        method: 'post',
                        headers: {
                            'Accept': 'application/json, text/plain, */*',
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify(jsonObj)
                    })
                            .then(function (response) {
                                console.log('response', response)
                                return response.json();
                            })
                            .then(function (result) {
                                //success
//                                catModal.hide();
                                const item = result.data
                                $('#catModal').modal('hide')
                                $('#catTable tbody tr:first').after(`
                            <tr data-id='${item.id}'>
                        <td><strong>${item.name}</strong></td>
                        <td>${item.password}</td>
                        <td>${item.email}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="javascript:void(0);" onClick="EditCategory(${item.id},{
'name': '${item.name}',
'email': '${item.email}',
'password': '${item.password}'
}
                                            )" ><i class="bx bx-edit-alt me-1"></i>Edit</a>
                                    <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i>Delete</a>
                                </div>
                            </div>
                        </td>
                    </tr>
`);
//                                location.reload();
                            })
                            .catch(function (error) {
                                //failed
                                console.log('Request failed', error);
                            })
                }


//            event.currentTarget.submit()
            }

        })
    }



})
function resetForm() {
    document.getElementById('categoryForm1').reset();
}
function EditCategory(id, item) {
    var catModal
    catModal = new bootstrap.Modal(document.getElementById('catModal'), {
        keyboard: false
    })
    catModal.show()
    document.querySelector('#txtName').value = item.name || ''
    document.querySelector('#txtemail').value = item.email || ''
    document.querySelector("#password").value = item.password || ''
    document.querySelector("#txtId").value = id || 0
    catModal.show()
}
function DeleteCategory(id) {
    alert(id)
    if (id) {
        const obj = {
            "id": id
        }
        fetch('/asm_gd1_thangndpk01249/adminUserControler', {
            method: 'DELETE',
            headers: {
                'Accept': 'application/json, text/plain, */*',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(obj)
        })
                .then(function (response) {
                    console.log('response', response)
                    return response.json();
                })
                .then(function (result) {
                    $.toast({
                                heading: 'Success',
                                text: result.message,
                                position: 'top-right',
                                showHideTransition: 'slide',
                                icon: 'success'
                            })
                            
                            setTimeout(()=>{
                                location.reload();
                            },2000)
                    location.reload();
                })
                .catch(function (error) {
                    //failed
                    console.log('Request failed', error);
                })
    }

}