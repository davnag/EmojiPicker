//
//  EmojiManagerStub.swift
//  EmojiPicker
//
//  Created by Егор Бадмаев on 25.01.2023.
//

@testable import EmojiPicker

class EmojiManagerStub: EmojiManagerProtocol {
    
    private var recentEmojiIDs: [Emoji.ID] = []
    
    func provideEmojis() -> EmojiSet {
        emojiSet
    }

    func addRecentEmoji(_ emoji: Emoji) {
        
        var emojis = self.recentEmojiIDs
        
        if let index = emojis.firstIndex(of: emoji.id) {
            emojis.remove(at: index)
        }
        
        emojis.insert(emoji.id, at: 0)
        
        self.recentEmojiIDs = Array(emojis.prefix(16))
    }
    
    var emojiSet = EmojiSet(
        categories: [
            Category(type: .people, identifiers: [
                "smile",
                "laughing",
                "grin"
            ]),
            Category(type: .foods, identifiers: [
                "peach"
            ]),
        ],
        emojis: [
            "smile": Emoji(
                id: "smile",
                name: "Grinning Face with Smiling Eyes",
                keywords: [],
                skins: [
                    Skin(unified: "1f604", native: "😄")
                ],
                version: 1.0
            ),
            "laughing": Emoji(
                id: "laughing",
                name: "Grinning Squinting Face",
                keywords: [],
                skins: [
                    Skin(unified: "1f606", native: "😆")
                ],
                version: 1.0
            ),
            "grin": Emoji(
                id: "grin",
                name: "Beaming Face with Smiling Eyes",
                keywords: [],
                skins: [
                    Skin(unified: "1f601", native: "😁")
                ],
                version: 1.0
            ),
            "peach": Emoji(
                id: "peach",
                name: "Peach",
                keywords: [],
                skins: [
                    Skin(unified: "1f351", native: "🍑")
                ],
                version: 1.0
            ),
        ],
        aliases: [:]
    )
}
