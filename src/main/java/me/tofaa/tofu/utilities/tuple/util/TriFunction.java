package me.tofaa.tofu.utilities.tuple.util;

@FunctionalInterface
public interface TriFunction<A, B, C, R> {
    R apply(A a, B b, C c);
}