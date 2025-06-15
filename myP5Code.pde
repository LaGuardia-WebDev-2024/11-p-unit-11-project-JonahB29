var backgroundImage = loadImage("https://cdn.uanews.arizona.edu/s3fs-public/styles/az_large/public/2024-09/road-1072821_1280.jpg.webp?VersionId=Vtehx0pRpI91RCIFfxXm7dlRyObBDvoS&itok=jYxmVqo_");

var fallingLeafImage = loadImage("https://cdn-icons-png.flaticon.com/128/3504/3504560.png");

var leafX = [];
var leafY = [];
var leaves = ["🍂", "🍁", "🍃"];

var emojis = ["🎃", "🏃", "🐕"];
var emojiX = [80, 210, 310]; 
var emojiY = [410, 400, 370];

var emojiSize = 32;

var fallingLeafX = [];
var fallingLeafY = [];
var fallingLeafCount = 10;
var fallingLeafSize = 40;

setup = function() {
  size(600, 450);
  textSize(32);

  // Random positions for leaf emojis
  for (var leafNum = 0; leafNum < leaves.length; leafNum++) {
    leafX.push(random(0,width - emojiSize));
    leafY.push(random(emojiSize,height - emojiSize));
  }
  for (var fallingLeafNum = 0; fallingLeafNum < fallingLeafCount; fallingLeafNum++) {
    fallingLeafX.push(random(width - fallingLeafSize));
    fallingLeafY.push(random(height - fallingLeafSize));
  }
  
};

var drawFallingLeaf = function(x, y, size) {
  image(fallingLeafImage, x, y, size, size);
}; 

draw = function() {
  image(backgroundImage, 0, 0, 600, 450);

  // Draw leaf emojis at random positions
  for (var leafNum = 0; leafNum < leaves.length; leafNum++) {
    text(leaves[leafNum], leafX[leafNum], leafY[leafNum]);
  }
  
  for (var fallingLeafNum = 0; fallingLeafNum < fallingLeafCount; fallingLeafNum++) {
  drawFallingLeaf(fallingLeafX[fallingLeafNum], fallingLeafY[fallingLeafNum], fallingLeafSize);
}

textSize(50);
text(emojis[0], emojiX[0], emojiY[0]);

textSize(132);
text(emojis[1], emojiX[1], emojiY[1]);

textSize(56);
text(emojis[2], emojiX[2], emojiY[2]);
};