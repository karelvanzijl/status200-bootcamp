interface ListGroupProps {
    title: string;
    items: string[];
}

function ListGroup({ title, items }: ListGroupProps) {
    return (
        <>
            <h1>{title}</h1>
            <ul className="list-group">
                {items.sort().map(function (item, index) {
                    return (
                        <li key={item} className="list-group-item">
                            {item}
                        </li>
                    );
                })}
            </ul>
        </>
    );
}

export default ListGroup;
