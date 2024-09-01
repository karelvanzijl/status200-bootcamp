import { useState } from "react";

interface Props {
    children: string;
    maxChars?: number;
}

const ExpandableText = ({ children, maxChars = 100 }: Props) => {
    const [truncated, setIsTruncated] = useState(true);

    const toggle = () => {
        setIsTruncated(!truncated);
    };

    if (children.length <= maxChars) return <div>{children}</div>;

    return (
        <>
            <div>
                {truncated ? children.substring(0, maxChars) + "..." : children}
            </div>
            <div>
                <button onClick={toggle}>{truncated ? "More" : "Less"}</button>
            </div>
        </>
    );
};

export default ExpandableText;
