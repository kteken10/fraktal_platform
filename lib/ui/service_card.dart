import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;

          return isMobile
              ? Column(
                  children: [
                    _buildColumn('formationlogo.png', 'Formation'),
                    _buildColumn('facilitymanagementlogo.png', 'Facility Management'),
                    _buildColumn('jobboardlogo.png', 'JobBoard'),
                    _buildColumn('formationlogo.png', 'MarKetingRH'),
                    _buildColumn('managementclientlogo.png', 'Management Client'),
                    _buildColumn('outsourcinglogo.png', 'OutSourcing'),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: _buildColumn('formationlogo.png', 'Formation')),
                        Expanded(child: _buildColumn('facilitymanagementlogo.png', 'Facility Management')),
                        Expanded(child: _buildColumn('jobboardlogo.png', 'JobBoard')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: _buildColumn('formationlogo.png', 'MarKetingRH')),
                        Expanded(child: _buildColumn('managementclientlogo.png', 'Management Client')),
                        Expanded(child: _buildColumn('outsourcinglogo.png', 'OutSourcing')),
                      ],
                    ),
                  ],
                );
        },
      ),
    );
  }

  Widget _buildColumn(String imagePath, String label) {
    return _ServiceCard(imagePath: imagePath, label: label);
  }
}

class _ServiceCard extends StatefulWidget {
  final String imagePath;
  final String label;

  const _ServiceCard({required this.imagePath, required this.label});

  @override
  __ServiceCardState createState() => __ServiceCardState();
}

class __ServiceCardState extends State<_ServiceCard> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.1; // Grossissement à 110%
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0; // Retour à la taille normale
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8), // Espace vertical entre les cartes
          width: double.infinity, // Prend toute la largeur disponible
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 238, 237, 237).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  widget.imagePath,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
