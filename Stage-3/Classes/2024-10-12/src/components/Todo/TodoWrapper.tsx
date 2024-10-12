import { useState } from "react";
import TodoListItem from "./TodoItem";

interface TodoListProps {
    existingTasks: string[];
}

function TodoListGroup({ existingTasks }: TodoListProps) {
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
            <h1>Todo List (v2)</h1>

            <input
                type="text"
                value={newTask}
                onChange={(e) => setNewTask(e.target.value)}
                placeholder="Enter a new task"
            />
            <button onClick={addTask}>Add Task</button>

            <ul className="list-group">
                {tasks.map((task, index) => (
                    <TodoListItem
                        key={index}
                        index={index}
                        task={task}
                        onRemoveTask={removeTask}
                    />
                ))}
            </ul>
        </>
    );
}

export default TodoListGroup;
