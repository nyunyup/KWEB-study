const factorial = n => {
    res = 1;
    for (let i = 1; i <= n; i++) res *= i;
    return res;
}

const permutation = (n, r) => {
    return factorial(n) / factorial(n - r);
}

const multiPermutation = (n, r) => {
    return n ** r;
}

const combination = (n, r) => {
    return factorial(n) / (factorial(n-r) * factorial(r));
}

const multiCombination = (n, r) => {
    return combination(n + r - 1, r);
}

module.exports = {
    permutation,
    combination,
    multiPermutation,
    multiCombination,
}