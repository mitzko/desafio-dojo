Dado("que esteja no site e efetue o login do ORANGEHRM") do
  visit'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click

end

Quando("clicar na aba PIM e em Add Employee") do

  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_addEmployee"]').click
  

end

Entao("ira preencher os campos e cadastrar o novo empregado") do

  fill_in('firstName', :with => 'Hudson')
  fill_in('middleName', :with => 'Rafael')
  fill_in('lastName', :with => 'Azevedo')
  find(:xpath, '//*[@id="chkLogin"]').click
  fill_in('user_name', :with => 'Azevedo')
  fill_in('user_password', :with => 'Hud818329')
  fill_in('re_password', :with => 'Hud818329')
  find(:xpath, '//*[@id="btnSave"]').click  
 

end

Quando("clicar na aba PIM e em Employee List") do
 
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_viewEmployeeList"]').click  
  find(:xpath, '//*[@id="resultTable"]/tbody/tr[2]/td[2]/a').click  

end

Entao("preencher os campos para alterar um empregado existente") do

  find(:xpath, '//*[@id="btnSave"]').click  
  fill_in('personal_txtEmpMiddleName', :with => 'Inmetrics')
  fill_in('personal_txtEmpLastName', :with => 'Dojo')
  find(:xpath, '//*[@id="personal_optGender_1"]').click  
  find(:xpath, '//*[@id="personal_cmbNation"]/option[27]').click  
  find(:xpath, '//*[@id="btnSave"]').click  

end