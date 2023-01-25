// I want a javascript function that takes an array and a target sum and returns an array of all the unique pairs of numbers that add up to the target sum. The numbers in the pair should be in ascending order.

function targetSum(arr, target) {
  arr.sort((a, b) => a - b);
  let left = 0;
  let right = arr.length - 1;
  let result = [];

  while (left < right) {
    let sum = arr[left] + arr[right];
    if (sum === target) {
      result.push([arr[left], arr[right]]);
      left++;
      right--;
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  //   Get the index of the results
  let index = result.map((item) => {
    return (
        arr.indexOf(item[0]) + " ," + arr.indexOf(item[1])
    )
  });
  return index;
}

console.log(targetSum([1, 2, 3, 4, 5], 8));
