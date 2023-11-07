print('=' * 50)

arr1 = [4 , 5 , 6 , [2 , 4 , 8]]
arr2 = arr1.copy() # 여기서 복사 copy 메소드 이용

print("1. 전체 출력")
print(f"arr1 : {arr1}, add : {hex(id(arr1))}")
print(f"arr2 : {arr2}, add : {hex(id(arr2))}")

print("\n2. 리스트의 끝에 값 추가")
arr2.append(22)
print('arr2.append(22)')
print(f'arr1 : {arr1}, add : {hex(id(arr1))}')
print(f'arr2 : {arr2}, add : {hex(id(arr2))}')

# 리스트 안에 있는 리스트
print("\n3. 리스트 내부 리스트")
print(f'arr1[3] : {arr1[3]}, add : {hex(id(arr1[3]))}')
print(f'arr2[3] : {arr2[3]}, add : {hex(id(arr2[3]))}')

print("\n4. 리스트 내부 리스트에 값 추가")
arr1[3].append(99)
print('arr[3].append(99)')
print(f'arr1[3] : {arr1[3]}, add : {hex(id(arr1[3]))}')
print(f'arr2[3] : {arr2[3]}, add : {hex(id(arr2[3]))}')

print("\n5. 리스트 전체 다시 확인")
print(f'arr1 : {arr1}, add : {hex(id(arr1))}')
print(f'arr2 : {arr2}, add : {hex(id(arr2))}')