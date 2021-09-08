import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <p>
          App name: <b>{process.env.REACT_APP_APP_NAME}</b>
        </p>
        <p>
          App version: <b>{process.env.REACT_APP_APP_VERSION}</b>
        </p>
      </header>
    </div>
  );
}

export default App;

