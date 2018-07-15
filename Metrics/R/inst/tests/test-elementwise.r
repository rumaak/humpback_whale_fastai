test.ae <- function()
{
    checkEqualsNumeric(ae(3.4, 3.4), 0)
    checkEqualsNumeric(ae(3.4, 4.4), 1.0)
    checkEqualsNumeric(ae(9, 11), 2)    
}

test.ce <- function()
{
    checkEqualsNumeric(ce(c(1,1,1,0,0,0),c(1,1,1,0,0,0)), 0.0)
    checkEqualsNumeric(ce(c(1,1,1,0,0,0),c(1,1,1,1,0,0)), 1/6)
    checkEqualsNumeric(ce(c(1,2,3,4),c(1,2,3,3)), 1/4)
    checkEqualsNumeric(ce(c("cat","dog","bird"),c("cat","dog","fish")), 1/3)
    checkEqualsNumeric(ce(c("cat","dog","bird"),c("caat","doog","biird")), 1.0)
}

test.mae <- function()
{
    checkEqualsNumeric(mae(0:10, 1:11), 1)
    checkEqualsNumeric(mae(seq(0,2,0.5), seq(0,2,0.5)), 0)
    checkEqualsNumeric(mae(1:4, c(1,2,3,5)), 0.25)    
}

test.mse <- function()
{
    checkEqualsNumeric(mse(0:10, 1:11), 1.0)
    checkEqualsNumeric(mse(seq(0,2,0.5), seq(0,2,0.5)), 0.0)
    checkEqualsNumeric(mse(1:4, c(1,2,3,6)), 1.0)
}

test.msle <- function()
{
    checkEqualsNumeric(msle(c(exp(2)-1),c(exp(1)-1)), 1)
    checkEqualsNumeric(msle(seq(0,2,0.5),seq(0,2,0.5)), 0)
    checkEqualsNumeric(msle(c(1,2,3,exp(1)-1),c(1,2,3,exp(2)-1)), 0.25)
}
test.rae <- function()
{
    checkEqualsNumeric(rae(0:10, 30:40), 11)
    checkEqualsNumeric(rae(seq(0,2,0.5), seq(0,2,0.5)), 0.0)
    checkEqualsNumeric(rae(1:4, c(1,2,3,5)), 0.25)
}

test.rmse <- function()
{
    checkEqualsNumeric(rmse(0:10, 1:11), 1.0)
    checkEqualsNumeric(rmse(seq(0,2,0.5), seq(0,2,0.5)), 0.0)
    checkEqualsNumeric(rmse(1:4, c(1,2,3,5)), 0.5)
}

test.rmsle <- function()
{
    checkEqualsNumeric(rmsle(c(exp(2)-1),c(exp(1)-1)), 1)
    checkEqualsNumeric(rmsle(seq(0,2,0.5),seq(0,2,0.5)), 0)
    checkEqualsNumeric(rmsle(c(1,2,3,exp(1)-1),c(1,2,3,exp(2)-1)), 0.5)
}

test.rrse <- function()
{
    checkEqualsNumeric(rrse(0:10, 2:12), sqrt(0.4))
    checkEqualsNumeric(rrse(seq(0,2,0.5), seq(0,2,0.5)), 0.0)
    checkEqualsNumeric(rrse(1:4, c(1,2,3,5)), sqrt(0.2))
}

test.rse <- function()
{
    checkEqualsNumeric(rse(0:10, 2:12), 0.4)
    checkEqualsNumeric(rse(seq(0,2,0.5), seq(0,2,0.5)), 0.0)
    checkEqualsNumeric(rse(1:4, c(1,2,3,5)), 0.2)
}

test.se <- function()
{
    checkEqualsNumeric(se(3.4, 3.4), 0)
    checkEqualsNumeric(se(3.4, 4.4), 1.0)
    checkEqualsNumeric(se(9, 11), 4)
}

test.sle <- function()
{
    checkEqualsNumeric(sle(3.4,3.4), 0)
    checkEqualsNumeric(sle(exp(2)-1,exp(1)-1), 1)
}

test.f1 <- function()
{
  checkEqualsNumeric(f1(c(3,4,5),c(3,4)), 0.8)
  checkEqualsNumeric(f1(7,1), 0)
  checkEqualsNumeric(f1(7,c(1,1)), 0)
}
