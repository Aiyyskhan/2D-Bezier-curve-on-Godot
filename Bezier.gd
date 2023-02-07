extends Node

func getPoint(p0: Vector2, p1: Vector2, p2: Vector2, p3: Vector2, t: float) -> Vector2:
	var oneMinusT = 1.0 - t
	return oneMinusT * oneMinusT * oneMinusT * p0 + \
		3.0 * oneMinusT * oneMinusT * t * p1 + \
		3.0 * oneMinusT * t * t * p2 + \
		t * t * t * p3

func getFDeriv(p0: Vector2, p1: Vector2, p2: Vector2, p3: Vector2, t: float) -> Vector2:
	var oneMinusT = 1.0 - t
	return 3.0 * oneMinusT * oneMinusT * (p1 - p0) + \
		6.0 * oneMinusT * t * (p2 - p1) + \
		3.0 * t * t * (p3 - p2)
