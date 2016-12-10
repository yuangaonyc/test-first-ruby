def measure(i=1)
  t = Time.now
  i.times { yield }
  return (Time.now - t)/i.round
end
