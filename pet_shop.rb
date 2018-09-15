def pet_shop_name(pet_shop_array)
  return pet_shop_array[:name]
end

def total_cash(pet_shop_array)
  return pet_shop_array[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_array, amount)
  pet_shop_array[:admin][:total_cash] += amount
end

def pets_sold(pet_shop_array)
  return pet_shop_array[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_array, number_of_pets_sold)
  pet_shop_array[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(pet_shop_array)
  return pet_shop_array[:pets].length
end

def pets_by_breed(pet_shop_array, breed)
  pets_with_specified_breed = []
  for pet in pet_shop_array[:pets]
    if pet[:breed] == breed
      pets_with_specified_breed.push(pet)
    end
  end
  return pets_with_specified_breed
end

def find_pet_by_name(pet_shop_array, name_of_pet)
  for pet in pet_shop_array[:pets]
    if pet[:name] == name_of_pet
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_array, name_of_pet)
  for pet in pet_shop_array[:pets]
    if pet[:name] == name_of_pet
      pet_shop_array[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop_array, new_pet)
  pet_shop_array[:pets].push(new_pet)
end

def customer_cash(customer_array)
  return customer_array[:cash]
end

def remove_customer_cash(customer_array, cost_of_pet)
  customer_array[:cash] -= cost_of_pet
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop, 1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(pet_shop, pet[:price])
end
