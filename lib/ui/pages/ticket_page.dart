import 'package:flutter/material.dart';

class TicketsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets'),
      ),
      body: TicketList(),
    );
  }
}

class TicketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can replace this with actual ticket data or fetch it from an API
    List<Ticket> tickets = [
      Ticket("Ticket 1", "House Party", "50 dt/person"),
      Ticket("Ticket 2", "Disco", "60 dt/person"),
    ];

    return ListView.builder(
      itemCount: tickets.length,
      itemBuilder: (context, index) {
        return TicketCard(ticket: tickets[index]);
      },
    );
  }
}

class Ticket {
  final String title;
  final String description;
  final String price;


  Ticket(this.title, this.description, this.price);
}

class TicketCard extends StatelessWidget {
  final Ticket ticket;

  TicketCard({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
        title: Text(ticket.title),
        subtitle: Text(ticket.description),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TicketDetailPage(ticket: ticket)),
          );
        },
      ),
    );
  }
}

class TicketDetailPage extends StatelessWidget {
  final Ticket ticket;

  TicketDetailPage({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ticket.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${ticket.title}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Description: ${ticket.description}', style: TextStyle(fontSize: 16)),
            Text('Price: ${ticket.price}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement your booking logic here
                // For example, you can show a confirmation dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Booking Confirmation'),
                      content: Text('You have booked ${ticket.title}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}


