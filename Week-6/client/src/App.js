import React from 'react'
import axios from 'axios'
function App() {
  function getAllData(){
    axios.get('/data')
    .then(res => {
      mapItToLi(res.data)
      console.log(res.data)
    })
  }
  function mapItToLi(arr){
    arr.map(item => {
      let x = document.getElementById("App")
      let y = document.createElement('h3')
      y.innerHTML = `Avengers: ${item["Name/Alias"]}`
      x.append(y)
    })
  }
  return (
    <div id="App">
      <h2 id= "h2">Click Here To See More</h2>
      <button id= "button" onClick={getAllData}>Click me!</button>
    </div>
  );
}
export default App;