import "bootstrap/dist/css/bootstrap.min.css";
import ListGroup from "./components/ListGroup";

function App() {
    return (
        <>
            <ListGroup
                title="Fruits"
                items={["Apple", "Banana", "Cherry", "Strawberry"]}
            />
        </>
    );
}

export default App;
