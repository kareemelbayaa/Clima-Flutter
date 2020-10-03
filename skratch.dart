void main()
{
  performTasks();
}

void performTasks() async{
  task1(1);
  //task 3 depends on what comes from task 2
  String task2Data = await task2(2);
  task3(task2Data,3);
}

void task1(int taskOrder) {
  print('task$taskOrder is simple synchronous programming');
}

Future<String> task2(int taskOrder) async {
  //TODO 1.0 async programming Future.delayed(duration,(){})
  Duration duration = Duration(seconds: 3);
  String result;

  await Future.delayed(duration, () {
    result = 'result';
    print('task$taskOrder data is: $result');
  });
  return result;
}

void task3(String resultFromTask2,int taskOrder) {
  print('task$taskOrder result from task2 is: $resultFromTask2');
}


