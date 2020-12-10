#! /usr/bin/Rscript

# while loops is the same like most languages
count <- 0

while (count < 10) { # break the loop at count == 10
    print(count)
    count <- count + 1
}

# careful though, as you might end up in an infinite loop
print("--------")
# let's look at a random while

z <- 5

while (z >= 3 && z <= 10) {
    print(z)
    coin <- rbinom(1, 1, 0.5)

    if (coin == 1) { # called a random walk
        z <- z + 1
    } else {
        z <- z - 1
    }
}