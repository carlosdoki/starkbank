// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StatementTile extends StatelessWidget {
  const StatementTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Statement'),
    );
  }
}

class MembersTile extends StatelessWidget {
  const MembersTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Members'),
    );
  }
}

class InvestmentsTile extends StatelessWidget {
  const InvestmentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('Investments'),
      children: [
        ListTile(
          title: Text('My Investments'),
        ),
        ListTile(
          title: Text('Accounting History'),
        ),
      ],
    );
  }
}

class ReceivablesTile extends StatelessWidget {
  const ReceivablesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('Investments'),
      children: [
        ListTile(
          title: Text('My Investments'),
        ),
        ListTile(
          title: Text('Accounting History'),
        ),
      ],
    );
  }
}

class CorporateCardTile extends StatelessWidget {
  const CorporateCardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Corporate Card'),
      children: [
        ListTile(
          title: Text('Overview'),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text('NEW', style: TextStyle(color: Colors.white)),
          ),
        ),
        ListTile(
          title: Text('Analytics'),
        ),
        ListTile(
          title: Text('Cards'),
        ),
        ListTile(
          title: Text('Purchases'),
        ),
        ListTile(
          title: Text('Hackathon Account 927903'),
          trailing: Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }
}

class IntegrationsTile extends StatelessWidget {
  const IntegrationsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Integrations'),
      children: const [
        ListTile(
          title: Text('Projects'),
        ),
        ListTile(
          title: Text('Webhooks'),
        ),
      ],
    );
  }
}

class OperationsTile extends StatelessWidget {
  const OperationsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Operations'),
      children: const [
        ListTile(
          title: Text('Deposits'),
        ),
        ListTile(
          title: Text('Invoices'),
        ),
        ListTile(
          title: Text('Boletos'),
        ),
        ListTile(
          title: Text('Card Acquiring'),
        ),
        ListTile(
          title: Text('Transfers'),
        ),
        ListTile(
          title: Text('Tax Payments'),
        ),
        ListTile(
          title: Text('Utility Payments'),
        ),
        ListTile(
          title: Text('Boletos Payments'),
        ),
        ListTile(
          title: Text('QR Code Payments'),
        ),
      ],
    );
  }
}

class PayablesTile extends StatelessWidget {
  const PayablesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Payables'),
      children: const [],
    );
  }
}
