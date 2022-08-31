import 'dart:async';
/**
 * 将任务添加到MicroTask队列
 */
void myTask(){
  print("this is my task");
}

void main(){
  // 使用 scheduleMicrotask 方法添加任务
  scheduleMicrotask(myTask);
  // 使用 future对象添加
  Future.microtask(myTask);


  /**
   * 将任务添加到Event队列
   */
  Future(myTask);

}