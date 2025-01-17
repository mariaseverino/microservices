import Ticket from '../../domain/entities/ticket';

type Input = {
    eventId: string;
    email: string;
    creditCardToken: string;
};

type Output = {
    ticketId: string;
    status: string;
};

export default class PurchaseTicket {
    constructor() {}

    execute(input: Input): Promise<Output> {
        const ticket = new Ticket(null, input.eventId, input.email, 'reserved');
    }
}
