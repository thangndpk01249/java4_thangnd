/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var category
    category = new bootstrap.Modal(document.getElementById('category'), {
        keyboard: false
    })
    document.getElementById('btnCreatecategory').addEventListener('click', (event) => {
        alert('clicktest')
        category.show()
    })

    const formCat1 = document.getElementById("categoryForm12")
    if (formCat1) {
        category = new bootstrap.Modal(document.getElementById('category'), {
            keyboard: false
        })
        document.getElementById("categoryForm12").addEventListener('submit', (event) => {
            event.preventDefault();
            const txtName = document.querySelector('#txtName').value
            const txtimage = document.querySelector('#image').value
            const txtdescription = document.querySelector("#txtdescription").value || ''
            const txtId = document.querySelector("#txtId").value || null
            const errorName = document.querySelector('#error-name')
            const errorDes = document.querySelector('#error-des')
            const errormail = document.querySelector('#erro-mail')
            if (txtId) {
                //case update
                const jsonObj = {
                    id: Number(txtId),
                    name: txtName,
                    description: txtdescription,
                    image: txtimage
                }
                console.log('jsonObj',jsonObj)
                fetch('/asm_gd1_thangndpk01249/adminCategoryControler', {
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
                            const item = result.data
                            //success
//                            catModal.hide();
                            $('#category').modal('hide')
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
                        <td>${item.description}</td>
                        <td>${item.image}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="javascript:void(0);" onClick="EditCategory1(${item.id},{
                                    'name': '${item.name}',
                                    'email': '${item.description}',
                                    'password': '${item.image}'
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
                if (txtdescription === '') {
                    errorDes.innerHTML = "description required"
                }
                else {
                    const jsonObj = {
                        name: txtName,
                        description: txtdescription,
                        image: txtimage
                    }

                    fetch('/asm_gd1_thangndpk01249/adminCategoryControler', {
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
                                $('#category').modal('hide')
                                $('#catTable tbody tr:first').after(`
                            <tr data-id='${item.id}'>
                        <td><strong>${item.name}</strong></td>
                        <td>${item.description}</td>
                        <td>${item.image}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="javascript:void(0);" onClick="EditCategory1(${item.id},{
'name': '${item.name}',
'email': '${item.description}',
'password': '${item.image}'
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
    document.getElementById('categoryForm12').reset();
}
function EditCategory1(id, item) {
    alert('edit')
    var category
    category = new bootstrap.Modal(document.getElementById('category'), {
        keyboard: false
    })
    category.show()
    document.querySelector('#txtName').value = item.name || ''
    document.querySelector('#txtdescription').value = item.description || ''
    document.querySelector("#image").value = item.image || ''
    document.querySelector("#txtId").value = id || 0
    category.show()
}
function DeleteCategory(id) {
    alert(id)
    if (id) {
        const obj = {
            "id": id
        }
        fetch('/asm_gd1_thangndpk01249/adminCategoryControler', {
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