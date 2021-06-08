/* 1.1 จงเติมโค้ดในส่วนที่หายไปเพื่อให้สามารถทำงานได้สมบูรณ์ */
let result = 0

for (let i = 1; i <= 10; i++) {
    if (i % 2 == 0) result = result + i
    else result = result + (i * 2)
}

/* 1.2 เมื่อโปรแกรมทงานสมบูรณ์แล้ว result จะมีค่าเท่ากับเท่าไหร */
console.log(`1.2 result จะมีค่าเท่ากับ`, result) // 80

/* 2 จากโค้ดด้านบน คุณคิดว่าเป็นฟังก์ชั่นดังกล่าวหาค่าของอะไร */

const checkNumber = (i) => {
    if (i >= 2) {
        if (i == 2) {
            return true
        }
        for (let j = 2; j <= i - 1; j++) {
            if (i % j == 0) {
                return false
            }
        }
        return true
    }
    else {
        return false
    }
}

/* คำตอบ หาจำนวน เฉพาะ */
for (let x = 1; x <= 9; x++) {
    console.log(`input ${x} output = `, checkNumber(x));
}

/* 4. จงเขียน หาผลรวมของจำนวนเฉพาะ Function sumPrimeNumber(int n) */

const sumPrimeNumber = (num) => {
    let res = 0
    for (let x = 1; x <= num; x++) {
        if (checkNumber(x)) res += x
    }
    return res
}

console.log(`n=4, output 2+3 = ${sumPrimeNumber(4)}`) // 5
console.log(`n=5, output 2+3+5 =  ${sumPrimeNumber(5)}`) // 10
console.log(`n=15, output 2+3+5+7+11+13 = ${sumPrimeNumber(15)}`) // 41




