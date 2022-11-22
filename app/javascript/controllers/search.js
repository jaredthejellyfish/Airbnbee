import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["card", "searchInput"]

    fadeOut(element) {
        var op = 1;  // initial opacity
        var timer = setInterval(function () {
            if (op <= 0.1) {
                clearInterval(timer);
                element.style.display = 'none';
            }
            element.style.opacity = op;
            element.style.filter = 'alpha(opacity=' + op * 100 + ")";
            op -= op * 0.1;
        }, 10);
    }

    fetchCards() {
        let cardIdWithInsectName = {};
        this.cardTargets.forEach(card => {
            cardIdWithInsectName[card.innerText.replace(/(\r\n|\n|\r|\s)/gm, "")] = card.id;
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
                if (Object.values(filteredCards).includes(card.id)) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    }
}