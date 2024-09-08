* Settings *
Documentation         Fábrica de Dados Dinâmicos e Estáticos

Library               OperatingSystem
Library               FakerLibrary


* Keywords *
Ler JSON
    [Arguments]       ${file_name}

    ${file_data}      Get File         ${EXECDIR}/resources/fixtures/${file_name}.json
    ${data}           Evaluate         json.loads('''${file_data}''')             json
    
    [return]          ${data}


Gerar Dados de Usuário Aleatório
    ${first_name}     FakerLibrary.First_Name
    ${last_name}      FakerLibrary.Last_Name
    ${email}          FakerLibrary.Email
    ${password}       FakerLibrary.Password
    ${company}        FakerLibrary.Company
    ${address}        FakerLibrary.Street_Address
    ${city}           FakerLibrary.City

    ${user_data}      Create Dictionary    first_name=${first_name}  last_name=${last_name}  password=${password}  email=${email}  company=${company}  address=${address}  city=${city}

    [return]          ${user_data}