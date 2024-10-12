import { useState } from "react";

interface TodoListProps {
    title: string;
    items: string[];
}

function TodoList(props: TodoListProps) {
    const [tasks, setTasks] = useState(props.items);

    const removeTask = (index: number) => {
        setTasks(
            tasks.filter((_, i) => {
                return index !== i;
            })
        );
    };

    return (
        <>
            <h1>{props.title}</h1>
            <input type="text" />
            <button>Add new task to list</button>
            <ul className="list-group">
                {tasks.map((item, index) => (
                    <li key={index} className="list-group-item">
                        {item}
                        <button onClick={() => removeTask(index)}>
                            remove
                        </button>
                    </li>
                ))}
            </ul>
        </>
    );
}

export default TodoList;
