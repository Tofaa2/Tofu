package me.tofaa.tofucore.utilities.tuple.types;

import me.tofaa.tofucore.utilities.tuple.util.TriFunction;

import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Stream;

public class Triple<A, B, C> {

    private final A first;

    private final B second;

    private final C third;

    private Triple(A first, B second, C third) {
        this.first = first;
        this.second = second;
        this.third = third;
    }

    public static <A, B, C, D> Function<Triple<A, B, C>, Stream<D>> flat(
            Function<? super A, ? extends D> mapFirst,
            Function<? super B, ? extends D> mapSecond,
            Function<? super C, ? extends D> mapThird) {

        return triplet -> triplet.stream(mapFirst, mapSecond, mapThird);
    }

    public <D> Stream<D> stream(Function<? super A, ? extends D> mapFirst,
                                Function<? super B, ? extends D> mapSecond,
                                Function<? super C, ? extends D> mapThird) {

        return Stream.of(mapFirst.apply(first), mapSecond.apply(second), mapThird.apply(third));
    }

    public static <A, B, C, D> Function<Triple<A, B, C>, Quad<A, B, C, D>> mapToQuartet(
            TriFunction<? super A, ? super B, ? super C, ? extends D> fun) {

        return triplet -> triplet.add(fun.apply(triplet.first, triplet.second, triplet.third));
    }

    public <D> Quad<A, B, C, D> add(D fourth) {

        return Quad.of(first, second, third, fourth);
    }

    public static <A, B, C> Triple<A, B, C> of(A first, B second, C third) {

        return new Triple<>(first, second, third);
    }

    public A getFirst() {
        return first;
    }

    public B getSecond() {
        return second;
    }

    public C getThird() {
        return third;
    }

    @Override
    public String toString() {
        return "Triplet{" + "first=" + first +
                ", second=" + second +
                ", third=" + third +
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
        Triple<?, ?, ?> triplet = (Triple<?, ?, ?>) o;
        return Objects.equals(first, triplet.first) &&
                Objects.equals(second, triplet.second) &&
                Objects.equals(third, triplet.third);
    }

    @Override
    public int hashCode() {
        return Objects.hash(first, second, third);
    }
}