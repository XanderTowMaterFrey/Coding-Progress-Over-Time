class DiffieHellman: # DiffieHellman (23, 5)
    def __init__(self, p, g):
        if not self.is_prime(p) or not self.is_prime(g):
            raise ValueError('p and g must be prime numbers')
        self.p = p
        self.g = g

    def is_prime(self, num):
        if num <= 1:
            return False
        if num <= 3:
            return True
        if num % 2 == 0 or num % 3 == 0:
            return False
        i = 5
        while i * i <= num:
            if num % i == 0 or num % (i + 2) == 0:
                return False
            i += 6
        return True

    def get_public_key(self, private_key):
        if private_key <= 1 or private_key >= self.p:
            raise ValueError('Private key is invalid')
        return pow(self.g, private_key, self.p)

    def get_secret(self, their_public_key, my_private_key):
        return pow(their_public_key, my_private_key, self.p)

# Example usage:
# dh = DiffieHellman(23, 5)
# alice_private_key = 6
# bob_private_key = 15
# alice_public_key = dh.get_public_key(alice_private_key)
# bob_public_key = dh.get_public_key(bob_private_key)
# secret_A = dh.get_secret(bob_public_key, alice_private_key)
# secret_B = dh.get_secret(alice_public_key, bob_private_key)
# print(secret_A)  # Shared secret A
# print(secret_B)  # Shared secret B
