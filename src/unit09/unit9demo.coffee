number = 42
opposite = true
console.log "Number assignemnts are easy. No semicolons or 'var' before variables!"
console.log "number: #{number} and opposite: #{opposite}"
console.log "Can use Ruby-style string interpolation \#\{\}"

number = -42 if opposite
console.log "'number = -42 if opposite' evalutes to #{number}"

square = (x) -> x * x
console.log "'square = (x) -> x * x' is a way to write shorter functions than in javascript"

list = [1, 2, 3, 4, 5]

math =
    root: Math.sqrt
    square: square
    cube: (x) -> x * square x

console.log("You can get rid of a lot of syntactical fluff i.e. function, return, brackets, semicolons")

race = (winner, runners...) ->
    console.log "winner: #{winner} runners: #{runners}"

alert "I knew it!" if elvis?
console.log "I've always wanted to do if statements this way"

cubes = (math.cube num for num in list)

console.log ""
console.log ""
console.log "Here's my some sort of demo"
console.log "ROWEN KNIGHT EXAMPLE"

warriors = ["Attia", "Tanya", "Iris", "Klair", "Xina", "Elni", "Vivienne", "Velaseriat"]
idnum = [1..7]

printWarriors = (id, warrior) ->
    console.log "#{id} #{warrior}"

printWarriors idnum[i], warrior for warrior, i in warriors when warriors[i] isnt "Velaseriat"

class Warrior
    constructor: (@name, @type, @atk, @def) ->

    getInfo: ->
        console.log "#{@name} #{@type} #{@atk} #{@def}"

warriors2 = []
warriors2.push(new Warrior("Velaseriat", "Analyst", 100, 100))
warriors2.push(new Warrior("Attia", "Assassin", 100, 100))
warriors2.push(new Warrior("Tanya", "Healer", 100, 100))
warriors2.push(new Warrior("Iris", "Sorcerer", 100, 100))
warriors2.push(new Warrior("Klair", "Juggernaut", 100, 100))
warriors2.push(new Warrior("Xina", "Templar", 100, 100))
warriors2.push(new Warrior("Elni", "Sniper", 100, 100))
warriors2.push(new Warrior("Vivienne", "Synergist", 100, 100))

console.log ""
idnum2 = [1..8]
printWarriors idnum2[i], warrior.name for warrior, i in warriors2
