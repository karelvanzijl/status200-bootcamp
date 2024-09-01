import { useState } from "react";
import { produce } from "immer";
import ExpandableText from "./components/ExpandableText";

function App() {
    const [game, setGame] = useState({
        id: 1,
        player: {
            name: "John",
        },
    });

    const handleGameClick = () => {
        // const newGame = produce(game, (draft) => {
        //     draft.player.name = "Jane";
        // });
        // setGame(newGame);

        setGame({ ...game, player: { ...game.player, name: "Jane" } });
    };

    const [pizza, setPizza] = useState({
        name: "Spicy Pepperoni",
        toppings: ["Mushroom"],
    });

    const handlePizzaClick = () => {
        // const newPizza = produce(pizza, (draft) => {
        //     draft.toppings.push("Cheese");
        // });
        // setPizza(newPizza);

        setPizza({ ...pizza, toppings: [...pizza.toppings, "Cheese"] });
    };

    const [cart, setCart] = useState({
        discount: 0.1,
        items: [
            { id: 1, title: "Product 1", quantity: 1 },
            { id: 2, title: "Product 2", quantity: 1 },
        ],
    });

    const handleCartClick = (id: number) => {
        const newCart = produce(cart, (draft) => {
            const item = draft.items.find((item) => item.id === id);
            if (item) {
                item.quantity++;
            }
        });
        setCart(newCart);
    };

    return (
        <div>
            <div>{game.player.name}</div>
            <button onClick={handleGameClick}>Change Player</button>

            <hr />
            <div>{pizza.name}</div>
            <div>{pizza.toppings.join(", ")}</div>
            <button onClick={handlePizzaClick}>Change Pizza</button>

            <hr />
            <div>Cart</div>
            <ul>
                {cart.items.map((item) => (
                    <li key={item.id}>
                        {item.title} - Quantity: {item.quantity}
                        <button onClick={() => handleCartClick(item.id)}>
                            Add One
                        </button>
                    </li>
                ))}
            </ul>

            <hr />

            <ExpandableText>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Deserunt quod minima dolorum ipsa vel. Commodi eos tenetur odio
                aliquid, hic quaerat dicta officia rem, aspernatur, nisi odit
                quod illum. Facere doloremque dicta ad quam. Quia cumque omnis
                dolores. Dolorum illum autem natus qui, dolore, adipisci iusto
                voluptatum reiciendis molestias voluptatibus dicta voluptates
                officiis error cum recusandae dignissimos ab ipsam optio dolorem
                earum vitae rerum quaerat reprehenderit doloremque? Reiciendis
                aliquam odio natus hic repellendus voluptatem consequatur
                itaque. Numquam tempore quo minima? Nobis consequatur ea, natus
                inventore ipsum accusantium nemo, iure deleniti, iste reiciendis
                eveniet ducimus beatae itaque eligendi laudantium vero
                aspernatur?
            </ExpandableText>
        </div>
    );
}

export default App;
