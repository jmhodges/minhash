require 'murmur_hash'

module MinHash
  VERSION = '0.9.9'
  # We use murmur_hash64 because we really do need 2**64 -1 items and
  # I'm assuming all the machines it will be deployed on are
  # little-endian.
  Infinity = 1.0 / 0.0
  def self.minhash(history, seed)
    val = Infinity
    Array(history).each do |item|
      n = MurmurHash.murmur_hash64(item, seed)
      val = n if n < val
    end
    val
  end
end
