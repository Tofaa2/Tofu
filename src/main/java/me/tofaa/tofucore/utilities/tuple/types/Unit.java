package me.tofaa.tofucore.utilities.tuple.types;

import java.util.Objects;
import java.util.function.Function;

public class Unit<A> {
    private final A first;

    private Unit(A first) {
        this.first = first;
    }

    public static <A, B> Function<Unit<A>, Pair<A, B>> mapToPair(Function<? super A, ? extends B> mapFirst) {
        return unit -> Pair.of(unit.first, mapFirst.apply(unit.first));
    }

    public <B> Pair<A, B> add(B second) {
        return Pair.of(first, second);
    }

    public <B> Unit<B> map(Function<? super A, ? extends B> mapFirst) {
        return new Unit<>(mapFirst.apply(first));
    }

    public static <A> Unit<A> of(A first) {
        return new Unit<>(first);
    }

    public A getFirst() {
        return first;
    }

    @Override
    public String toString() {
        return "Unit{" + "first=" + first +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Unit<?> unit = (Unit<?>) o;
        return Objects.equals(first, unit.first);
    }

    @Override
    public int hashCode() {
        return Objects.hash(first);
    }
}