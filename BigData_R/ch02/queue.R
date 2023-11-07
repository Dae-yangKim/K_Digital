# Queue 자료구조이다.
q <- c()
q_size <- 0
enqueue <- function(data)
{
  q <<- c(q , data)
  q_size <<- q_size + 1
}
dequeue <- function()
{
  first <- q[1]
  q <<- q[-1]
  q_size <<- q_size - 1
  return(first)
}
size <- function()
{
  return(q_size)
}

enqueue(1)
enqueue(3)
enqueue(5)
print(size())
print(dequeue())
print(dequeue())
print(dequeue())
print(size())

# 한 함수 안으로 감추기 (encapsulation)
queue <- function()
{
  q <- c()
  q_size <- 0
  enqueue <- function(data)
  {
    q <<- c(q , data)
    q_size <<- q_size + 1
  }
  dequeue <- function()
  {
    first <- q[1]
    q <<- q[-1]
    q_size <<- q_size - 1
    return(first)
  }
  size <- function()
  {
    return(q_size)
  }
  return(list(enqueue = enqueue , dequeue = dequeue , size = size))
}

q <- queue()
q$enqueue(1)
q$enqueue(3)
q$size()
q$dequeue()
q$dequeue()
q$size()