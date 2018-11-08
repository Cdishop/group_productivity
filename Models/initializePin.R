t <- 0
W <- matrix(c(.5, .5, .7, .5,
              .5, .3, .1, .5), ncol = 2, nrow = 4)
C <- matrix(c(.7, .1,
              .5, .3), ncol = 2, nrow = 2)
lambda <- matrix(c(0, .5, .5, 0,
                   .9, 0, 0, .1), ncol = 2, nrow = 4)
P <- matrix(c(1, .5,
              -.1, 1), ncol = 2, nrow = 2)
H <- matrix(c(1, .1, .1, .3,
              .1, 1, .5, .1,
              .1, .5, 1, .1,
              .3, .1, .1, 1), ncol = 4, nrow = 4)
lambdas <- matrix(c(0, 1, 1, 0,
                    1, 0, 0, 1), ncol = 2, nrow = 4)


A <- diag(4)
B <- matrix(c(1, -1, 0, -1,
              0, 1, -1, 0,
              0, 0, 1, 0, 
              0, 0, 0, 1), ncol = 4, nrow = 4)

x_t <- matrix(c(0, 2, 1, 4), ncol = 1, nrow = 4)
one <- matrix(c(1, 1), ncol = 1, nrow = 2)

WC <- W%*%C
U_independnet <- lambda*WC
U <- lambdas * (H%*%(U_independnet)%*%P)
init <- TRUE

stateNames <- c("Pins", "Sharp", "Cut", "Heads")