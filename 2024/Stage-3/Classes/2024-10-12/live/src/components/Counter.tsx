import { useState } from "react";

function Counter() {
    const [value, setValue] = useState(0);

    return (
        <>
            <h2>{value}</h2>
            <button onClick={() => setValue(value + 1)}>increase by 1</button>
            <button onClick={() => setValue(value - 1)}>decrease by 1</button>
            <button onClick={() => setValue(0)}>reset</button>
        </>
    );
}

export default Counter;
