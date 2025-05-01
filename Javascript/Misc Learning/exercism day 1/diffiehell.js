export class DiffieHellman {
  constructor(p, g) {
    if (!this.isPrime(p) || !this.isPrime(g)) {
      throw new Error('p and g must be prime numbers');
    }
    this.p = p;
    this.g = g;
  }

  isPrime(num) {
    if (num <= 1) return false;
    if (num <= 3) return true;
    if (num % 2 === 0 || num % 3 === 0) return false;
    for (let i = 5; i * i <= num; i += 6) {
      if (num % i === 0 || num % (i + 2) === 0) return false;
    }
    return true;
  }

  getPublicKey(privateKey) {
    if (privateKey <= 1 || privateKey >= this.p) {
      throw new Error('Private key is invalid');
    }
    return +((BigInt(this.g) ** BigInt(privateKey) % BigInt(this.p)).toString(10));
  }

  getSecret(theirPublicKey, myPrivateKey) {
    return +((BigInt(theirPublicKey) ** BigInt(myPrivateKey) % BigInt(this.p)).toString(10));
  }
}
