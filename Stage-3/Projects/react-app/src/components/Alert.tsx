import { ReactNode } from "react";

interface AlertProps {
    children: ReactNode;
    dismissible?: boolean;
    onClose?: () => void;
    variant?:
        | "primary"
        | "secondary"
        | "success"
        | "danger"
        | "warning"
        | "info"
        | "light"
        | "dark";
}

const Alert = ({
    children,
    dismissible = true,
    onClose,
    variant = "primary",
}: AlertProps) => {
    return (
        <div
            className={`alert alert-${variant} ${
                dismissible && `alert-dismissible`
            }`}
            role="alert"
        >
            {children}
            <button
                type="button"
                className={`btn-close ${!dismissible && `d-none`}`}
                data-bs-dismiss="alert"
                aria-label="Close"
                onClick={onClose}
            ></button>
        </div>
    );
};

export default Alert;
