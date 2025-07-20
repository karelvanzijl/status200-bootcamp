import "bootstrap/dist/css/bootstrap.min.css";
import Counter from "./components/Counter/Counter";
import TodoList from "./components/Todo/TodoList";
import TodoListGroup from "./components/Todo/TodoWrapper";
import EmojiPicker from "./components/Emoji/EmojiPicker";
import ListGroup from "./components/ListGroup/ListGroup";
import TemperatureConverter from "./components/Converter/TemperatureConverter";

function App() {
    return (
        <>
            <div className="d-flex flex-column justify-content-center m-5 gap-5">
                <div className="col-12 col-sm-12 col-md-3">
                    <ListGroup
                        title="Cities"
                        items={["New York", "Kuala Lumpur", "Rome", "Paris"]}
                    />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <ListGroup
                        title="Names"
                        items={["John", "Jane", "Alice", "Bob", "Charlie"]}
                    />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <Counter />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <TodoList existingTasks={["Task 1", "Task 2"]} />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <TodoListGroup existingTasks={["Task 1", "Task 2"]} />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <EmojiPicker />
                </div>
                <hr />
                <div className="col-12 col-sm-12 col-md-3">
                    <TemperatureConverter />
                </div>
            </div>
        </>
    );
}

export default App;
