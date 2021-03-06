import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
import { BrowserRouter } from 'react-router-dom'
import { Provider } from 'react-redux'
import store from './store'
import 'semantic-ui-css/semantic.min.css'

ReactDOM.render(
  <App />, document.getElementById('root'));
registerServiceWorker();
