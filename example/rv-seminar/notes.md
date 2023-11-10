# Setup

Things are a bit out-dated at this point so we will use a Docker image generated a few years ago to do these examples.
```
sudo docker run -it \
    -v $(realpath ./example):/opt/matching-logic-proof-checker/example \
    -v $(realpath ./ml):/opt/matching-logic-proof-checker/ml \
    zl38/matching-logic-proof-checker:main
```
If you are using an ARM machine, try `zl38/matching-logic-proof-checker:aarch64`

# One-step example

```
python3 -m scripts.prove_symbolic example/rv-seminar/one-step/one-step.k ONESTEP example/rv-seminar/one-step/test.txt -o example/rv-seminar/one-step/proof
```

Two important pieces of information used in our proof generation tool:
1. Kompiled Kore definitions (`examples/rv-seminar/one-step/.ml-proof-cache-one-step/one-step-kompiled`)
2. Rewriting task description (`examples/rv-seminar/one-step/.ml-proof-cache-one-step/rewriting-task-test.yml`)

These two files provide enough information for the proof generator to proceed.

Let's look at the Kore definition first.
At the top-level structure, the Kore definition contains a few modules.
We can ignore all modules except for the last module (`module ONESTEP`) for now.
In the `ONESTEP` module, we are essentially defining a rewriting theory in (sorted) matching logic. A rewriting theory includes:
1. Sort definitions;
2. Symbolic definitions;
3. Axioms about the symbols (no junk, functional symbols etc.). You can check the comment at the end of each axiom line to get a basic idea of what it does.
4. Rewrite rules using these symbols;
5. Equational rules using these symbols;

Now we have a basic idea of what the Kore theory looks like, lets dig into the execution of the example.

# K-step example

```
python3 -m scripts.prove_symbolic example/rv-seminar/k-step/k-step.k KSTEP example/rv-seminar/k-step/test.txt -o example/rv-seminar/k-step/proof
```

# Strictness example

```
python3 -m scripts.prove_symbolic example/rv-seminar/strict/arith.k ARITH example/rv-seminar/strict/test.txt -o example/rv-seminar/strict/proof
```
