import { useState } from "react";

interface BoardProps {
    cards: { title: string; items: string[] }[];
}

function Board({ cards }: BoardProps) {
    const [boardCards, setBoardCards] = useState(cards);

    const removeCard = (index: number) => {
        setBoardCards((prev) => prev.filter((_, i) => i !== index));
    };

    return (
        <div className="container">
            <h1 className="text-center mb-4">My Board (step 5)</h1>
            <p className="text-center mb-4">
                Introduce useState and add remove card logic.
            </p>
            <div className="row g-4">
                {boardCards.map((card, index) => (
                    <div key={index} className="col-lg-6 col-xl-4">
                        <div className="card shadow-sm">
                            <div className="card-header d-flex justify-content-between align-items-center">
                                <h5 className="mb-0">{card.title}</h5>
                                <button
                                    className="btn btn-sm btn-danger"
                                    onClick={() => removeCard(index)}
                                >
                                    Remove
                                </button>
                            </div>
                            <div className="card-body">
                                <ul className="list-group">
                                    {card.items.map((item, i) => (
                                        <li key={i} className="list-group-item">
                                            {item}
                                        </li>
                                    ))}
                                </ul>
                            </div>
                        </div>
                    </div>
                ))}
            </div>
            <div className="d-flex justify-content-center mt-5">
                <code className="border p-2 bg-secondary text-light">
                    <pre>
                        {`
const removeCard = (index: number) => {
    setBoardCards((prev) => prev.filter((_, i) => i !== index));
};

# _ 
  is a convention for unused variables, Vite compiler will
  throw an error if you use any other name for this variable
                        `}
                    </pre>
                </code>
            </div>
        </div>
    );
}

export default Board;
