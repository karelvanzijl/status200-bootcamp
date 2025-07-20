import "bootstrap/dist/css/bootstrap.min.css";
import ListGroup from "./components/ListGroup";
import Counter from "./components/Counter";
import TodoList from "./components/TodoList";

function App() {
    return (
        <>
            {/* <ListGroup
                    title="Fruits"
                    items={["Apple", "Banana", "Cherry", "Strawberry"]}
                    />

                    <ListGroup title="Names" items={["Karel", "Ferry"]} /> 
                */}

            <Counter />

            <hr />

            <TodoList title="Groceries" items={["Milk", "Eggs"]} />
        </>
    );
}

export default App;
