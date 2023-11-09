# Setup

Things are a bit out-dated at this point so we will use a Docker image generated a few years ago to do these examples.
```
sudo docker run -it \
    -v $(realpath ./example):/opt/matching-logic-proof-checker/example \
    -v $(realpath ./ml):/opt/matching-logic-proof-checker/ml \
    zl38/matching-logic-proof-checker:main
```


# One-step example

```
python3 -m scripts.prove_symbolic example/rv-seminar/one-step/one-step.k ONESTEP example/rv-seminar/one-step/test.txt -o example/rv-seminar/one-step/proof
```

# K-step example

```
python3 -m scripts.prove_symbolic example/rv-seminar/k-step/k-step.k KSTEP example/rv-seminar/k-step/test.txt -o example/rv-seminar/k-step/proof
```
