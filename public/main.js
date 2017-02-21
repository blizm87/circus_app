console.log("🎈");

const $body = $('body');

$('.allCircus').on('click', function(evt){
  $.get('circus', function(response){
    let html = '<ul>';
    response.forEach(function(circus){
      console.log(circus)
      html += `<li>Circus located: ${circus.location} `;
      html += `<button class='createClownBtn' value=${circus.id}>Create Clown</button>`;
      html += `<p>Starts: ${circus.starts_on} <br>Ends: ${circus.ends_on}</li>`;
    });
    html += '</ul>';
    $body.append(html);
    $('.createClownBtn').on('click', function(evt){
      let alphabet = ['abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'];
      let colors = ['red', 'blue', 'green', 'purple', 'orange', 'yellow', 'white', 'pink', 'black'];
      let randLetters = [];
      for (var i = 0; i < 9; i++){
        let randNum = Math.floor(Math.random() * alphabet[0].length);
        randLetters.push(alphabet[0].charAt(randNum));
      }
      let randColorNum = Math.floor(Math.random() * colors.length);
      let randCarNum = Math.floor(Math.random() * 2) + 1;
      let randName = randLetters.join('');
      let data = {
        clown: {
          name: randName,
          nose_color: colors[randColorNum],
          car_id: randCarNum,
          circus_id: evt.target.value
        }
      }
      $.post(`circus/${evt.target.value}/clowns`, data, function(response){
        console.log(response)
      });
    });
  });
});
