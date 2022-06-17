package me.tofaa.tofucore.utilities.tuple;

import me.tofaa.tofucore.utilities.tuple.types.*;

public class Tuple {

    private Tuple() {
    }

    public static <A> Unit<A> of(A first) {
        return Unit.of(first);
    }

    public static <A, B> Pair<A, B> of(A first, B second) {
        return Pair.of(first, second);
    }

    public static <A, B, C> Triple<A, B, C> of(A first, B second, C third) {
        return Triple.of(first, second, third);
    }

    public static <A, B, C, D> Quad<A, B, C, D> of(A first, B second, C third, D fourth) {
        return Quad.of(first, second, third, fourth);
    }
    public static <A, B, C, D,E> Quintet<A, B, C, D,E> of(A first, B second, C third, D fourth, E fifth) {
        return Quintet.of(first, second, third, fourth, fifth);
    }

}