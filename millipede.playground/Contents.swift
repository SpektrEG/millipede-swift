
/*
 *	Animated model of a centipede
 *	Created by Nikita Dolmatov on July 2017
 */

import Foundation

var millipede = ""
var pos = 0

func print_body_segment(size: Int) {
	for _ in 0...size {
		millipede += " "
	}
	millipede += "╚═(███)═╝\n"
}

func get_offset_from(_ pos: Int, for idx: Int) -> Int {
	return Int(round(5 * sin(Double(idx + pos)/3) + 5))
}

func print_millipede(size: Int, toPos pos: Int) {
	
	millipede = String(repeating: " ", count: get_offset_from(pos, for: 1))
	millipede += "╚⊙ ⊙╝\n"
	
	for idx in 1...size {
		let offset = get_offset_from(pos, for: idx)
		print_body_segment(size: offset)
	}
}

while (true) {
	pos += 1
	print_millipede(size: 20, toPos: pos)
}
