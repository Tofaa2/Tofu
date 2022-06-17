package me.tofaa.tofucore.utilities.tuple.types;

import me.tofaa.tofucore.utilities.tuple.util.QuatroFunction;

import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Stream;

public class Quad<A, B, C, D> {
    private final A first;

    private final B second;

    private final C third;

    private final D fourth;

    private Quad(A first, B second, C third, D fourth) {
        this.first = first;
        this.second = second;
        this.third = third;
        this.fourth = fourth;
    }

    public static <A, B, C, D, E> Function<Quad<A, B, C, D>, Stream<E>> flat(
            Function<? super A, ? extends E> mapFirst,
            Function<? super B, ? extends E> mapSecond,
            Function<? super C, ? extends E> mapThird,
            Function<? super D, ? extends E> mapFourth) {

        return quartet -> quartet.stream(mapFirst, mapSecond, mapThird, mapFourth);
    }

    public <E> Stream<E> stream(Function<? super A, ? extends E> mapFirst,
                                Function<? super B, ? extends E> mapSecond,
                                Function<? super C, ? extends E> mapThird,
                                Function<? super D, ? extends E> mapFourth) {

        return Stream.of(mapFirst.apply(first),
                mapSecond.apply(second),
                mapThird.apply(third),
                mapFourth.apply(fourth));
    }

    private <E> Quintet<A, B, C, D, E> add(E fifth) {
        return Quintet.of(first, second, third, fourth, fifth);
    }

    public static <A, B, C, D> Quad<A, B, C, D> of(A first, B second, C third, D fourth) {
        return new Quad<>(first, second, third, fourth);
    }

    public static <A, B, C, D, E> Function<Quad<A, B, C, D>, Quintet<A, B, C, D, E>> mapToQuintet(
            QuatroFunction<? super A, ? super B, ? super C, ? super D, ? extends E> function
    ) {
        return quartet -> quartet.add(function.apply(quartet.first, quartet.second, quartet.third, quartet.fourth));
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

    public D getFourth() {
        return fourth;
    }

    @Override
    public String toString() {
        return "Quartet{" + "first=" + first +
                ", second=" + second +
                ", third=" + third +
                ", fourth=" + fourth +
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
        Quad<?, ?, ?, ?> quartet = (Quad<?, ?, ?, ?>) o;
        return Objects.equals(first, quartet.first) &&
                Objects.equals(second, quartet.second) &&
                Objects.equals(third, quartet.third) &&
                Objects.equals(fourth, quartet.fourth);
    }

    @Override
    public int hashCode() {
        return Objects.hash(first, second, third, fourth);
    }
}