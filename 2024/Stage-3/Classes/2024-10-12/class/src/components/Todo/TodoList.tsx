import { useState } from "react";

interface TodoListProps {
    existingTasks: string[];
}

function TodoList({ existingTasks }: TodoListProps) {
    const [tasks, setTasks] = useState(existingTasks);
    const [newTask, setNewTask] = useState("");

    const addTask = () => {
        if (newTask.trim()) {
            setTasks([...tasks, newTask.trim()]);
            setNewTask("");
        }
    };

    const removeTask = (index: number) => {
        setTasks(tasks.filter((_, i) => i !== index));
    };

    return (
        <>
            <h1>Todo List (v1)</h1>

            <input
                type="text"
                value={newTask}
                onChange={(e) => setNewTask(e.target.value)}
                placeholder="Enter a new task"
            />
            <button onClick={addTask}>Add Task</button>

            <ul className="list-group">
                {tasks.map((task, index) => (
                    <li key={index} className="list-group-item">
                        {task}
                        <button onClick={() => removeTask(index)}>
                            Remove
                        </button>
                    </li>
                ))}
            </ul>
        </>
    );
}

export default TodoList;
