// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StatementTile extends StatelessWidget {
  const StatementTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Extrato'),
    );
  }
}

class MembersTile extends StatelessWidget {
  const MembersTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Membros'),
    );
  }
}

class InvestmentsTile extends StatelessWidget {
  const InvestmentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('Investimentos'),
      children: [
        ListTile(
          title: Text('Meus Investimentos'),
        ),
        ListTile(
          title: Text('Histórico Contábil'),
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
      title: Text('Recebimentos'),
      children: [
        ListTile(
          title: Text('Invoices'),
        ),
        ListTile(
          title: Text('Boletos'),
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
      title: Text('Cartão Corporativo'),
      children: [
        ListTile(
          title: Text('Visão geral'),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text('NOVO', style: TextStyle(color: Colors.white)),
          ),
        ),
        ListTile(
          title: Text('Analytics'),
        ),
        ListTile(
          title: Text('Cartões'),
        ),
        ListTile(
          title: Text('Compras'),
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
      title: Text('Integrações'),
      children: const [
        ListTile(
          title: Text('Projetos'),
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
      title: Text('Consultas'),
      children: const [
        ListTile(
          title: Text('Depósitos'),
        ),
        ListTile(
          title: Text('Invoices'),
        ),
        ListTile(
          title: Text('Boletos'),
        ),
        ListTile(
          title: Text('Adquirência'),
        ),
        ListTile(
          title: Text('Transferências'),
        ),
        ListTile(
          title: Text('Pagamentos de Impostos'),
        ),
        ListTile(
          title: Text('Pagamentos de Concessionárias'),
        ),
        ListTile(
          title: Text('Pagamentos de Boletos'),
        ),
        ListTile(
          title: Text('Pagamentos de QR Code '),
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
      title: Text('Pagamentos'),
      children: const [],
    );
  }
}

class AccountTile extends StatelessWidget {
  const AccountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: Color(0xFFBDC4C9),
          ),
        ),
        ListTile(
          title: Text('Hackathon Account 927903'),
          trailing: Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }
}
