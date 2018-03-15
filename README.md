<h1> HealthMonitor API </h1>
<h2> Technologies Used </h2>
  <ul>
    <li> HTML
    <li> CSS </li>
    <li> Node.js </li>
    <li> PostgresSQL </li>
    <li> Ruby on Rails </li>
  </ul>
 <h2> User Stories </h2>
 <ul>
  <li> As a user I want to be able to sign up </li>
  <li> As a user I want to be able to sign in </li>
  <li> As a user I want to be able to change my password </li>
  <li> As a user I want to be able to insert heart rate data </li>
  <li> As a user I want to be able to insert body mass data </li>
  <li> As a user I want to be able to insert body mass index data </li>
  <li> As a user I want to be able to see my heart rate data </li>
  <li> As a user I want to be able to see my body mass data </li>
  <li> As a user I want to be able to see my body mass index data </li>
  <li> As a user I might want to upload an xml file of all my data. </li>
  <li> As a user I might want to share my data with a doctor</li>
  <h2> ERD Diagram </h2>
  <a href="https://imgur.com/Lrxhkdg"><img src="https://i.imgur.com/Lrxhkdg.png" title="source: imgur.com" /></a>
  <h2> Future Features </h2>
  <ul>
    <li> Allow the user to import an xml file </li>
    <li> Allow the user to create multiple devices </li>
  </ul>

  <h2> Development Process </h2>
 The first thing I did is the create action to allow the user to create health snapshots. This included making the health snapshot modal and creating the relationship between health snapshots and users. Secondly, I created the user profile modal and created the relationship between a user profile and a user. My next task was to write the actions for index, destroy, and edit for health snapshots.

<h2> Know Bugs </h2>

None at the moment
<h2> FrontEnd App </h2>
<a href="https://github.com/ppilon/healthmon">Link to FrontEnd App</a>
