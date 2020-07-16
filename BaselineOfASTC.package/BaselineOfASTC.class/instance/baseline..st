baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				"ASTC"
				package: 'ASTC-Core';
				package: 'ASTC-Core-Extensions' with:[ spec requires:#('ASTC-Core') ];
				package: 'ASTC-Core-Tests' with:[ spec requires:#('ASTC-Core-Extensions') ]
			] 