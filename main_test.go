package main

import "testing"

func TestFoo(t *testing.T) {
	if 1 == 2 {
		t.Error("test failed")
	}
}
