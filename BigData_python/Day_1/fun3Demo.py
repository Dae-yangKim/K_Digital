def say_myself(name , old , man = True): # 디폴트 인수는 마지막에 와야 한다.
    print(f"나의 이름은 {name} 입니다.")
    print(f"저는 {old}살 입니다.")

    if man:
        print("남성입니다.")
    else:
        print("여성입니다.")
    
say_myself("김대양" , 21)