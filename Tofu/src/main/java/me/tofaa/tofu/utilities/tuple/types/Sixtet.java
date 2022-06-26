package me.tofaa.tofu.utilities.tuple.types;

import lombok.Getter;

import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Stream;

public class Sixtet<A, B, C, D, E, F> {

    @Getter private final A first;

    @Getter private final B second;

    @Getter private final C third;

    @Getter private final D fourth;

    @Getter private final E fifth;

    @Getter private final F sixth;


    private Sixtet(A first, B second, C third, D fourth, E fifth, F sixth) {
        this.first = first;
        this.second = second;
        this.third = third;
        this.fourth = fourth;
        this.fifth = fifth;
        this.sixth = sixth;
    }

    public static <A, B, C, D, E, F> Sixtet<A, B, C, D, E, F> of(A first, B second, C third, D fourth, E fifth, F sixth) {
        return new Sixtet<>(first, second, third, fourth, fifth, sixth);
    }

    public static <A, B, C, D, E, F> Function<Quintet<A, B, C, D, E>, Stream<F>> flat(
            Function<? super A, ? extends F> mapFirst,
            Function<? super B, ? extends F> mapSecond,
            Function<? super C, ? extends F> mapThird,
            Function<? super D, ? extends F> mapFourth,
            Function<? super E, ? extends F> mapFifth) {

        return quintet -> quintet.stream(mapFirst, mapSecond, mapThird, mapFourth, mapFifth);
    }

    public <F> Stream<F> stream(Function<? super A, ? extends F> mapFirst,
                                Function<? super B, ? extends F> mapSecond,
                                Function<? super C, ? extends F> mapThird,
                                Function<? super D, ? extends F> mapFourth,
                                Function<? super E, ? extends F> mapFifth) {

        return Stream.of(mapFirst.apply(first),
                mapSecond.apply(second),
                mapThird.apply(third),
                mapFourth.apply(fourth),
                mapFifth.apply(fifth));
    }


    @Override
    public String toString() {
        return "Quintet{" + "first=" + first +
                ", second=" + second +
                ", third=" + third +
                ", fourth=" + fourth +
                ", fifth=" + fifth +
                ", sixth=" + sixth +
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
        Sixtet<?, ?, ?, ?, ?, ?> quintet = (Sixtet<?, ?, ?, ?, ?, ?>) o;
        return Objects.equals(first, quintet.first) &&
                Objects.equals(second, quintet.second) &&
                Objects.equals(third, quintet.third) &&
                Objects.equals(fourth, quintet.fourth) &&
                Objects.equals(fifth, quintet.fifth) &&
                Objects.equals(sixth, quintet.sixth);
    }

    @Override
    public int hashCode() {
        return Objects.hash(first, second, third, fourth, fifth, sixth);
    }
}
