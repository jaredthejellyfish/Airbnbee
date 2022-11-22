import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["card", "searchInput"]

    fetchCards() {
        let cardIdWithInsectName = {};
        this.cardTargets.forEach(card => {
            cardIdWithInsectName[card.innerText] = card.id;
        });
        return cardIdWithInsectName;
    }

    filterCardItems(query) {
        let cards = this.fetchCards();
        let filteredCards = {};
        Object.keys(cards).forEach(card => {
            if (card.toLowerCase().includes(query.toLowerCase())) {
                filteredCards[card] = cards[card];
            }
        });
        return filteredCards;
    }

    search() {
        let cards = this.fetchCards();
        let filteredCards = this.filterCardItems(this.searchInputTarget.value);
        Object.keys(filteredCards).forEach(card => { delete cards[card]; });
        if (Object.keys(filteredCards).length > 0) {
            this.cardTargets.forEach(card => {
                if (Object.values(cards).includes(card.id)) {
                    card.style.display = 'none';
                } else {
                    card.style.display = 'block';
                }
            });
        }
    }
}