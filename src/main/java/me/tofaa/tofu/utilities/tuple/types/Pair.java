package me.tofaa.tofu.utilities.tuple.types;

import java.util.Map;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Stream;


public class Pair<A, B> {

    private final A first;

    private final B second;

    private Pair(A first, B second) {
        this.first = first;
        this.second = second;
    }


    public static <A, B, C> Function<Pair<A, B>, Triple<A, B, C>> mapToTriplet(
            BiFunction<? super A, ? super B, ? extends C> fun) {

        return Pair -> Pair.compute(fun);
    }


    public <C> Triple<A, B, C> compute(BiFunction<? super A, ? super B, ? extends C> fun) {

        return add(fun.apply(first, second));
    }


    public <C> Triple<A, B, C> add(C third) {
        return Triple.of(first, second, third);
    }

    public static <A, B> Pair<A, B> of(A first, B second) {
        return new Pair<>(first, second);
    }

    public static <A, B> Pair<A, B> of(Map.Entry<A, B> entry) {
        return new Pair<>(entry.getKey(), entry.getValue());
    }

    public static <A, B, C> Function<Pair<A, B>, Stream<C>> flat(Function<? super A, ? extends C> mapFirst,
                                                                   Function<? super B, ? extends C> mapSecond) {
        return Pair -> Pair.stream(mapFirst, mapSecond);
    }

    public <C> Stream<C> stream(Function<? super A, ? extends C> firstMap,
                                Function<? super B, ? extends C> secondMap) {
        return Stream.of(firstMap.apply(first), secondMap.apply(second));
    }

    public <C> Pair<C, B> mapFirst(Function<? super A, ? extends C> firstMap) {

        return map(firstMap, Function.identity());
    }

    public <C, D> Pair<C, D> map(Function<? super A, ? extends C> firstMap,
                                   Function<? super B, ? extends D> secondMap) {

        return new Pair<>(firstMap.apply(first), secondMap.apply(second));
    }

    public <C> Pair<A, C> mapSecond(Function<? super B, ? extends C> secondMap) {

        return map(Function.identity(), secondMap);
    }

    public A getFirst() {
        return first;
    }

    public B getSecond() {
        return second;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Pair{");
        sb.append("first=").append(first);
        sb.append(", second=").append(second);
        sb.append('}');
        return sb.toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Pair<?, ?> Pair = (Pair<?, ?>) o;
        return Objects.equals(first, Pair.first) &&
                Objects.equals(second, Pair.second);
    }

    @Override
    public int hashCode() {
        return Objects.hash(first, second);
    }
}