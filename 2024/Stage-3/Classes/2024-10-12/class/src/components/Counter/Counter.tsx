import { useState } from "react";

function Counter() {
    const [value, setValue] = useState(0);

    return (
        <>
            <div className="d-flex flex-column align-items-center justify-content-center">
                <h1>Counter</h1>
                <div className="d-flex gap-2 fw-bold fs-2">
                    <button onClick={() => setValue(value - 1)}>-</button>
                    <span>{value}</span>
                    <button onClick={() => setValue(value + 1)}>+</button>
                </div>
                <br />
                <button onClick={() => setValue(0)}>reset</button>
            </div>
        </>
    );
}

export default Counter;
