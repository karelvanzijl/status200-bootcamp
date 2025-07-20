interface TodoListItemProps {
    index: number;
    task: string;
    onRemoveTask: (index: number) => void;
}

function TodoListItem({ index, task, onRemoveTask }: TodoListItemProps) {
    return (
        <>
            <li className="list-group-item">
                {task}
                <button onClick={() => onRemoveTask(index)}>Remove</button>
            </li>
        </>
    );
}

export default TodoListItem;
