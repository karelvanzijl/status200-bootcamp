import { useState } from "react";

interface EmojiButtonProps {
    emoji: string;
    onClick: (emoji: string) => void;
}

function EmojiButton({ emoji, onClick }: EmojiButtonProps) {
    return <button onClick={() => onClick(emoji)}>{emoji}</button>;
}

function EmojiPicker() {
    const [selectedEmoji, setSelectedEmoji] = useState("🙂");

    const emojis = ["🙂", "😎", "😂", "😍", "🤔", "🙌"];

    return (
        <div>
            <h2>Emoji Picker</h2>
            <div>
                {emojis.map((emoji) => (
                    <EmojiButton
                        key={emoji}
                        emoji={emoji}
                        onClick={setSelectedEmoji}
                    />
                ))}
            </div>
            <h3>Selected Emoji: {selectedEmoji}</h3>
        </div>
    );
}

export default EmojiPicker;
