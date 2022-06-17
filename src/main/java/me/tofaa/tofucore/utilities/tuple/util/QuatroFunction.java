package me.tofaa.tofucore.utilities.tuple.util;

@FunctionalInterface
public interface QuatroFunction<A, B, C, D, R> {
    R apply(A a, B b, C c, D d);
}