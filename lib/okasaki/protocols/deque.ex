defprotocol Okasaki.Protocols.Deque do
  @doc """
  Inserts a new item to the left end of the deque.
  """
  @spec insert_left(t, item :: any) :: t
  def insert_left(deque, item)

  @doc """
  Inserts a new item to the right end of the deque.
  """
  @spec insert_right(t, item :: any) :: t
  def insert_right(deque, item)

  @doc """
  Removes an item from the left side of the deque.
  """
  @spec remove_left(t) :: {:ok, {item :: any, t}} | {:error, :empty}
  def remove_left(deque)

  @doc """
  Removes an item from the right side of the deque.
  """
  @spec remove_right(t) :: {:ok, {item :: any, t}} | {:error, :empty}
  def remove_right(deque)

  @doc """
  Converts the deque to a list.
  """
  @spec to_list(t) :: list
  def to_list(deque)

  @doc """
  Checks if a certain element is part of the deque.
  """
  @spec member?(t, item :: any) :: boolean
  def member?(queue, item)

  @doc """
  Returns the number of elements currently in the queue.
  """
  @spec size(t) :: non_neg_integer
  def size(deque)

  @doc """
  True if the deque is empty.
  """
  @spec empty?(t) :: boolean
  def empty?(deque)
end
