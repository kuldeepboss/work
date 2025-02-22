import random
import hashlib
from cryptography.fernet import Fernet

def generate_winning_number():
    # Generate a random number between 1 and 100
    winning_number = random.randint(1, 100)
    return winning_number

def generate_hash(winning_number):
    # Generate a hash value based on the winning number
    hash_value = hashlib.sha256(str(winning_number).encode()).hexdigest()
    return hash_value

def generate_key():
    # Generate a key for encryption
    key = Fernet.generate_key()
    return key

def encrypt_winning_number(winning_number, hash_value):
    # Generate a key for encryption
    key = generate_key()
    # Create a Fernet object with the key
    fernet = Fernet(key)
    # Convert the winning number and hash value to bytes
    winning_number_bytes = str(winning_number).encode()
    hash_value_bytes = str(hash_value).encode()
    # Encrypt the winning number and hash value
    encrypted_winning_number = fernet.encrypt(winning_number_bytes)
    encrypted_hash_value = fernet.encrypt(hash_value_bytes)
    # Return the encrypted data and the key
    return encrypted_winning_number, encrypted_hash_value, key

def decrypt_winning_number(encrypted_winning_number, key):
    # Create a Fernet object with the key
    fernet = Fernet(key)
    # Decrypt the winning number
    decrypted_winning_number = fernet.decrypt(encrypted_winning_number)
    # Return the decrypted winning number
    return decrypted_winning_number.decode()

# Example usage
winning_number = generate_winning_number()
hash_value = generate_hash(winning_number)
encrypted_winning_number, encrypted_hash_value, key = encrypt_winning_number(winning_number, hash_value)
print("Encrypted winning number:", encrypted_winning_number)
print("Encrypted hash value:", encrypted_hash_value)
print("Key:", key)
decrypted_winning_number = decrypt_winning_number(encrypted_winning_number, key)
print("Decrypted winning number:", decrypted_winning_number)