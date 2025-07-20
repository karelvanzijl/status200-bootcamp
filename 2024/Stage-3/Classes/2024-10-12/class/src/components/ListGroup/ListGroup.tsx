import { useState } from "react";

interface ListGroupProps {
    title: string;
    items: string[];
}

function ListGroup({ title, items }: ListGroupProps) {
    const [selectedIndex, setSelectedIndex] = useState(0);

    return (
        <>
            <h1>{title}</h1>
            <ul className="list-group">
                {items.sort().map(function (item, index) {
                    return (
                        <li
                            key={item}
                            className={
                                selectedIndex === index
                                    ? "list-group-item active"
                                    : "list-group-item"
                            }
                            onClick={() => setSelectedIndex(index)}
                        >
                            {item}
                        </li>
                    );
                })}
            </ul>
        </>
    );
}

/**
 * The following code snippet is an alternative implementation of the ListGroup component.
 */

// function ListGroup({ title, items }: ListGroupProps) {
//     const [selectedIndex, setSelectedIndex] = useState(0);

//     const handleClick = (index: number) => {
//         setSelectedIndex(index);
//     };

//     return (
//         <>
//             <h1>{title}</h1>
//             <ul className="list-group">
//                 {items.sort().map(function (item, index) {
//                     return (
//                         <li
//                             key={item}
//                             className={
//                                 selectedIndex === index
//                                     ? "list-group-item active"
//                                     : "list-group-item"
//                             }
//                             onClick={() => handleClick(index)}
//                         >
//                             {item}
//                         </li>
//                     );
//                 })}
//             </ul>
//         </>
//     );
// }

export default ListGroup;
