import React from "react";
import "./App.css";
import { Col, Container, Row, Button } from "react-bootstrap";

function App() {
  return (
    <div className="App">
      <Container>
        <Row>
          <Col>Welcome to Vazistyle</Col>
        </Row>
        <Button variant="primary">Shop Now</Button>{" "}
      </Container>
    </div>
  );
}

export default App;
