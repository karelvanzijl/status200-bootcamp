interface WelcomeEProps {
    people: { name: string; role: string }[];
}

const WelcomeE = ({ people }: WelcomeEProps) => {
    const handleClick = (e) => {
        document
            .querySelectorAll(".card")
            .forEach((card) => card.classList.remove("bg-info-subtle"));
        e.currentTarget.classList.add("bg-info-subtle");
    };

    return (
        <>
            <h3>Props + Event</h3>
            <div className="mt-3 d-flex flex-wrap">
                {people.map((person, index) => (
                    <div key={index} className="card m-2" onClick={handleClick}>
                        <div className="card-body">
                            <h5 className="card-title">{person.name}</h5>
                            <p className="card-text">Role: {person.role}</p>
                        </div>
                    </div>
                ))}
            </div>
        </>
    );
};

export default WelcomeE;
