import { ReactNode } from "react";

interface ButtonProps {
    children: ReactNode;
    onClick: () => void;
    type?: "button" | "submit" | "reset";
    variant?:
        | "primary"
        | "secondary"
        | "success"
        | "danger"
        | "warning"
        | "info"
        | "light"
        | "dark"
        | "link";
}

const Button = ({
    children,
    onClick,
    type = "button",
    variant = "primary",
}: ButtonProps) => {
    return (
        <button type={type} className={`btn btn-${variant}`} onClick={onClick}>
            {children}
        </button>
    );
};

export default Button;
