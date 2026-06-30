module FA (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire s1, c1, c2;

// First Half Adder
HA HA1 (
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

// Second Half Adder
HA HA2 (
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

// OR gate for final carry
assign cout = c1 | c2;

endmodule
