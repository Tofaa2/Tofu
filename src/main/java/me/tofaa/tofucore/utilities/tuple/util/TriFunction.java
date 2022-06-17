package me.tofaa.tofucore.utilities.tuple.util;

@FunctionalInterface
public interface TriFunction<A, B, C, R> {
    R apply(A a, B b, C c);
}