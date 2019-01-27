const planeW = 12;
const planeH = 6;
const cell = 85;

let environ = [
  {
    type: 'pac',
    gender: 'boy',
    dir: 'right',
    color: 'light',
    name: 'martin',
    mouth: 'open',
    phase: 'active',
    apples: 0,
    xpos: 0,
    ypos: 0,
    width: 1,
    height: 1,
  },
  {
    type: 'pac',
    gender: 'girl',
    dir: 'left',
    color: 'light',
    name: 'anička',
    mouth: 'open',
    phase: 'asleep',
    apples: 0,
    xpos: 4,
    ypos: 4,
    width: 1,
    height: 1,
  },
  { type: 'wall', phase: 'active', xpos: 1, ypos: 1, width: 4, height: 1},
  { type: 'wall', phase: 'active', xpos: 5, ypos: 1, width: 1, height: 5},
  { type: 'bomb', phase: 'active', xpos: 8, ypos: 1, width: 1, height: 1},
  { type: 'apple', phase: 'active', xpos: 7, ypos: 3, width: 1, height: 1},
  { type: 'apple', phase: 'active', xpos: 6, ypos: 5, width: 1, height: 1},
  { type: 'apple', phase: 'active', xpos: 11, ypos: 5, width: 1, height: 1},
  { type: 'apple', phase: 'active', xpos: 9, ypos: 1, width: 1, height: 1},
  { type: 'robot', phase: 'active', xpos: 7, ypos: 4, width: 1, height: 1},
  { type: 'robot', phase: 'active', xpos: 4, ypos: 0, width: 1, height: 1},
];

window.setInterval(() => {
  for(let item of environ) {
    if(item.type === 'robot') {
      const dirs = [[0, 1], [0, -1], [1, 0], [-1, 0]];
      let index = Math.round(Math.random()*3);
      let x = item.xpos + dirs[index][0];
      let y = item.ypos + dirs[index][1];

      for(let i = 0; i < 12; i++) {
        if(collision(x, y)) {
          index = Math.round(Math.random()*3);
          x = item.xpos + dirs[index][0];
          y = item.ypos + dirs[index][1];
        } else {
          item.xpos = x;
          item.ypos = y;
          itemUpdate(item);
          break;
        }
      }
      
    }
  }
}, 1000);

const contains = (x, y, item) => {
  if(x < item.xpos) {
    return false;
  } else if(y < item.ypos) {
    return false;
  } else if(x >= item.xpos + item.width) {
    return false;
  } else if(y >= item.ypos + item.height) {
    return false;
  }

  return true;
};

let awakePac = environ[0];

const itemRender = (item) => {
  let plane = document.getElementById('plane');
  item.element = document.createElement('div');
  
  if(item.type === 'pac') {
    item.element.className = 'pac';
    item.element.style.width = cell + 'px';
    item.element.style.height = cell + 'px';
    item.element.addEventListener('click', () => {
      if(awakePac.phase === 'active') {
        awakePac.phase = 'asleep';
        itemUpdate(awakePac);
      }
      if(item.phase === 'asleep') {
        awakePac = item;
        awakePac.phase = 'active';
        itemUpdate(awakePac);
      }
    });
  } else {
    item.element.className = 'item';
    item.element.style.width = item.width * cell + 'px';
    item.element.style.height = item.height * cell + 'px';
  }

  itemUpdate(item);
  plane.appendChild(item.element);
}

const itemUpdate = (item) => {
  if(item.type === 'pac') {
    item.element.textContent = item.name + ': ' + item.apples;
    if(item.phase === 'dead') {
      item.element.style.backgroundImage = 'url(img/tomb.png)';
    } else {
      item.element.style.backgroundImage = (
        'url(img/pac' + 
        item.gender + '-' + 
        item.phase + '-' + 
        item.color + '.png)'
      );
    }
  
    item.element.style.left = item.xpos * cell + 'px';
    item.element.style.top = item.ypos * cell + 'px';  

    if(item.mouth === 'open') {
      item.element.style.backgroundPositionX = '0px';
    } else {
      item.element.style.backgroundPositionX = cell + 'px';
    }
  
    if(item.dir === 'right') {
      item.element.style.backgroundPositionY = '0px';
    } else if(item.dir === 'left') {
      item.element.style.backgroundPositionY = -cell + 'px';
    } else if(item.dir === 'down') {
      item.element.style.backgroundPositionY = -2 * cell + 'px';
    } else if(item.dir === 'up') {
      item.element.style.backgroundPositionY = -3 * cell + 'px';
    }
  }
  else {
    if(item.phase === 'active') {
      item.element.style.display = 'block';
      item.element.style.backgroundImage = 'url(img/' + item.type + '.png)';
      item.element.style.left = item.xpos * cell + 'px';
      item.element.style.top = item.ypos * cell + 'px';  
    } else {
      item.element.style.display = 'none';
    }
  }
}

const collision = (x, y) => {
  if(x < 0) {
    return {type: 'border'};
  }
  if(y < 0) {
    return {type: 'border'};
  }
  if(x >= planeW) {
    return {type: 'border'};
  }
  if(y >= planeH) {
    return {type: 'border'};
  }

  for(let item of environ) {
    if(item.phase === 'active') {
      if(contains(x, y, item)) {
        return item;
      }
    }
  }

  return null;
}

document.addEventListener('keyup', (event) => {
  if(!awakePac) {
    return;
  }

  if(awakePac.phase !== 'active') {
    return;
  }

  let x = awakePac.xpos;
  let y = awakePac.ypos;
  if(event.key == 'ArrowRight') {
    awakePac.dir = 'right';
    x += 1;
  } else if(event.key == 'ArrowLeft') {
    awakePac.dir = 'left';
    x -= 1;
  } else if(event.key == 'ArrowDown') {
    awakePac.dir = 'down';
    y += 1;
  } else if(event.key == 'ArrowUp') {
    awakePac.dir = 'up';
    y -= 1;
  }
  
  if(awakePac.mouth === 'open') {
    awakePac.mouth = 'close';
  } else {
    awakePac.mouth = 'open';
  }

  let colItem = collision(x, y);
  if(colItem === null) {
    awakePac.xpos = x;
    awakePac.ypos = y;
  } else if(colItem.type === 'bomb') {
    awakePac.xpos = x;
    awakePac.ypos = y;
    awakePac.phase = 'dead';
    colItem.phase = 'exploded';
    itemUpdate(colItem);
  } else if(colItem.type === 'robot') {
    awakePac.xpos = x;
    awakePac.ypos = y;
    awakePac.phase = 'dead';
    itemUpdate(colItem);
  } else if(colItem.type === 'apple') {
    awakePac.xpos = x;
    awakePac.ypos = y;
    awakePac.apples += 1;
    colItem.phase = 'picked';
    itemUpdate(colItem);
  }

  itemUpdate(awakePac);
});

for(let item of environ) {
  itemRender(item);
}