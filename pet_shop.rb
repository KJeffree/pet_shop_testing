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
end
